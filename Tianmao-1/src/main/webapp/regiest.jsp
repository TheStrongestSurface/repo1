<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
		ccc();
	});
	
	
	//验证验证码是否相同
	function  ccc(){
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
	
	
	
	//验证用户名是否相同
	function  add(){
	$("#use").blur(function(){
		//获取用户名
		
		var userName = $(this).val();	
		
		$.ajax({
			type:'GET',
			url:'checkName.do',
			data:'userName='+userName,
			success:function(msg){
				$('#use+span').remove();
				if(userName==""){
					$('#use').after('<span style="color:red;">'+'用户名不能为空'+'</span>');
				}else{
				if('yes'==msg.trim()){					
					$('#use').after('<span style="color:red;">'+'×存在'+'</span>');
				}else{	
					$('#use').after('<span style="color:green;">'+'√可用'+'</span>');
				}
				}
			}
		});
		
	});
}
	
	
	function refresh() {
		var url = $("#basePath").val() + "user/check.jpg?number="+Math.random();
		$("#img").attr("src",url);
	}
	
	
	//验证邮箱
	function checkEmail(){
		
		
		var email=document.getElementById('email').value;	
		if(email==""){
			document.getElementById('s_email').innerHTML='不能为空';
			return false;
		}else if(!email.match(/^([a-zA-Z0-9_-])+@([a-zA-Z0-9_-])+((\.[a-zA-Z0-9_-]{2,3}){1,2})$/)){
			document.getElementById('s_email').innerHTML='格式错误';
			return false;
		}else {
			document.getElementById('s_email').innerHTML='格式正确';
			return true;
		}
		
		
		
	}
	
	
	//手机号码
	function checkTel(){
		
		
		var tel=document.getElementById('tel').value;	
		if(tel==""){
			document.getElementById('s_tel').innerHTML='不能为空';
			return false;
		}else if(!tel.match(/^1(?:3\d|4[4-9]|5[0-35-9]|6[67]|7[013-8]|8\d|9\d)\d{8}$/)){
			document.getElementById('s_tel').innerHTML='格式错误';
			return false;
		}else {
			document.getElementById('s_tel').innerHTML='格式正确';
			return true;
		}
		
		
		
	}
	function checkAll(){
		var yzm=document.getElementById('s_yzm').innerHTML;
		if(checkEmail()&&checkTel()&&yzm=='验证码一致'){
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
				<h3>用户注册</h3>
			</div>
			<div class="form-bd">
			<font color=red>${param.msg}</font>
				<form action="regiest.do" method="POST" onsubmit="return checkAll()">
					<dl>
						<dt>用户名</dt>
						<dd><input type="text" name="userName" id="use" class="text" /></dd>
					</dl>
					<dl>
						<dt>密码</dt>
						<dd><input type="password" name="userPwd" class="text"/></dd>
					</dl>
					<dl>
						<dt>手机号码</dt>
						<dd><input type="text" name="userTel" id="tel" onblur="checkTel()" class="text"/><span style="color:red;" id="s_tel"> </span></dd>
					</dl>
					<dl>
						<dt>邮箱</dt>
						<dd><input type="text" name="userEmail" id="email" onblur="checkEmail()" class="text"/><span style="color:red;" id="s_email"> </span></dd>
					</dl>
					
					<dl>
						<dt>验证码</dt>
						<dd><input type="text" name="code" id="yzm"class="text" size="10" style="width:58px;"> <img id="img" src="<%=basePath%>user/check.jpg" onclick="refresh()"> <a href="" style="color:#999;">看不清，换一张</a></dd>
					</dl>
					<dl>
						<dt>&nbsp;</dt>
						<dd><span style="color:red;" id="s_yzm"> </span></dd>
					</dl>
					<dl>
						<dt>&nbsp;</dt>
						<dd><input type="submit" value="立即注册" class="submit"/> <input type= "checkbox" checked="checked"/>阅读并同意<a href="" class="forget">服务协议</a></dd>
					</dl>
				</form>
				
			</div>
			<div class="form-ft">
			
			</div>		
		</div>
		
		<div class="login-form-left fl">
			<dl class="func clearfix">
				<dt>注册之后您可以</dt>
				<dd class="ico05"><i></i>购买商品支付订单</dd>
				<dd class="ico01"><i></i>申请开店销售商品</dd>
				<dd class="ico03"><i></i>空间好友推送分享</dd>
				<dd class="ico02"><i></i>收藏商品关注店铺</dd>
				<dd class="ico06"><i></i>商品资讯服务评价</dd>
				<dd class="ico04"><i></i>安全交易诚信无忧</dd>
			</dl>
			
			<div class="if">
				<h2>如果您是本站用户</h2>
				<p>我已经注册过账号，立即 <a href="" class="register">登录</a> 或是 <a href="" class="findpwd">找回密码？</a></p>
			</div>
		</div>
	</div>
	
	<div class="footer clear wrap1000">
		<p> <a href="">首页</a> | <a href="">招聘英才</a> | <a href="">广告合作</a> | <a href="">关于ShopCZ</a> | <a href="">联系我们</a></p>
		<p>Copyright 2004-2013 itcast Inc.,All rights reserved.</p>
	</div>
	
	
</body>

</html>