var loadCharts = function(id,option){
	var dom = $("#"+id).html('<div style="height: 100%;"></div>'); 
	option = eval('('+option+')');
	if(!option.theme){
		option.theme = "westeros";
	}
	loadGridCharts(dom,option);
}

$(function(){
	registerTheme("westeros");
	registerTheme("dark");
	registerTheme("halloween");
	registerTheme("walden");
	registerTheme("wonderland");
});

var getAjaxJsonFile = function(filePath){
	var json;
	$.ajax({url: filePath,type: "GET",async: false,dataType: "json",
       success: function(data){ 
    	   json = data;
       },error:function(){console.log('文件加载失败！');}
	});
	return json;
}

var registerTheme = function(themeName){
	var theme = getAjaxJsonFile("../../statics/rdp/common/sourcejs/charts_theme/"+themeName+".json");
    echarts.registerTheme(themeName, theme);
}

var loadGridCharts = function(celldom,charts){
	var createTag = function(charts,data){
		var type = charts.type;
		if("line"==type){
			createLineTag(celldom,charts,data);
		}else if("bar"==type){
			createBarTag(celldom,charts,data);
		}else if("gauge"==type){
			createGaugeTag(celldom,charts,data);
		}else if("radar"==type){
			createRadarTag(celldom,charts,data);
		}else if("pie"==type){
			createPieTag(celldom,charts,data);
		}else if("barline"==type){
			createBarlineTag(celldom,charts,data);
		}
	}
	
	$.ajax({url: "../../rdppage/getChartsData",type:"post",
        data: {
        	uuid: uuid,
        	data:JSON.stringify(charts.data),
        	type:charts.type
        },success: function(data) {
        	if(data.data){
        		createTag(charts,data.data);
        	}else{
        		console.log("数据未获取到！");
        	}
        },error:function(){
        	layer.msg("数据加载失败！");
        }
    });
}


var getChartDataOpt = function(data){
	var array = [];
	$.each(data["series"],function(i,node){
		var obj = {};
		obj["keyname"] = node.keyname.split(".")[1];
		obj["displayname"] = data["dimension"][0].displayname.split(".")[1];
		array.push(obj);
	});
	return array;
};

var getArrayJson = function(data,keyname){
	var array = [];
	$.each(data,function(i,node){
		array[i] = node[keyname];
	});
	return array;
}

/**
 * 创建折线图
 */
var createLineTag = function(celldom,charts,data){
	var options = charts.option.options;
	var dimensionVals = getArrayJson(data, charts.data["dimension"][0].keyname.split(".")[1]);
	$.each(getChartDataOpt(charts.data), function (i, node) {
        var seriesVals = getArrayJson(data, node.keyname);
        var series = {
            data: seriesVals,
            type: "line",
            name: node.displayname
        }
        if (options.series[i]) {
            options.series[i] = $.extend({}, options.series[i], series);
        } else {
            options.series.push(series);
        }
        if(options.legend){
        	options["legend"] = {data:[]};
        	
        	if (options.legend.data[i]) {
        		options.legend.data[i] = node.displayname;
        	} else {
        		options.legend.data.push(node.displayname);
        	}
        }
    });
	options.xAxis = options.xAxis || {};
	options.xAxis.data = dimensionVals;
	options.series = options.series.slice(0, charts.data["series"].length);
	createChartsTag(celldom,charts.option.options,charts.option.theme);
	return charts;
}

/**
 * 创建柱状图
 */
var createBarTag = function(celldom,charts,data){
	var options = charts.option.options;
	var dimensionVals = getArrayJson(data, charts.data["dimension"][0].keyname.split(".")[1]);
	
	$.each(getChartDataOpt(charts.data), function (i, node) {
        var seriesVals = getArrayJson(data, node.keyname);
        var series = {
            data: seriesVals,
            type: "bar",
            name: node.displayname
        }
        if (options.series[i]) {
            options.series[i] = $.extend({}, options.series[i], series);
        } else {
        	if(charts.option.type==2){
        		series["stack"] = "堆叠标识";
        	}
            options.series.push(series);
        }
        if(options.legend){
        	options["legend"] = {data:[]};
        	if (options.legend.data[i]) {
        		options.legend.data[i] = node.displayname;
        	} else {
        		options.legend.data.push(node.displayname);
        	}
        }
    });
	options.series = options.series.slice(0, charts.data["series"].length);
	if (charts.option.type==3) {
		options.yAxis = options.yAxis||{};
     	options.yAxis.data = dimensionVals;
	}else {
		options.xAxis = options.xAxis||{};
		options.xAxis.data = dimensionVals;
	}
	console.log(options);
	createChartsTag(celldom,options,charts.option.theme);
	return charts;
}


/**
 * 创建雷达图
 * 暂放
 */
var createRadarTag = function(celldom,charts,data){
	var options = charts.option.options|| {};
    options.legend = options.legend || {};
    options.legend.data = options.legend.data || [];
    
	var dimensionVals = getArrayJson(data, charts.data["dimension"][0].keyname.split(".")[1]);
	var seriesType = charts.data["series"];

    options.series = options.series || [];
    options.radar = options.radar || {};
    options.radar.indicator = options.radar.indicator || [];

    var max = 0;
    var maxs = [];
    $.each(seriesType, function (i, node) {
    	var dataVals = getArrayJson(data, node.keyname.split(".")[1]);
    	$.each(dataVals, function (j, val) {
    		maxs[j] = maxs[j]||0;
    		maxs[j] = Number(max[j]) > Number(val) ? max[j] : Number(val);
    		max = Number(max) > Number(val) ? max : Number(val);
         });
        options.series[0] = options.series[0]||{ data: [],type: "radar"};
        var datas = {
    		name:node.keyname,
    		value:dataVals
        };
    	if (options.series[0].data[i]) {
            options.series[0].data[i] = datas;
        } else {
            options.series[0].data.push(datas);
        }
    	
    	if(options.legend){
	     	if (options.legend.data[i]) {
	     		options.legend.data[i] = dimensionVals[i];
	     	} else {
	     		options.legend.data.push(dimensionVals[i]);
	     	}
    	}
    });

    options.series[0].data = options.series[0].data.slice(0, seriesType.length);
    if(options.legend.data){
    	options.legend.data = options.legend.data.slice(0, dimensionVals.length);
    }
    var count = 0;
    maxs.sort(function(a,b){
		return a - b;
	});
    $.each(maxs, function (k, v) {
        if (options.radar.indicator[k]) {
            options.radar.indicator[k] = $.extend({}, options.radar.indicator[k], {
                name: dimensionVals[k],
                max: max
            })
        } else {
            options.radar.indicator.push({
                name: dimensionVals[k],
                max: max
            });
        }
    });
    options.radar.indicator = options.radar.indicator.slice(0, max.length);
    createChartsTag(celldom,options,charts.option.theme);
}

/**
 * 创建仪表盘
 */
var createGaugeTag = function(celldom,charts,data){
    var options = charts.option.options || {};
	var seriesVals = getArrayJson(data,  charts.data["series"][0].keyname.split(".")[1]);
    options.series = options.series || [];
    $.each(seriesVals, function (i, node) {
    	if(i>0){
    		return;
    	}
        var series = {
                data: [{
                    value: node
                }]
            };
        series.type = charts.type;
        if (options.series[i]) {
            options.series[i] = $.extend({}, options.series[i], series);
        } else {
            options.series.push(series);
        }
    });
    options.series = options.series.slice(0, seriesVals.length);
    createChartsTag(celldom,options,charts.option.theme);
}

/**
 * 创建饼状图
 */
var createPieTag = function(celldom,charts,data){
    var options = charts.option.options || {};
    options.legend = options.legend || {};
    options.legend.data = options.legend.data || [];
    options.series = options.series || [];
    
    
    var dimensionVals = getArrayJson(data, charts.data["dimension"][0].keyname.split(".")[1]);
	var seriesVals = getArrayJson(data, charts.data["series"][0].keyname.split(".")[1]);
    var seriesdata = [];
    for (var i = 0; i < dimensionVals.length; i++) {
        var obj = {
            name: dimensionVals[i],
            value: seriesVals[i]
        }
        if (options.legend.data[i]) {
            options.legend.data[i] = dimensionVals[i];
        } else {
            options.legend.data.push(dimensionVals[i]);
        }
        seriesdata.push(obj);
    }
    options.legend.data = options.legend.data.slice(0, dimensionVals.length);
    var series = {
        data: seriesdata,
        type: "pie"
    }
    if (options.series[0]) {
        options.series[0] = $.extend({}, options.series[0], series);
    } else {
        options.series.push(series);
    }
    createChartsTag(celldom,options,charts.option.theme);
}

/**
 * 创建柱状饼状图
 */
var createBarlineTag = function(celldom,charts,data){
	var options = charts.option.options;
	var dimensionVals = getArrayJson(data, charts.data["dimension"][0].keyname.split(".")[1]);
	$.each(getChartDataOpt(charts.data), function (i, node) {
        var seriesVals = getArrayJson(data, node.keyname);
        var series = {
            data: seriesVals,
            type: "line",
            name: node.displayname
        }
        if (options.series[i]) {
            options.series[i] = $.extend({}, options.series[i], series);
        } else {
            options.series.push(series);
        }
        if(options.legend){
        	options["legend"] = {data:[]};
        	
        	if (options.legend.data[i]) {
        		options.legend.data[i] = node.displayname;
        	} else {
        		options.legend.data.push(node.displayname);
        	}
        }
    });
	createChartsTag(celldom,charts.option.options,charts.option.theme);
	return charts;
}

var createChartsTag = function(celldom,options,theme){
	if(!theme){ theme = "westeros"; }
	$(celldom).html('<div class="charts-tag" style="height: 100%;"></div>'); 
	var dom = $(celldom).find("div")[0];
	var loadChart = echarts.init(dom,theme);
	if (options && typeof options === "object") {
		loadChart.setOption(options, true);
	}
}