function showOtherBddp(options) {
    options = options || {};
    //  console.log(window.event);
    // console.log(event);
    var e = event || window.event;
    var selectorName = "#" + e.target.id + "-iframe";
    var iframe;
    if ($(selectorName).length == 0) {
        iframe = $('<iframe src="" frameborder="0" id="' + e.target.id + "-iframe" + '" style=" position:absolute;width:' + options.width + 'px;height:' + options.height + 'px;z-index: -1;"></iframe>');
        iframe.appendTo("body");
        iframe.attr("src", (options.url || "../../modules/bddpdemo/demo2.html"));
    } else {
        iframe = $(selectorName);
    }
    var tween1 = KUTE.fromTo(
        selectorName, // element
        {
            translateX: 0,
            rotateX: 0,
            rotateY: 0,
            rotateZ: 0,
            width: 0,
            height: 0,
            top: options.fromTop,
            left: options.fromLeft
        }, // from values
        {
            translateX: (options.translateX || 20),
            translateY: (options.translateX || -80),
            translateZ: (options.translateX || -120),
            rotateX: (options.rotateX || 360),
            rotateY: (options.rotateY || 18),
            rotateZ: (options.rotateZ || 0),
            width: (options.toWidth || options.width),
            height: (options.toHeight || options.height),
            top: options.toTop,
            left: options.toLeft
        }, // to values
        {
            parentPerspective: 2000,
            parentPerspectiveOrigin: "center top"
        } // transform options
    );
    iframe.show().css({
        "z-index": 2,
        "box-shadow": "rgb(204, 204, 204) 0px 0px 20px 2px"
    });
    $("#content").addClass("filterBlur");
    !tween1.playing && tween1.start();

}

function hideOtherBddp(options) {
    var e = event || window.event;
    var selectorName = "#" + e.target.id + "-iframe";
    var tween2 = KUTE.fromTo(
        selectorName, // element
        {
            translateX: (options.translateX || 20),
            translateY: (options.translateX || -80),
            translateZ: (options.translateX || -120),
            rotateX: (options.rotateX || 360),
            rotateY: (options.rotateY || 18),
            rotateZ: (options.rotateZ || 0),
            width: (options.toWidth || options.width),
            height: (options.toHeight || options.height),
            top: options.toTop,
            left: options.toLeft
        }, // to values
        {
            translateX: 0,
            rotateX: 0,
            rotateY: 0,
            rotateZ: 0,
            width: 0,
            height: 0,
            rotateY: 0,
            top: options.fromTop,
            left: options.fromLeft
        }, // from values
        {
            parentPerspective: 2000,
            parentPerspectiveOrigin: "center top"
        } // transform options
    );
    !tween2.playing && tween2.start();
    $("#content").removeClass("filterBlur");
}

function enlargeTag(tagId) {
    //获取当前组件JQuery对象
    var jqTag = $('#' + tagId);
    jqTag.bind("click", function (e) {
        if (jqTag.hasClass('big')) {
            jqTag.removeClass('big');
            jqTag.css(jqTag.data('ocss'));
        } else {
            jqTag.data('ocss', {

                'height': jqTag.css('height'),
                'width': jqTag.css('width'),
                'top': jqTag.css('top'),
                'left': jqTag.css('left'),
                'z-index': jqTag.css('z-index')

            })
            jqTag.css({
                'height': '100%',
                'width': '100%',
                'top': 0,
                'left': 0,
                'z-index': 999
            });
            jqTag.addClass('big');
        }


        //获取当前组件echarts实例
        var chart = echarts.getInstanceByDom($('#tag-' + tagId)[0]);
        if (chart) {
            chart.resize();
        }
    })

}
function enlargeTags(tagIds) {
    var timestamp = new Date().getTime();
    if (!tagIds || tagIds.length <= 1) {
        console.log("多选放大组件个数请大于1");
    }

    var div = $('<div id="enlarge' + timestamp + '" class="enlarge-tag-div"><div class="close-div"></div></div>');
    div.appendTo("body");
    var shade = $('<div id="shade' + timestamp + '" class="box-shade open"></div>');
    shade.appendTo("body").hide();
    
    shade.appendTo("body").hide();
    var firstTag = $('#' + tagIds[0]);

    var minT = firstTag[0].offsetTop, minL = firstTag[0].offsetLeft;
    var maxW = minL + firstTag[0].offsetWidth, maxH = minT + firstTag[0].offsetHeight;
    

    $.each(tagIds, function (i, tagId) {
        try {
            var tag = $("#" + tagId);
            var curT = tag[0].offsetTop;
            var curL = tag[0].offsetLeft;
            var curW = curL + tag[0].offsetWidth;
            var curH = curT + tag[0].offsetHeight;

            curT < minT ? minT = curT : null;
            curL < minL ? minL = curL : null;
            curW > maxW ? maxW = curW : null;
            curH > maxH ? maxH = curH : null;
            tag.data('ocss', {
                'height': tag.css('height'),
                'width': tag.css('width'),
                'top': tag.css('top'),
                'left': tag.css('left'),
                'z-index': tag.css('z-index')
            });

        } catch (error) {
            console.log("这个DOM不存在" + tagId);
        }

    });

    var enlargeBtn = $('<div id="enlargebtn' + timestamp + '" class="box-enlarge-btn"></div>');
    enlargeBtn.css({
        'top': minT+15,
        'left':maxW-15,
    }).appendTo("#content");
    enlargeBtn.unbind("click").bind('click', function () {
        div.show();
        shade.show();
        $.each(tagIds, function (i, tagId) {
            var tag = $("#" + tagId);
            var curT = tag[0].offsetTop;
            var curL = tag[0].offsetLeft;
            tag.css({
                'top': (curT - minT),
                'left': (curL - minL)
            })
            tag.appendTo(div);

        });
    })

    div.css({
        'width': maxW - minL,
        'height': maxH - minT,
        'top': (window.innerHeight - maxH + minT) / 2,
        'left': (window.innerWidth - maxW + minL) / 2,
        'transform': 'scale(1.5)'
    }).hide();
    shade.unbind("click").bind("click", function () {
        $.each(tagIds, function (i, tagId) {
            var tag = $("#" + tagId);
            tag.css(tag.data("ocss"));
            tag.appendTo("#content");

        });
        div.hide();
        shade.hide();
    })
    div.find(".close-div").unbind("click").bind("click", function () {
        $.each(tagIds, function (i, tagId) {
            var tag = $("#" + tagId);
            tag.css(tag.data("ocss"));
            tag.appendTo("#content");

        });
        div.hide();
        shade.hide();
    })

}


function textScroll(selector, execfun,time) {

    $.each(selector, function (i, tagId) {

        var tag = $(tagId);
        tag.css({
            "overflow": "hidden"
        });
        var desx = tag.text();
        tag.empty().append(`<ul class="line">
            <li>${desx}</li>
        </ul>`)

    })


    setInterval(function () {

        var textArr = execfun();
        $.each(selector, function (i, tagId) {

            var tag = $(tagId);
            tag.find(".line").append("\n<li>" + textArr[i] + "</li>");
            tag.find(".line").animate({
                marginTop: -tag.height()
            }, 1000, function () {
                $(this).css({ marginTop: "0px" });
                tag.find("ul li:first").remove();
            })

        })


    }, time||3000)
}