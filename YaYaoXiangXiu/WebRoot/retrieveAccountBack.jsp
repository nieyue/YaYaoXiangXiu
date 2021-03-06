<%@ page language="java" contentType="text/html; charset=UTF-8" import="java.util.*,com.yayao.action.*"
    pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<%    
String path = request.getContextPath();    
// 获得项目完全路径（假设你的项目叫MyApp，那么获得到的地址就是 http://localhost:8080/MyApp/）:    
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";    
%> 
<!DOCTYPE html>
<html>
<head>
	<base href="<%=basePath%>">
		<title>找回账户</title>
	<meta http-equiv="Content-Type" content="text/html;charset=UTF-8" />
	<meta name="Keywords" content="湘绣，收藏，艺术品，文化，陶瓷，刺绣"/>
	<link rel="stylesheet" href="css/base.css" type="text/css" />
	<link rel="stylesheet" href="css/common.css" type="text/css" />

	<link rel="stylesheet" href="css/manager.css" type="text/css" />
	<link rel="stylesheet" href="css/form.css" type="text/css" />
    <script type="text/javascript" src="js/jquery.js" ></script>
	<script type="text/javascript">
		$(function(){
			
			$(".submit").mouseover(function(){
				$(this).css("background-color","white").css("color","green");
			}).mouseout(function(){
				$(this).css("background-color","green").css("color","white");
				
			});
			//获取searchMail
			$("form").attr("action","retrieveAccountUpdate.dhtml"+location.search);
		});
	</script>
</head>
<body>
<body>
	<!-- Header-->
	<div class="shop_hd">

		<div class="shop_hd_topNav">
			<div class="shop_hd_topNav_all">
				<div class="shop_hd_topNav_all_left"><a href="index.html"><img src="images/0.jpg" /></a></div>
				<div class="shop_hd_topNav_all_right">
				</div>
			</div>
			<div class="clear"></div>
		</div>
		
		<div class="clear"></div>
		
  <div class="shop_hd_menu">
            <!-- 普通导航菜单 -->
    <ul class="shop_hd_menu_nav">
     <li><img style="margin-top:-12px" src="images/Logo.png" border="0"></li>
				<li class="link"><a href="index.html"><img src="images/m1.jpg" border="0" /></a></li>
				<li class="link"><a href="embroideryCustom.html"><img src="images/m2.jpg" border="0" /></a></li>
				<li class="link"><a href="ceramicCustom.html"><img src="images/m3.jpg" border="0" /></a></li>
				<li class="link"><a href="embroideryBoutique.html"><img src="images/m4.jpg" border="0" /></a></li>
				<li class="link"><a href="ceramicBoutique.html"><img src="images/m5.jpg" border="0" /></a></li>
    </ul>
			<!-- 普通导航菜单 End -->
   </div>

	</div>
	<div class="clear"></div>
	<!-- Header End -->

	<div style="text-align:center;">
	<br/>
	<br/>
	<br/>
	
	<h1 style="font-size:20px;color:#4b5cc4">★验证成功，请输入账户名和新密码</h1><br/>
	<span style="color:red;font-size:20px;">异常错误：</span><a style="display:inline-block;border:1px solid #999;background-color:blue;color:white; padding:5px;text-decoration:none;border-radius:5px;" href="retrieveAccount.html">点击返回</a>
	<div style="margin:30px auto;border: 1px solid #ccc;padding:20px;width:400px;border-radius:5px;box-shadow:0px 0px 10px #999;background-color:#cca4e3;">
				<form action="retrieveAccountUpdate.dhtml" method="post">
					<div style="height:60px;">
						<s:fielderror fieldName="retrieveAccountUpdateError" cssStyle="color:red;font-size:12px;"/>
					</div>
					<div style="height:60px;">
						<div style="display:inline-block;font-size:20px;color:#801dae;">用户名</div>
						<div style="display:inline-block;"><input type="text" style="width:200px;height:30px;border-radius:5px;" name="loginName" class="text inputid" placeholder="请输入正确的账户名称"/></div>
					</div>
					<div style="height:60px;">
						<div style="display:inline-block;font-size:20px;color:#801dae;">新密码</div>
						<div style="display:inline-block;"><input type="password" style="width:200px;height:30px;border-radius:5px;" name="loginPwd" class="text inputid" placeholder="请输入新密码"/></div>
					</div>
					<div style="height:60px;">
						<div style="display:inline-block;font-size:20px;color:#801dae;margin-left:-20px;">密码确认</div>
						<div style="display:inline-block;"><input type="password" style="width:200px;height:30px;border-radius:5px;" name="reLoginPwd" class="text inputid" placeholder="确认新密码"/></div>
					</div>
					
					<div>
						<div>&nbsp;</div>
						<div><input class="submit" type="submit" style="width:80px;height:30px;background-color:green;color:white;" value="登&nbsp;陆"/> </div>
					</div>
					<s:token></s:token>
				</form>
			
			</div>

	</div>
	
    <br/>
    <br/>
    <br/>
   
<div class="clear"></div>
<div class="foot">
	<div class="faq">
                <dl>
                    <dt>帮助中心</dt>
                    <dd><a href="#"><span>积分兑换说明</span></a></dd>
                    <dd><a href="#"><span>积分明细</span></a></dd>
                    <dd><a href="#"><span>查看已购买商</span></a></dd>
                    <dd><a href="#"><span>我要买</span></a></dd>
                    <dd><a href="#"><span>忘记密码</span></a></dd>
                </dl>
                
                <dl>
                    <dt>店主之家</dt>
                    <dd><a href="#"><span>如何申请开店</span></a></dd>
                    <dd><a href="#"><span>商城商品推荐</span></a></dd>
                    <dd><a href="#"><span>如何发货</span></a></dd>
                    <dd><a href="#"><span>查看已售商品</span></a></dd>
                    <dd><a href="#"><span>如何管理店铺</span></a></dd>
                </dl>
                
                <dl>
                    <dt>支付方式</dt>
                    <dd><a href="#"><span>公司转账</span></a></dd>
                    <dd><a href="#"><span>邮局汇款</span></a></dd>
                    <dd><a href="#"><span>分期付款</span></a></dd>
                    <dd><a href="#"><span>在线支付</span></a></dd>
                    <dd><a href="#"><span>如何注册支付</span></a></dd>
                </dl>
                
                <dl>
                    <dt>售后服务</dt>
                    <dd><a href="#"><span>退款申请</span></a></dd>
                    <dd><a href="#"><span>返修/退换货</span></a></dd>
                    <dd><a href="#"><span>退换货流程</span></a></dd>
                    <dd><a href="#"><span>退换货政策</span></a></dd>
                    <dd><a href="#"><span>联系卖家</span></a></dd>
                </dl>
                
                <dl>
                    <dt>客服中心</dt>
                    <dd><a href="#"><span>修改收货地址</span></a></dd>
                    <dd><a href="#"><span>商品发布</span></a></dd>
                    <dd><a href="#"><span>会员修改个人</span></a></dd>
                    <dd><a href="#"><span>会员修改密码</span></a></dd>
                </dl>
                
                <dl>
                    <dt>关于我们</dt>
                    <dd><a href="#"><span>合作及洽谈</span></a></dd>
                    <dd><a href="#"><span>招聘英才</span></a></dd>
                    <dd><a href="#"><span>联系我们</span></a></dd>
                    <dd><a href="#"><span>关于Shop</span></a></dd>
                </dl>
                
                
      </div>
	  <div class="clear"></div>
       <div class="foot_link">
                <p>
                    <a href="index.html">首页</a>|
                    <a href="#">招聘英才</a>|
                    <a href="#">广告合作</a>|
                    <a href="#">关于我们</a>|
                    <a href="#">关于我们</a>
               </p>
        </div>
       <div class="foot_copy"><p>Copyright 2015 itcast Inc.,All rights reserved.</p><p style="margin:10px 0;"> <img src="images/shi.png"  /></p></div>
</div>
	<!-- Footer End -->
</body>
</html>
