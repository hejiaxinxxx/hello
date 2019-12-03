function setpage(pageindex, pagecount) {
    if (pageindex > 0 && pageindex <= pagecount) {
        if (pageindex == 1) {
            $('#pagefirst').attr('disabled', true);
            $('#pageprev').attr('disabled', true);
        } else {
            $('#pagefirst').attr('disabled', false);
            $('#pageprev').attr('disabled', false);
        }
        if (pageindex == pagecount) {
            $('#pagenext').attr('disabled', true);
            $('#pagelast').attr('disabled', true);
        } else {
            $('#pagenext').attr('disabled', false);
            $('#pagelast').attr('disabled', false);
        }
        $('#pageindex').val(pageindex);
        $('#pagecount').html(pagecount);
    }
}

function first() {
    if (isJb) {
        parent.searchpage(1)
    } else {
        init(1);
    }
}

function prep() {
    var i = parseInt($('#pageindex').val());
    var t = parseInt($('#pagecount').html());
    if (i <= t && i > 1) {
        if (isJb) {
            parent.searchpage(i - 1);
        } else {
            init(i - 1);
        }
    }
}

function nextp() {
    var i = parseInt($('#pageindex').val());
    var t = parseInt($('#pagecount').html());
    if (i < t) {
        if (isJb) {
            parent.searchpage(i + 1)
        } else {
            init(i + 1);
        }
    }
}

function last() {
    var t = parseInt($('#pagecount').html());
    if (isJb) {
        parent.searchpage(t)
    } else {
        init(t);
    }
}

function oninputkeydown(event) {
    if (event.keyCode == 13) {
        var i = parseInt($('#pageindex').val());
        var t = parseInt($('#pagecount').html());
        if (i <= t && i >= 1) {
            init(i);
        }
    }
}

function init(page) {
    var url = '../../rdppub/show';
    var pageSize = $("#pagesize").val(), pageType = '1';
    var url = url + "?uuid=" + uuid + "&currentPage=" + page + "&pageSize=" + pageSize + "&pageType=" + pageType + "&totalRecord=" + totalRecord;
    $.ajax({
        url: url,
        data: $('#searchaddition').serialize(),
        type: "post",
        async: true,
        success: function (ddd) {
            if (ddd.code == 0) {
                var data = ddd.list;
                if (data.expires != '0') {
                    $('#license').html(data.exprisemsg);
                }
                $("#pagesize").val(data.pageSize);
                var dbody = $('<div>' + data.body + '</div>');
                var ncss = '<style type="text/css" media="all">' + data.css + '</style>';
                var newbody = ncss + dbody.html();
                subreport = data.subreport;
                fillreport = data.fillreport;
                if (fillreport) {
                    $('.btnexport').hide();
                    $('.btnfillreport').show();
                }
                if (page == 1) {
                    if (!isJb) {
                        totalRecord = parseInt(data.totalRecord);
                    }
                    if (totalRecord > 0 && !subreport) {
                        if (isJb) {
                            $('#totalrecord').html(totalRecord);
                        } else {
                            $('#totalrecord').html(data.totalRecord);
                        }
                        if (subreport) {//主子报表不显示总记录数
                            $('#totalrecord').parent('li').hide();
                        }
                    }
                    if (data.pageSize != -2) {
                        if (!subreport && data.pageSize != -1) {
                            $('#pagesize').show();
                        }
                    } else {
                        ispubu = true;
                    }
                }
                $('#datalist').html('<div id="page1">' + newbody + '</div>');
                if (!isJb) {
                    setpage(data.currentPage, data.totalPage);
                } else {
                    setpage(page, parseInt((totalRecord + data.pageSize - 1) / data.pageSize));
                }
                if (showToolbar == 1) {
                    $('#toolbar').show();
                }
                if($('.normal table:eq(0)').width()>$('.normal').width()){
                    $('.normal').css('overflow-x','scroll');
                }
            } else {
                alert('请求失败，' + ddd.msg);
            }
        },
        error: function () {
            alert('数据加载出错，请联系管理员！');
        },
        beforeSend: function () {
            layer.load(2, {
                shade: false,
                content: '正在加载第' + page + '页',
                success: function (layero) {
                    layero.find('.layui-layer-content').css({
                        'padding': '9px 0 0 40px',
                        'width': '200px',
                        'color': '#1E9FFF'
                    });
                }
            });
        },
        complete: function () {
            setTimeout("layer.closeAll('loading')", 200)
        }
    });
}

//导出文件
function exportFile(type) {
	
	var chartsImges = {};
	var exportfun = function(){
		$.ajax({
	        url: '../../rdppub/exportFlag?uuid=' + uuid,
	        type: "post",
	        async: true,
	        success: function (data) {
	            if (data.code == 0) {
	                layer.load(2, {
	                    shade: [0.5, 'black'],
	                    content: '导出中……',
	                    success: function (layero) {
	                        layero.find('.layui-layer-content').css({
	                            'padding': '9px 0 0 40px',
	                            'width': '60px',
	                            'color': '#1E9FFF'
	                        });
	                    }
	                });
	                $(".queryview-export").hide();
	                var url = "../../rdppub/exportFile?export_type=" + type + "&uuid=" + uuid;
	                if (subreport) {
	                    url = "../../rdppub/exportSubFile?export_type=" + type + "&uuid=" + uuid;
	                }
	                var paramData = $('#searchaddition').serialize();
	                paramData = paramData || {};
	                paramData["chartsImges"] = JSON.stringify(chartsImges);
	                $.fileDownload(url, {
	                    data: paramData, httpMethod: 'POST',
	                    successCallback: function (url) {
	                        layer.closeAll('loading')
	                    },
	                    failCallback: function (responseHtml, url) {
	                        $.get('../../rdppub/exportFlag?uuid=' + uuid + '&stat=1');
	                        layer.closeAll('loading');
	                        alert("导出失败！")
	                    }
	                });
	            } else {
	                alert('当前报表正在导出或导出已达最大数目，请稍候再来导出');
	            }
	        }
	    });
	}
	
	if($(".charts-tag canvas").length>0){
		var layerIndex = layer.load(2, {
            shade: [0.5, 'black'],
            content: '图表图形绘制中……',
            success: function (layero) {
                layero.find('.layui-layer-content').css({
                    'padding': '9px 0 0 40px',
                    'width': '60px',
                    'color': '#1E9FFF'
                });
            }
        });
		var clength = $(".charts-tag canvas").length;
		var waits = new Array(clength);
		$(".charts-tag canvas").each(function(i,e){
			var tdId = $(this).parents("td").attr("id");
			html2canvas($(this)[0], {
				allowTaint : true,
				taintTest : false
			}).then(function(canvas) {
				try {
					var thumbnail = canvas.toDataURL('image/png', 1);
					chartsImges[tdId] = thumbnail;
					waits[i] = true;
				} catch (error) {
					console.log("导出生成图片失败");
				}
			});
		});
		var waitCount = 0;
		var waitMoment = function(){
			setTimeout(function(){
				var wait = false;
				$.each(waits,function(i,obj){
					if(!obj){
						wait = true;
					}
				});
				if(wait&&waitCount<25){
					waitMoment();
				}else{
					layer.close(layerIndex);
					exportfun();
				}
				console.log(waitCount);
				waitCount++;
			},200);
		}
		waitMoment();
	}else{
		exportfun();
	}
}

//打开链接
function openlink(v) {
    if (v != '' && v.indexOf('url') != -1) {
        var arr = v.split(',');
        var url = '';
        var parm = '';
        var parms = '';
        for (var i = 0; i < arr.length; i++) {
            if (arr[i].indexOf('url:') != -1) {//链接地址
                url = arr[i].split(':')[1];
                if (url.indexOf('show/') == 0) {
                    url = url.substring(5);
                }
            } else if (arr[i].indexOf('parms:') != -1) {//自定义参数
                parms = $('#' + arr[i].split(':')[1]).val();
            } else {//配置参数
                parm += arr[i].split(':')[0] + '=' + encodeURIComponent(arr[i].split(':')[1]) + '&';
            }
        }
        if (url != '' && parm != '') {
            if (parms == '') {
                window.open(url + '?' + parm.substring(0, parm.length - 1));
            } else {
                window.open(url + '?' + parm + parms);
            }
        } else {
            window.open(url);
        }
    } else {
        alert('链接不合法，请重新配置模板！')
    }
}

$(function () {
    $("#pageindex").bind("keydown", function (event) {
        oninputkeydown(event);
    });
    $("#pagesize").change(function () {
        init(page);
    });
})