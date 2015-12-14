//用户名和密码不能为空
$(function(){
	$("#btnSignCheck").click(function(){
		var err = $("#txtLoginErr");
		if($("#txtUsername").val()==""||$("#txtPassword").val()==""){
			err.text("请填写用户名和密码");
			return false;
		}
	});
});