<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
	<title>修改密码</title>
	<link rel="stylesheet" href="css/base.css" type="text/css" />
	<link rel="stylesheet" href="css/shop_common.css" type="text/css" />
	<link rel="stylesheet" href="css/shop_header.css" type="text/css" />
	<link rel="stylesheet" href="css/shop_manager.css" type="text/css" />
	<link rel="stylesheet" href="css/shop_form.css" type="text/css" />
    <script type="text/javascript" src="js/jquery.js" ></script>
    <script type="text/javascript" src="js/topNav.js" ></script>
    	<script type="text/javascript">
    	
    	
    	//验证密码是否相同
    	function checkcPwd(){
    		
    		var pwd=document.getElementById('pwd').value;
    		var cpwd=document.getElementById('cpwd').value;	
    		if(cpwd!=pwd){
    			document.getElementById('s_pwd').innerHTML='密码不同';
    			return false;
    		}else {
    			document.getElementById('s_pwd').innerHTML='密码相同';
    			return true;
    		}
    		
    		
    		
    	}
    	function checkAll(){
    		if(checkcPwd()){
    			return true;
    		}
    		return false;
    		
    	}
    	
    	
    	</script>
</head>
<body>
<%@ include file="header.jsp" %>		

		
                        
			<div id="shop_hd_menu_all_category" class="shop_hd_menu_all_category"><!-- 首页去掉 id="shop_hd_menu_all_category" 加上clsss shop_hd_menu_hover -->
					<%@ include file="body.jsp" %>
	<div class="clear"></div>
	<!-- 面包屑 注意首页没有 -->
	<div class="shop_hd_breadcrumb">
		<strong>当前位置：</strong>
		<span>
			<a href="">首页</a>&nbsp;›&nbsp;
			<a href="">我的商城</a>&nbsp;›&nbsp;
			<a href="">已买到商品</a>
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
				<dd><span><a href="">已购买商品</a></span></dd>
				<dd><span><a href="favorite.do">我的收藏</a></span></dd>
				<dd><span><a href="">评价管理</a></span></dd>
			</dl>

			<dl>
				<dt>我的账户</dt>
				<dd><span><a href="xiugai.do">个人资料</a></span></dd>
				<dd><span><a href="password.do">密码修改</a></span></dd>
				<dd><span><a href="">收货地址</a></span></dd>
			</dl>

		</div>
		<!-- 左边导航 End -->
		
		<!-- 右边购物列表 -->
		<div class="shop_member_bd_right clearfix">
			
			<div class="shop_meber_bd_good_lists clearfix">
				<div class="title"><h3>修改密码</h3></div>
				<div class="clear"></div>
				<dic class="shop_home_form">
				<h3>&nbsp;&nbsp;&nbsp;<font color=red>${msg}</font></h3>
					<form action="edit.do"  class="shop_form" method="post" onsubmit="return checkAll()">
						<ul>
							<li class="bn"><label>原密码：</label><input type="password" name="userPwd" class="truename form-text" /></li>
							<li class="bn"><label>新密码：</label><input type="password" name="usercPwd" id="pwd"class="truename form-text" /></li>
							<li class="bn"><label>重复新密码：</label><input type="password" id="cpwd" onblur="checkcPwd()" class="truename form-text" /><span style="color:red;" id="s_pwd"> </span></li>
							<li class="bn"><label>&nbsp;</label><input type="submit" class="form-submit" value="保存修改" /></li>
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
                    <a href="">首页</a>|
                    <a href="">招聘英才</a>|
                    <a href="">广告合作</a>|
                    <a href="">关于ShopCZ</a>|
                    <a href="">关于我们</a>
                </p>
            </div>
            <div class="shop_footer_copy">
                <p>Copyright 2004-2013 itcast Inc.,All rights reserved.</p>
            </div>
        </div>
	<!-- Footer End -->
</body>
</html>