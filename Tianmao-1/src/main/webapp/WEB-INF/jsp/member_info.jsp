<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
<title>修改个人资料</title>
<link rel="stylesheet" href="css/base.css" type="text/css" />
<link rel="stylesheet" href="css/shop_common.css" type="text/css" />
<link rel="stylesheet" href="css/shop_header.css" type="text/css" />
<link rel="stylesheet" href="css/shop_manager.css" type="text/css" />
<link rel="stylesheet" href="css/shop_form.css" type="text/css" />
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/topNav.js"></script>
	<script type="text/javascript" src="js/jquery.min.js"></script>
	<script type="text/javascript">
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
	
		if(checkEmail()&&checkTel()){
			return true;
		}
		
		return false;
		
	}
	
	
	
	</script>
</head>
<body>
<%@ include file="header.jsp" %>


			<div id="shop_hd_menu_all_category" class="shop_hd_menu_all_category">
			<%@ include file="body.jsp" %>
	<div class="clear"></div>
	<!-- 面包屑 注意首页没有 -->
	<div class="shop_hd_breadcrumb">
		<strong>当前位置：</strong> <span> <a href="">首页</a>&nbsp;›&nbsp; <a
			href="">我的商城</a>&nbsp;›&nbsp; <a href="">已买到商品</a>
		</span>
	</div>
	<div class="clear"></div>
	<!-- 面包屑 End -->

	<!-- Header End -->

	<!-- 我的个人中心 -->
	<div class="shop_member_bd clearfix">
		<!-- 左边导航 -->
		<div class="shop_member_bd_left clearfix">

			<div class="shop_member_bd_left_pic">
				<a href="javascript:void(0);"><img src="images/avatar.png" /></a>
			</div>
			<div class="clear"></div>

			<dl>
				<dt>我的交易</dt>
				<dd>
					<span><a href="">已购买商品</a></span>
				</dd>
				<dd>
					<span><a href="favorite.do">我的收藏</a></span>
				</dd>
				<dd>
					<span><a href="">评价管理</a></span>
				</dd>
			</dl>

			<dl>
				<dt>我的账户</dt>
				<dd>
					<span><a href="xiugai.do">个人资料</a></span>
				</dd>
				<dd>
					<span><a href="password.do">密码修改</a></span>
				</dd>
				<dd>
					<span><a href="">收货地址</a></span>
				</dd>
			</dl>

		</div>
		<!-- 左边导航 End -->

		<!-- 右边购物列表 -->
		<div class="shop_member_bd_right clearfix">

			<div class="shop_meber_bd_good_lists clearfix">
				<div class="title">
					<h3>基本信息</h3>
				</div>
				<div class="clear"></div>
				<dic class="shop_home_form">
				<form action="member_info.do" name="" class="shop_form" method="post">
					<ul>
						<li><label>真实姓名：</label><input type="text" value="${user.name}" name="name"class="truename form-text" /></li>
						<li><label>性别:</label>
						
						<c:if test="${user.userSex=='男'}">
						<input type="radio" class="ml10 mr5"
							name="userSex" value="男" checked="checked"/>男 <input type="radio" class="ml10 mr5"
							name="userSex" value="女" />女
						</c:if>
						<c:if test="${user.userSex=='女'}">
							<input type="radio" class="ml10 mr5"
							name="userSex" value="男" />男 <input type="radio" class="ml10 mr5"
							name="userSex" value="女" checked="checked"/>女
							
						</c:if>	
						
						<c:if test="${user.userSex==null}">
							<input type="radio" class="ml10 mr5"
							name="userSex" value="男"/>男 <input type="radio" class="ml10 mr5"
							name="userSex" value="女" />女
							
						</c:if>	
							</li>
						
						<li><label>手机号码：</label><input type="text" name="userTel" id="tel" onblur="checkTel()" value="${user.userTel}" class="truename form-text" /><span style="color:red;" id="s_tel"> </span></li>
						<li><label>电子邮件：</label><input type="text" name="userEmail" id="email" onblur="checkEmail()" value="${user.userEmail}"class="truename form-text" /><span style="color:red;" id="s_email"> </span></li>
						<li class="bn"><label>&nbsp;</label><input type="submit"
							class="form-submit" value="保存修改" /></li>
					</ul>
				</form>
			</div>
		</div>
	</div>
	<!-- 右边购物列表 End -->

	</div>
	<!-- 我的个人中心 End -->

	<!-- Footer - wll - 2013/3/24 -->
	<div class="clear"></div>
	<div class="shop_footer">
		<div class="shop_footer_link">
			<p>
				<a href="">首页</a>| <a href="">招聘英才</a>| <a href="">广告合作</a>| <a
					href="">关于ShopCZ</a>| <a href="">关于我们</a>
			</p>
		</div>
		<div class="shop_footer_copy">
			<p>Copyright 2004-2013 itcast Inc.,All rights reserved.</p>
		</div>
	</div>
	<!-- Footer End -->
</body>
</html>