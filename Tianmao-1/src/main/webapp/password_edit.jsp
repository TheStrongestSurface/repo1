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
</head>
<body>
<%@ include file="header.jsp" %>		

		<!-- Header Menu -->
		<div class="shop_hd_menu">
			<!-- 所有商品菜单 -->
                        
			<div id="shop_hd_menu_all_category" class="shop_hd_menu_all_category"><!-- 首页去掉 id="shop_hd_menu_all_category" 加上clsss shop_hd_menu_hover -->
				<div class="shop_hd_menu_all_category_title"><h2 title="所有商品分类"><a href="javascript:void(0);">所有商品分类</a></h2><i></i></div>
				<div id="shop_hd_menu_all_category_hd" class="shop_hd_menu_all_category_hd">
					<ul class="shop_hd_menu_all_category_hd_menu clearfix">
						<!-- 单个菜单项 -->
						<li id="cat_1" class="">
							<h3><a href="" title="男女服装">男女服装</a></h3>
							<div id="cat_1_menu" class="cat_menu clearfix" style="">
								<dl class="clearfix">
									<dt><a href="女装" href="">女装</a></dt>
									<dd>
										<a href="">风衣</a>
										<a href="">长袖连衣裙</a>
										<a href="">毛呢连衣裙</a>
										<a href="">半身裙</a>
										<a href="">小脚裤</a>
										<a href="">加绒打底裤</a>
										<a href="">牛仔裤</a>
										<a href="">打底衫</a>
										<a href="">情侣装</a>
										<a href="">棉衣</a>
										<a href="">毛呢大衣</a>
                                                                                <a href="">毛呢短裤</a>
									</dd>
								</dl>
                                                            
                                                                <dl class="clearfix">
									<dt><a href="男装" href="">男装</a></dt>
									<dd>
										<a href="">风衣</a>
										<a href="">长袖连衣裙</a>
										<a href="">毛呢连衣裙</a>
										<a href="">半身裙</a>
										<a href="">小脚裤</a>
										<a href="">加绒打底裤</a>
										<a href="">牛仔裤</a>
										<a href="">打底衫</a>
										<a href="">情侣装</a>
										<a href="">棉衣</a>
										<a href="">毛呢大衣</a>
                                                                                <a href="">毛呢短裤</a>
									</dd>
								</dl>
							</div>
						</li>
						<!-- 单个菜单项 End -->
                                                <li id="cat_2" class="">
                                                    <h3><a href="" title="鞋包配饰">鞋包配饰</a></h3>
                                                    <div id="cat_1_menu" class="cat_menu clearfix" style="">
                                                        <dl class="clearfix">
									<dt><a href="鞋子" href="">鞋子</a></dt>
									<dd>
										<a href="">风衣</a>
										<a href="">长袖连衣裙</a>
										<a href="">毛呢连衣裙</a>
										<a href="">半身裙</a>
										<a href="">小脚裤</a>
										<a href="">加绒打底裤</a>
										<a href="">牛仔裤</a>
										<a href="">打底衫</a>
										<a href="">情侣装</a>
										<a href="">棉衣</a>
										<a href="">毛呢大衣</a>
                                                                                <a href="">毛呢短裤</a>
									</dd>
								</dl>
                                                            
                                                                <dl class="clearfix">
									<dt><a href="包包" href="">包包</a></dt>
									<dd>
										<a href="">风衣</a>
										<a href="">长袖连衣裙</a>
										<a href="">毛呢连衣裙</a>
										<a href="">半身裙</a>
										<a href="">小脚裤</a>
										<a href="">加绒打底裤</a>
										<a href="">牛仔裤</a>
										<a href="">打底衫</a>
										<a href="">情侣装</a>
										<a href="">棉衣</a>
										<a href="">毛呢大衣</a>
                                                                                <a href="">毛呢短裤</a>
									</dd>
								</dl>
                                                    </div>
                                                </li>
                                                
                                                <li id="cat_3" class="">
                                                    <h3><a href="" title="美容美妆">美容美妆</a></h3>
                                                    <div id="cat_1_menu" class="cat_menu clearfix" style="">
                                                        <dl class="clearfix">
									<dt><a href="美容" href="">美容</a></dt>
									<dd>
										<a href="">风衣</a>
										<a href="">长袖连衣裙</a>
										<a href="">毛呢连衣裙</a>
										<a href="">半身裙</a>
										<a href="">小脚裤</a>
										<a href="">加绒打底裤</a>
										<a href="">牛仔裤</a>
										<a href="">打底衫</a>
										<a href="">情侣装</a>
										<a href="">棉衣</a>
										<a href="">毛呢大衣</a>
                                                                                <a href="">毛呢短裤</a>
									</dd>
								</dl>
                                                            
                                                                <dl class="clearfix">
									<dt><a href="美妆" href="">美妆</a></dt>
									<dd>
										<a href="">风衣</a>
										<a href="">长袖连衣裙</a>
										<a href="">毛呢连衣裙</a>
										<a href="">半身裙</a>
										<a href="">小脚裤</a>
										<a href="">加绒打底裤</a>
										<a href="">牛仔裤</a>
										<a href="">打底衫</a>
										<a href="">情侣装</a>
										<a href="">棉衣</a>
										<a href="">毛呢大衣</a>
                                                                                <a href="">毛呢短裤</a>
									</dd>
								</dl>
                                                    </div>
                                                </li>
                                                
                                                <li id="cat_4" class="">
                                                    <h3><a href="" title="美容美妆">美容美妆</a></h3>
                                                    <div id="cat_1_menu" class="cat_menu clearfix" style="">
                                                        <dl class="clearfix">
									<dt><a href="美容" href="">美容</a></dt>
									<dd>
										<a href="">风衣</a>
										<a href="">长袖连衣裙</a>
										<a href="">毛呢连衣裙</a>
										<a href="">半身裙</a>
										<a href="">小脚裤</a>
										<a href="">加绒打底裤</a>
										<a href="">牛仔裤</a>
										<a href="">打底衫</a>
										<a href="">情侣装</a>
										<a href="">棉衣</a>
										<a href="">毛呢大衣</a>
                                                                                <a href="">毛呢短裤</a>
									</dd>
								</dl>
                                                            
                                                                <dl class="clearfix">
									<dt><a href="美妆" href="">美妆</a></dt>
									<dd>
										<a href="">风衣</a>
										<a href="">长袖连衣裙</a>
										<a href="">毛呢连衣裙</a>
										<a href="">半身裙</a>
										<a href="">小脚裤</a>
										<a href="">加绒打底裤</a>
										<a href="">牛仔裤</a>
										<a href="">打底衫</a>
										<a href="">情侣装</a>
										<a href="">棉衣</a>
										<a href="">毛呢大衣</a>
                                                                                <a href="">毛呢短裤</a>
									</dd>
								</dl>
                                                    </div>
                                                </li>
                                                
                                                <li id="cat_5" class="">
                                                    <h3><a href="" title="美容美妆">美容美妆</a></h3>
                                                    <div id="cat_1_menu" class="cat_menu clearfix" style="">
                                                        <dl class="clearfix">
									<dt><a href="美容" href="">美容</a></dt>
									<dd>
										<a href="">风衣</a>
										<a href="">长袖连衣裙</a>
										<a href="">毛呢连衣裙</a>
										<a href="">半身裙</a>
										<a href="">小脚裤</a>
										<a href="">加绒打底裤</a>
										<a href="">牛仔裤</a>
										<a href="">打底衫</a>
										<a href="">情侣装</a>
										<a href="">棉衣</a>
										<a href="">毛呢大衣</a>
                                                                                <a href="">毛呢短裤</a>
									</dd>
								</dl>
                                                            
                                                                <dl class="clearfix">
									<dt><a href="美妆" href="">美妆</a></dt>
									<dd>
										<a href="">风衣</a>
										<a href="">长袖连衣裙</a>
										<a href="">毛呢连衣裙</a>
										<a href="">半身裙</a>
										<a href="">小脚裤</a>
										<a href="">加绒打底裤</a>
										<a href="">牛仔裤</a>
										<a href="">打底衫</a>
										<a href="">情侣装</a>
										<a href="">棉衣</a>
										<a href="">毛呢大衣</a>
                                                                                <a href="">毛呢短裤</a>
									</dd>
								</dl>
                                                    </div>
                                                </li>
                                                
                                                <li id="cat_6" class="">
                                                    <h3><a href="" title="美容美妆">美容美妆</a></h3>
                                                    <div id="cat_1_menu" class="cat_menu clearfix" style="">
                                                        <dl class="clearfix">
									<dt><a href="美容" href="">美容</a></dt>
									<dd>
										<a href="">风衣</a>
										<a href="">长袖连衣裙</a>
										<a href="">毛呢连衣裙</a>
										<a href="">半身裙</a>
										<a href="">小脚裤</a>
										<a href="">加绒打底裤</a>
										<a href="">牛仔裤</a>
										<a href="">打底衫</a>
										<a href="">情侣装</a>
										<a href="">棉衣</a>
										<a href="">毛呢大衣</a>
                                                                                <a href="">毛呢短裤</a>
									</dd>
								</dl>
                                                            
                                                                <dl class="clearfix">
									<dt><a href="美妆" href="">美妆</a></dt>
									<dd>
										<a href="">风衣</a>
										<a href="">长袖连衣裙</a>
										<a href="">毛呢连衣裙</a>
										<a href="">半身裙</a>
										<a href="">小脚裤</a>
										<a href="">加绒打底裤</a>
										<a href="">牛仔裤</a>
										<a href="">打底衫</a>
										<a href="">情侣装</a>
										<a href="">棉衣</a>
										<a href="">毛呢大衣</a>
                                                                                <a href="">毛呢短裤</a>
									</dd>
								</dl>
                                                    </div>
                                                </li>
                                                <li id="cat_7" class="">
                                                    <h3><a href="" title="美容美妆">美容美妆</a></h3>
                                                    <div id="cat_1_menu" class="cat_menu clearfix" style="">
                                                        <dl class="clearfix">
									<dt><a href="美容" href="">美容</a></dt>
									<dd>
										<a href="">风衣</a>
										<a href="">长袖连衣裙</a>
										<a href="">毛呢连衣裙</a>
										<a href="">半身裙</a>
										<a href="">小脚裤</a>
										<a href="">加绒打底裤</a>
										<a href="">牛仔裤</a>
										<a href="">打底衫</a>
										<a href="">情侣装</a>
										<a href="">棉衣</a>
										<a href="">毛呢大衣</a>
                                                                                <a href="">毛呢短裤</a>
									</dd>
								</dl>
                                                            
                                                                <dl class="clearfix">
									<dt><a href="美妆" href="">美妆</a></dt>
									<dd>
										<a href="">风衣</a>
										<a href="">长袖连衣裙</a>
										<a href="">毛呢连衣裙</a>
										<a href="">半身裙</a>
										<a href="">小脚裤</a>
										<a href="">加绒打底裤</a>
										<a href="">牛仔裤</a>
										<a href="">打底衫</a>
										<a href="">情侣装</a>
										<a href="">棉衣</a>
										<a href="">毛呢大衣</a>
                                                                                <a href="">毛呢短裤</a>
									</dd>
								</dl>
                                                    </div>
                                                </li>
                                                <li id="cat_8" class="">
                                                    <h3><a href="" title="美容美妆">美容美妆</a></h3>
                                                    <div id="cat_1_menu" class="cat_menu clearfix" style="">
                                                        <dl class="clearfix">
									<dt><a href="美容" href="">美容</a></dt>
									<dd>
										<a href="">风衣</a>
										<a href="">长袖连衣裙</a>
										<a href="">毛呢连衣裙</a>
										<a href="">半身裙</a>
										<a href="">小脚裤</a>
										<a href="">加绒打底裤</a>
										<a href="">牛仔裤</a>
										<a href="">打底衫</a>
										<a href="">情侣装</a>
										<a href="">棉衣</a>
										<a href="">毛呢大衣</a>
                                                                                <a href="">毛呢短裤</a>
									</dd>
								</dl>
                                                            
                                                                <dl class="clearfix">
									<dt><a href="美妆" href="">美妆</a></dt>
									<dd>
										<a href="">风衣</a>
										<a href="">长袖连衣裙</a>
										<a href="">毛呢连衣裙</a>
										<a href="">半身裙</a>
										<a href="">小脚裤</a>
										<a href="">加绒打底裤</a>
										<a href="">牛仔裤</a>
										<a href="">打底衫</a>
										<a href="">情侣装</a>
										<a href="">棉衣</a>
										<a href="">毛呢大衣</a>
                                                                                <a href="">毛呢短裤</a>
									</dd>
								</dl>
                                                    </div>
                                                </li>
                                                <li class="more"><a href="">查看更多分类</a></li>
					</ul>
				</div>
			</div>
			<!-- 所有商品菜单 END -->

			<!-- 普通导航菜单 -->
			<ul class="shop_hd_menu_nav">
				<li class="current_link"><a href=""><span>首页</span></a></li>
				<li class="link"><a href=""><span>团购</span></a></li>
				<li class="link"><a href=""><span>品牌</span></a></li>
				<li class="link"><a href=""><span>优惠卷</span></a></li>
				<li class="link"><a href=""><span>积分中心</span></a></li>
				<li class="link"><a href=""><span>运动专场</span></a></li>
				<li class="link"><a href=""><span>微商城</span></a></li>
			</ul>
			<!-- 普通导航菜单 End -->
		</div>
		<!-- Header Menu End -->

	</div>
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
				<dd><span><a href="">我的收藏</a></span></dd>
				<dd><span><a href="">评价管理</a></span></dd>
			</dl>

			<dl>
				<dt>我的账户</dt>
				<dd><span><a href="">个人资料</a></span></dd>
				<dd><span><a href="">密码修改</a></span></dd>
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
					<form athion="" name="" class="shop_form" method="post">
						<ul>
							<li class="bn"><label>原密码：</label><input type="password" class="truename form-text" /></li>
							<li class="bn"><label>新密码：</label><input type="password" class="truename form-text" /></li>
							<li class="bn"><label>重复新密码：</label><input type="password" class="truename form-text" /></li>
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