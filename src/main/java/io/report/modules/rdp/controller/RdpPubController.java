package io.report.modules.rdp.controller;

import java.io.File;
import java.io.UnsupportedEncodingException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.shiro.SecurityUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONArray;

import io.report.common.exception.CodeException;
import io.report.common.utils.Base64Util;
import io.report.common.utils.R;
import io.report.common.utils.ServerUtil;
import io.report.modules.rdp.entity.JsonToXMLUtil;
import io.report.modules.rdp.entity.json.JsonReportEntity;
import io.report.modules.rdp.entity.xml.ReportEntity;
import io.report.modules.rdp.handler.MatrixHandler;
import io.report.modules.rdp.service.ReportService;
import io.report.modules.rdp.util.Cache;
import io.report.modules.rdp.util.DesignXmlUtil;
import io.report.modules.rdp.util.FillReportUtil;
import io.report.modules.rdp.util.JRUtilNew;
import io.report.modules.rdp.util.PoiUtil;
import io.report.modules.sys.entity.SysUserEntity;

/*
 * 报表展现相关--不拦截
 */
@RestController
@RequestMapping("/rdppub")
public class RdpPubController {
    protected Logger logger = LoggerFactory.getLogger(getClass());
    @Value("${report.rdp.data-path}")
    private String realPath;
    @Value("${report.rdp.maxexport}")
    private int maxexport;
    @Value("${report.relative-path}")
    private Boolean relativePath;

    @Autowired
    HttpServletRequest rq;
    @Autowired
    HttpServletResponse rp;
    CodeException codeException = new CodeException();

    /**
     * 显示报表
     */
    @RequestMapping("/show")
    public R show() {
        Map<String, Object> dMap = new HashMap<String, Object>();

        String uuid = rq.getParameter("uuid");
        SysUserEntity su = (SysUserEntity) SecurityUtils.getSubject().getPrincipal();
        if (su != null) {
            su.setPassword("");
            su.setSalt("");
        }
        rq.setAttribute("sys__user", su);
        String reportJson = rq.getParameter("reportJson");
        int pageSize = rq.getParameter("pageSize") != null ? Integer.parseInt(rq.getParameter("pageSize")) : 0;// 页尺寸
        int currentPage = rq.getParameter("currentPage") != null ? Integer.parseInt(rq.getParameter("currentPage")) : 1;// 当前页
        int pageType = rq.getParameter("pageType") != null ? Integer.parseInt(rq.getParameter("pageType")) : 0;// 页方向 0-纵向 1-横向
        JRUtilNew jn = new JRUtilNew();
        ReportEntity entity = new ReportEntity();
        Boolean isReportJson = false;
        try {
            if (reportJson == null || "".equals(reportJson)) {
                if (uuid != null && uuid.length() > 0 && Cache.xmlMap.get(uuid) != null) {
                    entity = (ReportEntity) Cache.xmlMap.get(uuid);
                } else {
                    File file = new File(ServerUtil.getDataPath(relativePath, realPath) + uuid + ".xml");
                    if (file.exists()) {
                        entity = DesignXmlUtil.openXMLNew(ServerUtil.getDataPath(relativePath, realPath) + uuid + ".xml");
                    } else {
                        entity = new ReportEntity();
                    }
                }
                if (entity.getUuid() != null) {
                    isReportJson = false;
                } else {
                    return R.error("报表不存在！");
                }
            } else {
                try {
                    reportJson = Base64Util.decode(reportJson, "Unicode");
                } catch (UnsupportedEncodingException e) {
                    e.printStackTrace();
                }
                JsonReportEntity json = JSON.parseObject(reportJson, JsonReportEntity.class);
                entity = JsonToXMLUtil.JsonToXml(json);
                isReportJson = true;
            }
            if (pageSize == 0) {
                pageSize = entity.getBodyPagesize();
            }

            if (entity.getVersion() != null && entity.getVersion() < 2.4) {
                Map<String, Object> rmap = jn.reportMap(false, relativePath, realPath, rq, entity, uuid, currentPage, pageSize);
                if (isReportJson) {
                    dMap = jn.pubPreDes(relativePath, rq, ServerUtil.getDataPath(relativePath, realPath), entity, currentPage, pageType, pageSize, uuid, false, rmap);
                } else {
                    if (pageSize == 0) {
                        dMap = jn.pubPreDes(relativePath, rq, ServerUtil.getDataPath(relativePath, realPath), entity, currentPage, entity.getBodyPageorder(), entity.getBodyPagesize(), uuid, false,
                                rmap);
                    } else {
                        dMap = jn.pubPreDes(relativePath, rq, ServerUtil.getDataPath(relativePath, realPath), entity, currentPage, pageType, pageSize, uuid, false, rmap);
                    }
                }
            } else {
                dMap = new MatrixHandler().parsingReport(rq, relativePath, realPath);
            }
            return R.ok().put("list", dMap);
        } catch (Exception e) {
            return R.error(codeException.getCodeExcepion(e, "获取参数出错！"));
        }
    }

    /**
     * 报表导出状态
     *
     * @return
     */
    @RequestMapping("/exportFlag")
    public R exportFlag() {
        int maxexport = 10;
        String uuid = rq.getParameter("uuid");
        String stat = rq.getParameter("stat");
        int curexport = 0;
        String cep = Cache.exportMap.get("curexport");
        String expuuid = Cache.exportMap.get(uuid);
        if (stat != null && "1".equals(stat)) {
            // 失败减导出标志
            if (cep != null && "1".equals(cep)) {
                Cache.exportMap.put("curexport", "0");
                Cache.exportMap.remove(uuid);
            } else {
                try {
                    int xcep = maxexport - 1;
                    if (xcep < 0) {
                        xcep = 0;
                    }
                    Cache.exportMap.put("curexport", String.valueOf(xcep));
                    Cache.exportMap.remove(uuid);
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        } else {
            if (cep == null || "0".equals(cep)) {
                Cache.exportMap.put("curexport", "1");
                curexport = 1;
            } else {
                try {
                    if (maxexport > Integer.parseInt(cep) && expuuid == null) {
                        Cache.exportMap.put("curexport", String.valueOf(Integer.parseInt(cep) + 1));
                    }
                    if (maxexport >= curexport) {
                        curexport = Integer.parseInt(cep) + 1;
                    }
                } catch (Exception e) {
                }
            }
        }
        if (maxexport >= curexport) {
            // if(expuuid==null){
            // exportMap.put(uuid, "1");
            // backFlag = 1;
            // }else{
            // backFlag=0;
            // }
            // 启用上方注释则单报表不同同时导出
            return R.ok();
        } else {
            return R.error();
        }
    }

    /**
     * 导出非主子报表
     *
     * @return
     */
    @RequestMapping("/exportFile")
    public void exportFile() {
        long startTime = System.currentTimeMillis();
        ReportEntity entity = new ReportEntity();
        String uuid = rq.getParameter("uuid");
        String export_type = rq.getParameter("export_type");
        SysUserEntity su = (SysUserEntity) SecurityUtils.getSubject().getPrincipal();
        if (su != null) {
            su.setPassword("");
            su.setSalt("");
        }
        rq.setAttribute("sys__user", su);
        if (uuid != null && uuid.length() == 32) {
            if (Cache.xmlMap.get(uuid) != null) {
                entity = (ReportEntity) Cache.xmlMap.get(uuid);
            } else {
                File file = new File(ServerUtil.getDataPath(relativePath, realPath) + uuid + ".xml");
                if (file.exists()) {
                    entity = DesignXmlUtil.openXMLNew(ServerUtil.getDataPath(relativePath, realPath) + uuid + ".xml");
                } else {
                    entity = new ReportEntity();
                }
            }
        } else {
            String reportJson = rq.getParameter("reportJson");
            try {
                reportJson = Base64Util.decode(reportJson, "Unicode");
            } catch (Exception e) {
                e.printStackTrace();
            }
            JsonReportEntity json = JSON.parseObject(reportJson, JsonReportEntity.class);
            entity = JsonToXMLUtil.JsonToXml(json);
        }
        JSONArray jsonArray = new JSONArray();
        String jsonlist = rq.getParameter("jsonlist");
        if (!"".equals(jsonlist)) {
            jsonArray = JSON.parseArray(jsonlist);
        }
        try {
            String fileName = entity.getReportDescription() != null ? entity.getReportDescription() : "temp";
            if (entity != null && entity.getVersion() < 2.4) {
                Map<String, Object> rpmap = new JRUtilNew().rpMap(rq, entity, uuid, jsonArray);
                new JRUtilNew().exportFile(entity, uuid, jsonArray, fileName, rq, rp, false, rpmap, export_type);
            } else {
                new MatrixHandler().expReport(rq, rp, relativePath, realPath, export_type);
            }
        } catch (Exception e) {
            e.printStackTrace();
            rp.setHeader("Set-Cookie", "fileDownload=false; path=/");
            rp.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
        }
        // 减导出标志
        String cep = Cache.exportMap.get("curexport");
        if (cep != null && "1".equals(cep)) {
            Cache.exportMap.put("curexport", "0");
            Cache.exportMap.remove(uuid);
        } else {
            try {
                int xcep = Integer.parseInt(cep) - 1;
                if (xcep < 0) {
                    xcep = 0;
                }
                Cache.exportMap.put("curexport", String.valueOf(xcep));
                Cache.exportMap.remove(uuid);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        Long endTime = System.currentTimeMillis();
        logger.info("导出总用时：" + (endTime - startTime));
    }

    /**
     * 导出主子报表
     *
     * @return
     */
    @RequestMapping("/exportSubFile")
    public void exportSubFile() {
        String uuid = rq.getParameter("uuid");
        SysUserEntity su = (SysUserEntity) SecurityUtils.getSubject().getPrincipal();
        if (su != null) {
            su.setPassword("");
            su.setSalt("");
        }
        rq.setAttribute("sys__user", su);
        long startTime = System.currentTimeMillis();
        ReportEntity entity = new ReportEntity();
        if (uuid != null && uuid.length() == 32) {
            if (Cache.xmlMap.get(uuid) != null) {
                entity = (ReportEntity) Cache.xmlMap.get(uuid);
            } else {
                File file = new File(ServerUtil.getDataPath(relativePath, realPath) + uuid + ".xml");
                if (file.exists()) {
                    entity = DesignXmlUtil.openXMLNew(ServerUtil.getDataPath(relativePath, realPath) + uuid + ".xml");
                } else {
                    entity = new ReportEntity();
                }
            }
        } else {
            String reportJson = rq.getParameter("reportJson");
            JsonReportEntity json = JSON.parseObject(reportJson, JsonReportEntity.class);
            entity = JsonToXMLUtil.JsonToXml(json);
        }
        Map<String, Object> dMap = null;
        try {
            JRUtilNew jn = new JRUtilNew();
            Map<String, Object> rmap = jn.reportMap(false, relativePath, realPath, rq, entity, uuid, 1, -1);
            dMap = jn.pubPreDes(relativePath, rq, ServerUtil.getDataPath(relativePath, realPath), entity, 1, 1, -1, uuid, false, rmap);
        } catch (Exception e) {
            e.printStackTrace();
        }
        try {
            if (dMap != null && dMap.get("body") != null) {
                String fileName = entity.getReportDescription();
                PoiUtil.exportExcel(dMap.get("body").toString(), fileName, rq, rp);
                dMap = null;
            } else {
                rp.setHeader("Set-Cookie", "fileDownload=false; path=/");
                rp.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
            }
        } catch (Exception e) {
            e.printStackTrace();
            rp.setHeader("Set-Cookie", "fileDownload=false; path=/");
            rp.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
        }
        // 减导出标志
        String cep = Cache.exportMap.get("curexport");
        if (cep != null && "1".equals(cep)) {
            Cache.exportMap.put("curexport", "0");
            Cache.exportMap.remove(uuid);
        } else {
            try {
                int xcep = Integer.parseInt(cep) - 1;
                if (xcep < 0) {
                    xcep = 0;
                }
                Cache.exportMap.put("curexport", String.valueOf(xcep));
                Cache.exportMap.remove(uuid);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        Long endTime = System.currentTimeMillis();
        logger.info("导出总用时：" + (endTime - startTime));
    }

    /**
     * 显示报表参数
     *
     * @return
     */
    @RequestMapping("/showparam")
    public R showparam() {
        String uuid = rq.getParameter("uuid");
        String reportJson = rq.getParameter("reportJson");
        try {
            Map<String, Object> map = DesignXmlUtil.compileReportParms(ServerUtil.getDataPath(relativePath, realPath), uuid, reportJson, rq);
            return R.ok().put("data", map);
        } catch (Exception e) {
            e.printStackTrace();
            return R.error("获取参数出错！");
        }
    }

    /**
     * 填报保存 --注意：填报不支持多数据源
     *
     * @return
     */
    @RequestMapping("/savereport")
    public R savereport(@RequestBody Map<String, Object> fillData) {
        ReportService reportService = new ReportService();
        String uuid = rq.getParameter("uuid");
        if (uuid == null) {
            return R.error("提示：未保存的填报报表暂不支持提交！");
        }
        if (fillData == null || fillData.get("uuid") == null || !uuid.equals(fillData.get("uuid"))) {
            return R.error("提示：保存校验失败！");
        }
        try {
            ReportEntity entity = (ReportEntity) Cache.xmlMap.get(uuid);
            if (entity == null) {
                File file = new File(ServerUtil.getDataPath(relativePath, realPath) + uuid + ".xml");
                if (file.exists()) {
                    entity = DesignXmlUtil.openXMLNew(ServerUtil.getDataPath(relativePath, realPath) + uuid + ".xml");
                }
            }
            if (entity != null) {
                Map<String, List<String>> sqlList = FillReportUtil.getFillSqlMap(fillData, entity);
                if (sqlList.size() > 0) {
                    Map<String, String> resMap = reportService.fillSqlByTran(sqlList);
                    if ("0".equals(resMap.get("code"))) {
                        return R.error(resMap.get("msg"));
                    }
                } else {
                    return R.error("提示：保存失败，数据校验失败！");
                }
            } else {
                return R.error("提示：出错了，未找到报表模板！");
            }
        } catch (Exception e) {
            e.printStackTrace();
            return R.error("提示：解析出错了！");
        }
        return R.ok();
    }

}
