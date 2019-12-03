var getAjaxJsonFile=function(e){var a;return $.ajax({url:e,type:"GET",async:!1,dataType:"json",success:function(e){a=e},error:function(){console.log("文件加载失败！")}}),a},registerTheme=function(e){var a=getAjaxJsonFile("../../statics/rdp/common/sourcejs/charts_theme/"+e+".json");echarts.registerTheme(e,a)};$(function(){registerTheme("westeros"),registerTheme("dark"),registerTheme("halloween"),registerTheme("walden"),registerTheme("wonderland")});var delDataTypeData=function(e){e.unbind(),e.bind("click",function(){var e=hot.Methods.getSelected(),a=hot.Methods.getCellMeta(e[0][0],e[0][1]).charts,t=$(this).parent().index();$(this).parent().remove();var s=$(this).parent().attr("data-type");a.data[s].splice(t,1),hot.Methods.setCellMeta(e[0][0],e[0][1],"charts",a)})},confirmData=function(e){e.bind("click",function(){var e=hot.Methods.getSelected(),s=hot.Methods.getCellMeta(e[0][0],e[0][1]),n=hot.Methods.getCell(e[0][0],e[0][1]);$.ajax({url:"../../rdppage/getChartsData",type:"post",data:{uuid:uuid,data:JSON.stringify(s.charts.data),type:s.charts.type},success:function(e){if(e.data){var a=s.charts,t=a.type;"line"==t?createLineTag(n,a,e.data):"bar"==t?createBarTag(n,a,e.data):"gauge"==t?createGaugeTag(n,a,e.data):"radar"==t?createRadarTag(n,a,e.data):"pie"==t?createPieTag(n,a,e.data):"barline"==t&&createBarlineTag(n,a,e.data)}else layer.msg("数据未获取到！")},error:function(){layer.msg("数据加载失败！")}})})},moveTarg=function(e){var i=e.parents(".charts_setting")[0],a=e[0],r=0,d=0,o=0,l=0,c=!1;a.onmousedown=function(e){r=e.clientX,d=e.clientY,o=i.offsetLeft,l=i.offsetTop,c=!0,i.style.cursor="move"},window.onmousemove=function(e){if(0!=c){var a=e.clientX,t=e.clientY,s=a-(r-o),n=t-(d-l);i.style.left=s+"px",i.style.top=n+"px"}},e[0].onmouseup=function(){c=!1,i.style.cursor="default"}},loadcharts={beforeKeyDown:{del:function(){var e=hot.Methods.getSelected();delete hot.Methods.getCellMeta(e[0][0],e[0][1]).charts}},chartsModelTool:function(e){var s=getAjaxJsonFile("../../statics/rdp/common/sourcejs/charts_config/model.json");return{initChartsModel:function(e,a,r){var d=a.id;if(d&&s[d]){var t=s[d],o=e.find("div.addcharts");$.each(t,function(e,a){!function(e,a){var t=a.type,s=a.option,n=$('<div class="chars_dom"><div class="container" style="width: 300px;height: 200px;"></div><div class="charts_shade"></div></div>');o.append(n);var i=echarts.init(n.find(".container")[0],"westeros");(s=$.extend(!0,{},s))&&"object"==typeof s&&i.setOption(s),n.bind("click",function(){if(r){var e={type:t,options:s};r.call(this,d,e)}})}(0,a)})}}}},initChartsAttribute:function(t,s){var n=function(e){var a=hot.Methods.getSelected(),o=hot.Methods.getCellMeta(a[0][0],a[0][1]).charts,t=$(".charts_data_dimension").find(".data_tag_input").html(""),s=$(".charts_data_series").find(".data_tag_input").html(""),n=$(".charts_data_classify").find(".data_tag_input").html("");o.data&&$.each(o.data,function(r,e){var d;r&&e&&("dimension"==r?d=t:"series"==r?d=s:"classify"==r&&(d=n),d&&$.each(e,function(e,a){var t,s,n,i;t=d,s=r,n=a,(i=$("<span></span>")).attr("data-type",s),i.html(n.displayname+'<i class="fa fa-close"></i>'),t.append(i),loadcharts.editDisplayName(i,o,s)}))}),delDataTypeData($(".data_tag_input .fa-close")),confirmData($(".load_data_btn"));var i=e.find(".attr_context");i.html(""),chartstool(i,{callback:function(e){}})};!function(){if(hot.Methods.getCellMeta(t,s).charts){$(".charts_setting").show(),n($(".charts_setting .setting_context .right_attr"));var e=$(".tb-foot_left").css("right"),a=$(".tb-foot_left").width();e=parseInt(e.split("px")[0]),console.log(e),console.log(a),$(".charts_setting").css({right:e+a+"px",left:"",top:""}),moveTarg($(".setting_title"))}else $(".charts_setting").hide();$(".charts_setting .left_title ul.title_menu li").bind("click",function(){$(this).siblings().removeClass("selected"),$(this).addClass("selected");var e=$(this).index();$(".charts_setting .right_attr ul").eq(e).show(),$(".charts_setting .right_attr ul").eq(e).siblings().hide()})}(),$(".charts_setting .setting_title .fa.btn_close").unbind().bind("click",function(){$(".charts_setting").hide()})},editDisplayName:function(n,i,r){n.bind("dblclick",function(){var s=$(n).html(),e=$('<input type="text">');$(n).html(e),e.bind("keyup",function(e){var a=n.index(),t=$(this).val();13==e.keyCode&&(i.data=i.data||{},i.data[r]=i.data[r]||[],null!=t&&""!=t&&null!=t?(i.data[r][a].displayname=t,$(n).html(t+'<i class="fa fa-close"></i>')):$(n).html(s))})})},showCharts:function(e,a){if(a){var t=a.option;if(t){var s="westeros";t.theme&&(s=t.theme);var n=t.options;$(e).html('<div class="charts-tag" style="height: 100%;"></div>');var i=$(e).find("div")[0],r=echarts.init(i,s);n&&"object"==typeof n&&r.setOption(n,!0)}}else console.error("charts option is undefined")},addSetColumn:function(e){var t=hot.Methods.getSelected(),s=hot.Methods.getCellMeta(t[0][0],t[0][1]).charts;if(s.data||(s.data={}),$(".charts_data_dimension .data_tag_input").is(":hover")){var a=$('<span data-type="dimension">'+e.column+'<i class="fa fa-close"></i></span>');$(".charts_data_dimension .data_tag_input").append(a),s.data.dimension||(s.data.dimension=[]);var n={keyname:e.column,displayname:e.column};s.data.dimension.push(n),loadcharts.editDisplayName(a,s,"dimension")}else if($(".charts_data_series .data_tag_input").is(":hover")){a=$('<span data-type="series">'+e.column+'<i class="fa fa-close"></i></span>');$(".charts_data_series .data_tag_input").append(a),s.data.series||(s.data.series=[]);n={keyname:e.column,displayname:e.column};s.data.series.push(n),loadcharts.editDisplayName(a,s,"series")}else if($(".charts_data_classify .data_tag_input").is(":hover")){a=$('<span data-type="classify">'+e.column+'<i class="fa fa-close"></i></span>');$(".charts_data_classify .data_tag_input").append(a),s.data.classify||(s.data.classify=[]);n={keyname:e.column,displayname:e.column};s.data.classify.push(n),loadcharts.editDisplayName(a,s,"classify")}$(".data_tag_input .fa-close").unbind(),$(".data_tag_input .fa-close").bind("click",function(){var e=$(this).parent().index();$(this).parent().remove();var a=$(this).parent().attr("data-type");s.data[a].splice(e,1),hot.Methods.setCellMeta(t[0][0],t[0][1],"charts",s)}),hot.Methods.setCellMeta(t[0][0],t[0][1],"charts",s)}},getChartDataOpt=function(s){var n=[];return $.each(s.series,function(e,a){var t={};t.keyname=a.keyname.split(".")[1],t.displayname=s.dimension[0].displayname.split(".")[1],n.push(t)}),n},getArrayJson=function(e,t){var s=[];return $.each(e,function(e,a){s[e]=a[t]}),s},createLineTag=function(e,a,s){var n=a.option.options,t=getArrayJson(s,a.data.dimension[0].keyname.split(".")[1]);return $.each(getChartDataOpt(a.data),function(e,a){var t={data:getArrayJson(s,a.keyname),type:"line",name:a.displayname};n.series[e]?n.series[e]=$.extend({},n.series[e],t):n.series.push(t),n.legend&&(n.legend={data:[]},n.legend.data[e]?n.legend.data[e]=a.displayname:n.legend.data.push(a.displayname))}),n.xAxis=n.xAxis||{},n.xAxis.data=t,n.series=n.series.slice(0,a.data.series.length),createChartsTag(e,a.option.options,a.option.theme),a},createBarTag=function(e,s,n){var i=s.option.options,a=getArrayJson(n,s.data.dimension[0].keyname.split(".")[1]);return $.each(getChartDataOpt(s.data),function(e,a){var t={data:getArrayJson(n,a.keyname),type:"bar",name:a.displayname};i.series[e]?i.series[e]=$.extend({},i.series[e],t):(2==s.option.type&&(t.stack="堆叠标识"),i.series.push(t)),i.legend&&(i.legend={data:[]},i.legend.data[e]?i.legend.data[e]=a.displayname:i.legend.data.push(a.displayname))}),i.series=i.series.slice(0,s.data.series.length),3==s.option.type?(i.yAxis=i.yAxis||{},i.yAxis.data=a):(i.xAxis=i.xAxis||{},i.xAxis.data=a),createChartsTag(e,i,s.option.theme),s},createRadarTag=function(e,a,n){var i=a.option.options||{};i.legend=i.legend||{},i.legend.data=i.legend.data||[];var r=getArrayJson(n,a.data.dimension[0].keyname.split(".")[1]),t=a.data.series;i.series=i.series||[],i.radar=i.radar||{},i.radar.indicator=i.radar.indicator||[];var d=0,o=[];$.each(t,function(e,a){var t=getArrayJson(n,a.keyname.split(".")[1]);$.each(t,function(e,a){o[e]=o[e]||0,o[e]=Number(d[e])>Number(a)?d[e]:Number(a),d=Number(d)>Number(a)?d:Number(a)}),i.series[0]=i.series[0]||{data:[],type:"radar"};var s={name:a.keyname,value:t};i.series[0].data[e]?i.series[0].data[e]=s:i.series[0].data.push(s),i.legend&&(i.legend.data[e]?i.legend.data[e]=r[e]:i.legend.data.push(r[e]))}),i.series[0].data=i.series[0].data.slice(0,t.length),i.legend.data&&(i.legend.data=i.legend.data.slice(0,r.length));o.sort(function(e,a){return e-a}),$.each(o,function(e,a){i.radar.indicator[e]?i.radar.indicator[e]=$.extend({},i.radar.indicator[e],{name:r[e],max:d}):i.radar.indicator.push({name:r[e],max:d})}),i.radar.indicator=i.radar.indicator.slice(0,d.length),createChartsTag(e,i,a.option.theme)},createGaugeTag=function(e,s,a){var n=s.option.options||{},t=getArrayJson(a,s.data.series[0].keyname.split(".")[1]);n.series=n.series||[],$.each(t,function(e,a){if(!(0<e)){var t={data:[{value:a}]};t.type=s.type,n.series[e]?n.series[e]=$.extend({},n.series[e],t):n.series.push(t)}}),n.series=n.series.slice(0,t.length),createChartsTag(e,n,s.option.theme)},createPieTag=function(e,a,t){var s=a.option.options||{};s.legend=s.legend||{},s.legend.data=s.legend.data||[],s.series=s.series||[];for(var n=getArrayJson(t,a.data.dimension[0].keyname.split(".")[1]),i=getArrayJson(t,a.data.series[0].keyname.split(".")[1]),r=[],d=0;d<n.length;d++){var o={name:n[d],value:i[d]};s.legend.data[d]?s.legend.data[d]=n[d]:s.legend.data.push(n[d]),r.push(o)}s.legend.data=s.legend.data.slice(0,n.length);var l={data:r,type:"pie"};s.series[0]?s.series[0]=$.extend({},s.series[0],l):s.series.push(l),createChartsTag(e,s,a.option.theme)},createBarlineTag=function(e,a,s){var n=a.option.options;getArrayJson(s,a.data.dimension[0].keyname.split(".")[1]);return $.each(getChartDataOpt(a.data),function(e,a){var t={data:getArrayJson(s,a.keyname),type:"line",name:a.displayname};n.series[e]?n.series[e]=$.extend({},n.series[e],t):n.series.push(t),n.legend&&(n.legend={data:[]},n.legend.data[e]?n.legend.data[e]=a.displayname:n.legend.data.push(a.displayname))}),createChartsTag(e,a.option.options,a.option.theme),a},createChartsTag=function(e,a,t){t||(t="westeros"),$(e).html('<div class="charts-tag" style="height: 100%;"></div>');var s=$(e).find("div")[0],n=echarts.init(s,t);a&&"object"==typeof a&&n.setOption(a,!0)};function addcharts(s){layer.open({type:1,area:["640px","520px"],maxmin:!1,resize:!1,title:"选择图表",content:'<div id="chars" class="addcharts"></div>',success:function(e,i){var a=loadcharts.chartsModelTool(),t={tab:[{id:"pie",text:"饼状图",fun:a.initChartsModel},{id:"bar",text:"柱状图",fun:a.initChartsModel},{id:"line",text:"折线图",fun:a.initChartsModel},{id:"gauge",text:"仪表盘",fun:a.initChartsModel},{id:"radar",text:"雷达图",fun:a.initChartsModel}],class:"addcharts",callback:function(e,a){var t=hot.Methods.getSelected();if(t){var s=hot.Methods.getCellMeta(t[0][0],t[0][1]),n=hot.Methods.getCell(t[0][0],t[0][1]);s.charts={type:e,option:a},loadcharts.showCharts(n,s.charts),layer.close(i)}else layer.alert("请选择单元格")},index:s};layerTab(e,t).loadtabs()},btn:["保存","取消"],yes:function(e,a){layer.close(e)},btn2:function(e,a){},cancel:function(){}})}