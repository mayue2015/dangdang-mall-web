var R = false, A = false, P=false;//用于验证表单

//智能填表
$(function(){
	$("#addressId").val(-1);
	var ops = $("#address");//下拉列表
	$.ajax({
		type:"POST",
		url:"address",
		dataType:"json",
		async:false,
		success:function(data){
			var addrs = data.addrs;
			appendOps(addrs);
			ops.change(function(){
				fillForm(addrs,$(this).val());
			});
		}
	});
	
	//动态增加下拉列表
	function appendOps(addrs){
		for(var i=0;i<addrs.length;i++){
			ops.append("<option value='"+i+"'>"+i+":"+addrs[i].full_address.substr(0,6)+"...</option>");
		}
	}
	
	//根据选项智能填表
	function fillForm(addrs,index){
		if(index==-1){
			$("#receiveName").val('');
			$("#fullAddress").val('');
			$("#postalCode").val('');
			$("#phone").val('');
			$("#mobile").val('');
			$("#addressId").val(-1);
			return;
		}
		A=true;
		R=true;
		P=true;
		$("#nameValidMsg>span").html('');
		$("#addressValidMsg>span").html('');
		$("#receiveName").val(addrs[index].receive_name);
		$("#fullAddress").val(addrs[index].full_address);
		$("#postalCode").val(addrs[index].postal_code);
		$("#phone").val(addrs[index].phone);
		$("#mobile").val(addrs[index].mobile);
		
		$("#addressId").val(addrs[index].id);
		
	}
});

//表单验证
$(function(){
	//验证收件人姓名
	$("#receiveName").blur(function(){
		R = false;
		var val = $(this).val();
		var info = $("#nameValidMsg>span");
		info.text("");
		if(val == ""){
			info.text("收件人不能为空");
		}else{
			info.html("<img src='../images/my/ajax_ok.png' />");
			R = true;
		}
	});
	
	//验证详细地址
	$("#fullAddress").blur(function(){
		A = false;
		var val = $(this).val();
		var info = $("#addressValidMsg>span");
		info.text("");
		if(val == ""){
			info.text("收信地址不能为空");
		}else{
			info.html("<img src='../images/my/ajax_ok.png' />");
			A = true;
		}
	});
	
	//验证邮编
	$("#postalCode").blur(function(){
		P = false;
		var val = $(this).val();
		var info = $("#codeValidMsg>span");
		info.text("");
		if(val == ""){
			info.text("邮政编码不能为空");
		}else if (!val.match(/^[0-9]{6,6}$/)) {
			info.text("邮编格式不正确");}else{
			info.html("<img src='../images/my/ajax_ok.png' />");
			P = true;
		}
	});
	
	//当地址和收件人正确填写后，才能点击提交
	$("#btnClientRegister").click(function(){
		if(A && R && P){
			return true;
		}else{
			return false;
		}
	});
		

});