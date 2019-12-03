(function ($) {
	$.fn.extend({
        autoScroll: function (time) {
			var timecount = time||1500;
			return this.each(function () {
                var tablebody = $(this).find(".kgo-scroll-body-ul");
                var z = 0;//向上滚动top值
                function up() {//向上滚动
                    tablebody.animate({//中奖结果
                        'margin-top': (- tablebody.find("li:first").height()) + 'px',
                        'margin-bottom': (tablebody.find("li:first").height()) + 'px'
                    }, timecount, 'linear', function () {
                        tablebody.css({'margin-top': '0px','margin-bottom': '0px'}).find("li:first").appendTo(tablebody);
                        up();
                    });
                }
                up();
			});
		},stopScroll:function(){
			var tablebody = $(this).find(".kgo-scroll-body-ul");
			tablebody.stop(true);
		}
    })
})(jQuery)