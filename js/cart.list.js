$(function(){
	$(".del_num").next("a").click(function(){
		var num = $(this).siblings('.del_num').val();
		if(!num.match(/^[1-9][0-9]*$/)){
			return false;
		}
		$(this).attr('href',$(this).attr('href')+num);
		return true;
	});
	
});
