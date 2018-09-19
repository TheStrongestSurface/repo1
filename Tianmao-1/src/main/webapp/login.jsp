<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ request.getContextPath() + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html;charset=UTF-8" />
	<title>用户登录</title>
	<link rel="stylesheet" href="css/base.css" />
	<link rel="stylesheet" href="css/global.css" />
	<link rel="stylesheet" href="css/login-register.css" />
	<script type="text/javascript" src="js/jquery.min.js"></script>
	<script type="text/javascript">
	$(function(){
		add();
		
	});
	
	
	//验证验证码是否相同
	function  add(){
	$("#yzm").blur(function(){
		//获取用户名
		
		var yzm = $(this).val();	
		
		$.post("checkYzm.do",{yzm:yzm},function(data){
    		
    		
    		if('yes'==data.trim()){
    			document.getElementById('s_yzm').innerHTML='验证码一致';
    			return true;
			}
    		if('no'==data.trim()){
    			document.getElementById('s_yzm').innerHTML='验证码不一致';
    			return false;
			}
    		
			
		});
		
	});
}
	
	
	
	function refresh() {
		var url = $("#basePath").val() + "user/check.jpg?number="+Math.random();
		$("#img").attr("src",url);
	}
	
	
	
	
	function checkAll(){
		var yzm=document.getElementById('s_yzm').innerHTML;
		
		if(yzm=='验证码一致'){
			return true;
		}
		alert(yzm);
		return false;
		
	}
	
	
	</script>
</head>
<body>
	
	<div class="header wrap1000">
		<a href=""><img src="images/logo.png" alt="" /></a>
	</div>
	
	<div class="main">
		<div class="login-form fr">
			<div class="form-hd">
				<h3>用户登录&nbsp;&nbsp;&nbsp;<font color=red>${param.msg}</font></h3>
			</div>
			 
			<div class="form-bd">
				<form action="login.do" method="POST" onsubmit="return checkAll()">
					<dl>
						<dt>用户名</dt>
						<dd><input type="text" name="name" class="text" /></dd>
					</dl>
					<dl>
						<dt>密&nbsp;&nbsp;&nbsp;&nbsp;码</dt>
						<dd><input type="password" name="pwd" class="text"/></dd>
					</dl>
					<dl>
						<dt>验证码</dt>
						<dd><input type="text" name="code"id="yzm"  class="text" size="10" style="width:58px;"> <img id="img" src="<%=basePath%>user/check.jpg" onclick="refresh()"> <a href="" style="color:#999;">看不清，换一张</a></dd>
					</dl>
					
					<dl>
						<dt>&nbsp;</dt>
						<dd><span style="color:red;" id="s_yzm"> </span></dd>
					</dl>
					
					<dl>
						<dt>&nbsp;</dt>
						<dd><input type="submit" value="登  录" class="submit"/> <a href="" class="forget">忘记密码?</a></dd>
					</dl>
				</form>
				<dl>
					<dt>&nbsp;</dt>
					<dd> 还不是本站会员？立即 <a href="regiest.jsp" class="register">注册</a></dd>
				</dl>
				<dl class="other">
					<dt>&nbsp;</dt>
					<dd>
						<p>您可以用合作伙伴账号登录：</p>
						<a href="" class="qq"></a>
						<a href="" class="sina"></a>
					</dd>
				</dl>
			</div>
			<div class="form-ft">
			
			</div>		
		</div>
		
		<div class="login-form-left fl">
			<img src="images/left.jpg" alt="" />
		</div>
	</div>
	
	<div class="footer clear wrap1000">
		<p> <a href="">首页</a> | <a href="">招聘英才</a> | <a href="">广告合作</a> | <a href="">关于ShopCZ</a> | <a href="">联系我们</a></p>
		<p>Copyright 2004-2013 itcast Inc.,All rights reserved.</p>
	</div>
	
	
</body>
</html>