//购买按钮相关操作
$(function(){
	$(".list_r_list_button").click(function(){
		var href = $(this).find("a").attr("href");
		var v_flag = false;//如果没接到数据，设为true则跳转，执行拦截器
		var info = $(this).next(".mycartinfo");
		info.html("");
		info.html("<img src='../images/my/ajax_loader.gif'/>");

		$.ajax({
			type: "GET",
			url: href,
			success: function(data) {
				if(data.flag){
					info.html("<a href='../cart/cart'>购买成功，点击此处查看购物车</a>");
				}else if(data.flag==undefined){
				info.html("<a href='../user/tologinAction'>您未登录，点击此处跳转登录页面</a>");
				}else{
					info.html("抱歉，系统忙，购买失败");
				}
			}
		});
		return false;
	});
	
});