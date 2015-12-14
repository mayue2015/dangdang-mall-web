//表单验证
$(function() {
	var E=false,N=false,P=false,R=false,V=false;
	//当各项验证不能通过时，按钮点击无效
	$("#btnClientRegister").click(function(){
		if(E && N && P && R && V){
			return true;
		}else{
			return false;
		}
	});
	
	// email 地址
	var e_color = $("#email\\.info").css("color");
	$("#txtEmail").blur(function() {
		E = false;
		var val = $(this).val();
		var info = $("#email\\.info");
		info.html("");
		info.css("color",e_color);
		if (val == "") {
			info.text("Email不能为空");
		} else if (!val.match(/^([a-zA-Z0-9]+[_|\_|\.]?)*[a-zA-Z0-9]+@([a-zA-Z0-9]+[_|\_|\.]?)*[a-zA-Z0-9]+\.[a-zA-Z]{2,3}$/)) {
			info.text("Email格式不正确");
		} else {
			info.html("<img src='../images/my/ajax_loader.gif' />");
			$.post(
				"registVali!valiEmail",
				{'user.email':val},
				function(data){
					if(data.flag){
						info.html("<img src='../images/my/ajax_ok.png' />恭喜，该Email可用").css('color','green');
						E = true;
					}else{
						info.text("Email已存在");
					}
				}
			);
			
		}
	});

	// 昵称
	$("#txtNickName").blur(function() {
		N = false;
		var val = $(this).val();
		var info = $("#name\\.info");
		info.html("");
		if (val == "") {
			info.text("昵称不能为空");
		} else if (!val.match(/^[a-z0-9\u4e00-\u9efa5]{4,20}$/)) {
			info.text("昵称格式不正确");
		} else {
			N = true;
			info.html("<img src='../images/my/ajax_ok.png' />");
		}
	});
	// 密码
	$("#txtPassword").blur(function() {
		P = false;
		var val = $(this).val();
		var info = $("#password\\.info");
		info.html("");
		if (val == "") {
			info.text("密码不能为空");
		} else if (!val.match(/^[a-zA-Z0-9]{6,20}$/)) {
			info.text("密码格式不正确");
		} else {
			P = true;
			info.html("<img src='../images/my/ajax_ok.png' />");
		}
	});
	
	// 再次输入密码验证
	$("#txtRepeatPass").blur(function() {
		R = false;
		var val = $(this).val();
		var info = $("#password1\\.info");
		info.html("");
		if (val == "") {
			info.text("验证密码不能为空");
		} else if (val != $("#txtPassword").val()) {
			info.text("2次密码不相同");
		} else {
			R = true;
			info.html("<img src='../images/my/ajax_ok.png' />");
		}
	});
	
	// 验证码
	$("#txtVerifyCode").blur(function() {
		V = false;
		var val = $(this).val();
		var info = $("#number\\.info");
		info.html("");
		if (val == "") {
			info.text("验证码不能为空");
		}else {
			info.html("<img src='../images/my/ajax_loader.gif' />");
			$.post("registVali!valiCheckCode",
					{'checkCode':val},
					function(data){
						if(data.flag){
							info.html("<img src='../images/my/ajax_ok.png' />");
							V = true;
						}else{
							info.text("验证码错误");
						}
					}
				);
		}
	});
	
});

//刷新验证码
$(function(){
	$("#checkCode").click(function(){
		$("#imgVcode").attr("src","checkCode.action?dt="+new Date().getTime());
	});
});
