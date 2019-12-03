package io.report.modules.rdp.controller;

import java.io.File;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSON;

import io.report.common.utils.Base64Util;
import io.report.common.utils.ServerUtil;
import io.report.modules.rdp.entity.JsonToXMLUtil;
import io.report.modules.rdp.entity.json.JsonReportEntity;
import io.report.modules.rdp.entity.xml.ReportEntity;
import io.report.modules.rdp.handler.chartdata.DataCharts;
import io.report.modules.rdp.util.Cache;
import io.report.modules.rdp.util.DesignXmlUtil;

/*
 * 报表设计相关
 */
@Controller
@RequestMapping("/rdppage")
public class RdpPageController {
    protected Logger logger = LoggerFactory.getLogger(getClass());
    @Value("${report.rdp.iscellauto}")
    private int iscellauto;
    @Value("${report.rdp.data-path}")
    private String realPath;
    @Value("${report.relative-path}")
    private Boolean relativePath;

    /**
     * 报表调用页面20191025，以后解析及调用以此方法为准，其它方法仅维护
     *
     * @param map
     * @param request
     * @param uuid
     * @return
     */
    @RequestMapping("/main/{uuid}")
    public String index(Map<String, Object> map, HttpServletRequest request, @PathVariable("uuid") String uuid) {
        ReportEntity entity = new ReportEntity();
        //读取报表
        if ("0".equals(uuid)) {
            String reportJson = request.getParameter("reportJson");
            try {
                entity = JsonToXMLUtil.JsonToXml(JSON.parseObject(Base64Util.decode(reportJson, "Unicode"), JsonReportEntity.class));
            } catch (Exception e) {
                e.printStackTrace();
            }
        } else if (uuid != null && uuid.length() > 0 && Cache.xmlMap.get(uuid) != null) {
            entity = (ReportEntity) Cache.xmlMap.get(uuid);
        } else {
            File file = new File(ServerUtil.getDataPath(relativePath, realPath) + uuid + ".xml");
            if (file.exists()) {
                entity = DesignXmlUtil.openXMLNew(ServerUtil.getDataPath(relativePath, realPath) + uuid + ".xml");
            } else {
                entity = new ReportEntity();
            }
        }
        if (entity != null && entity.getReportVersion() != null) {
            map.put("UUID", uuid);
            // 单独格自动宽度
            String cellauto = String.valueOf(iscellauto);
            String iscellauto_parm = request.getParameter("iscellauto");
            if (iscellauto_parm != null && ("0".equals(iscellauto_parm) || "1".equals(iscellauto_parm))) {
                cellauto = iscellauto_parm;
            }
            map.put("cellAuto", cellauto);
            //标题
            if ("0".equals(uuid)) {
                map.put("title", "报表预览 - " + entity.getReportDescription());
            }else{
                map.put("title", entity.getReportDescription());
            }
            //是否显示查询条件
            map.put("showQuery", entity.getCustomQuery());
            //查询框自动展开
            map.put("queryOpen", entity.getCustomQueryOpen());
            //查询框位置
            map.put("queryPostion", entity.getCustomQueryPosition());
            //request参数
            Map<String, Object> hideItems = DesignXmlUtil.getQuery(request);
            String hideParams = "";
            for (String k : hideItems.keySet()) {
                if ("jsonlist".equals(k) || "reportJson".equals(k)) {
                    hideParams += "<textarea style=\"display:none\" name=\"" + k + "\">" + hideItems.get(k) + "</textarea>";
                } else {
                    hideParams += "<input type=\"hidden\" name=\"" + k + "\" value=\"" + hideItems.get(k) + "\">";
                }
            }
            map.put("hideParams", hideParams);
            //配置参数
            String params = DesignXmlUtil.getReportParms(entity, hideItems);
            map.put("params", params);
            //是否自动提交表单
            map.put("autoSub", entity.getAutoQuery());
            //是否显示工具栏
            map.put("showToolbar", entity.getCustomToolbar());
            //工具栏位置
            map.put("toolbar", entity.getToolbar());
            //是否允许导出
            map.put("showExport", entity.getCustomExport());
            //是否可选择分页
            map.put("showPage", entity.getCustomPage());
            //是否填报报表
            if (entity.getFillReports() != null && entity.getFillReports().size() > 0) {
                map.put("fillReport", 1);
            } else {
                map.put("fillReport", 0);
            }
            //默认页码
            List<Integer> pages = new ArrayList<>(Arrays.asList(-1, 10, 20, 30, 40, 50, 100));
            if (entity.getCustomPagesize() > 0 && !pages.contains(entity.getCustomPagesize())) {
                pages.add(entity.getCustomPagesize());
                map.put("pageSize", entity.getCustomPagesize());
            } else {
                map.put("pageSize", entity.getBodyPagesize());
            }
            //分页选项
            map.put("pageOptions", pages);


        } else {
            map.put("UUID", "");
        }

        return "modules/rdp/main";
    }

    @RequestMapping("/show")
    public String show(Map<String, Object> map, HttpServletRequest request) {
        List<Map<String, Object>> hideItems = DesignXmlUtil.getReportQuery(request);

        String cellauto = String.valueOf(iscellauto);// 单独格自动宽度
        String iscellauto_parm = request.getParameter("iscellauto");
        if (iscellauto_parm != null && ("0".equals(iscellauto_parm) || "1".equals(iscellauto_parm))) {
            cellauto = iscellauto_parm;
        }
        map.put("cellauto", cellauto);
        map.put("hideitems", hideItems);
        map.put("uuid", "");
        return "modules/rdp/show";
    }

    @SuppressWarnings("deprecation")
    @RequestMapping("/show/{uuid}")
    public String show(Map<String, Object> map, HttpServletRequest request, @PathVariable("uuid") String uuid) {
        List<Map<String, Object>> hideItems = DesignXmlUtil.getReportQuery(request);
        String cellauto = String.valueOf(iscellauto);// 单独格自动宽度
        String iscellauto_parm = request.getParameter("iscellauto");
        if (iscellauto_parm != null && ("0".equals(iscellauto_parm) || "1".equals(iscellauto_parm))) {
            cellauto = iscellauto_parm;
        }
        map.put("cellauto", cellauto);
        map.put("hideitems", hideItems);
        map.put("uuid", uuid);
        return "modules/rdp/show";
    }

    /**
     * 自定义报表20191104
     * @param map
     * @param request
     * @param uuid
     * @return
     */
    @SuppressWarnings("deprecation")
    @RequestMapping("/custom/{uuid}")
    public String custom(Map<String, Object> map, HttpServletRequest request, @PathVariable("uuid") String uuid) {
//        List<Map<String, Object>> hideItems = DesignXmlUtil.getReportQuery(request);
//        map.put("hideitems", hideItems);
//        map.put("uuid", uuid);
        ReportEntity entity = new ReportEntity();
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
        if (entity != null && entity.getVersion() != null) {
            map.put("UUID", uuid);
            // 单独格自动宽度
            String cellauto = String.valueOf(iscellauto);
            String iscellauto_parm = request.getParameter("iscellauto");
            if (iscellauto_parm != null && ("0".equals(iscellauto_parm) || "1".equals(iscellauto_parm))) {
                cellauto = iscellauto_parm;
            }
            map.put("cellAuto", cellauto);
            //标题
            map.put("title", entity.getReportDescription());
            //查询框自动展开
            map.put("queryOpen", entity.getCustomQueryOpen());
            //是否自动提交表单
            map.put("autoSub", entity.getAutoQuery());
            //request参数
            Map<String, Object> hideItems = DesignXmlUtil.getQuery(request);
            String hideParams = "";
            for (String k : hideItems.keySet()) {
                if ("jsonlist".equals(k) || "reportJson".equals(k)) {
                    hideParams += "<textarea style=\"display:none\" name=\"" + k + "\">" + hideItems.get(k) + "</textarea>";
                } else {
                    hideParams += "<input type=\"hidden\" name=\"" + k + "\" value=\"" + hideItems.get(k) + "\">";
                }
            }
            map.put("hideParams", hideParams);
            //是否显示工具栏
            map.put("showToolbar", entity.getCustomToolbar());
            //工具栏位置
            map.put("toolbar", entity.getToolbar());
            //是否允许导出
            map.put("showExport", entity.getCustomExport());
            //是否可选择分页
            map.put("showPage", entity.getCustomPage());
            //是否填报报表
            if (entity.getFillReports() != null && entity.getFillReports().size() > 0) {
                map.put("fillReport", 1);
            } else {
                map.put("fillReport", 0);
            }
            //默认页码
            List<Integer> pages = new ArrayList<>(Arrays.asList(-1, 10, 20, 30, 40, 50, 100));
            if (entity.getCustomPagesize() > 0 && !pages.contains(entity.getCustomPagesize())) {
                pages.add(entity.getCustomPagesize());
                map.put("pageSize", entity.getCustomPagesize());
            } else {
                map.put("pageSize", entity.getBodyPagesize());
            }
            //分页选项
            map.put("pageOptions", pages);


        } else {
            map.put("UUID", "");
        }

        return "modules/rdp/custom";
    }

    @RequestMapping("/view")
    public String view(Map<String, Object> map, HttpServletRequest request) {
        String cellauto = String.valueOf(iscellauto);// 单独格自动宽度
        String iscellauto_parm = request.getParameter("iscellauto");
        if (iscellauto_parm != null && ("0".equals(iscellauto_parm) || "1".equals(iscellauto_parm))) {
            cellauto = iscellauto_parm;
        }
        map.put("cellauto", cellauto);
        return "modules/rdp/view";
    }
    
    @ResponseBody
    @RequestMapping("/getChartsData")
    public Map<String,Object> getChartsData(HttpServletRequest request) {
        return new DataCharts(relativePath,realPath,request).getData();
    }
}
