<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  	
  	<title>二级学院绩效管理系统</title>
  
	<head>
		<link rel="stylesheet" href="css/amazeui.min.css">
		<link rel="stylesheet" href="css/admin.css">
		<link rel="stylesheet" href="css/app.css">
		
		 <style>
		 	.admin-main{
		 		padding-top: 0px;	
		 	}
		 </style>
	</head>
	<body>
		<body>
			<header class="am-topbar am-topbar-inverse admin-header">
				<div class="am-topbar-brand">
					<strong>二级学院绩效</strong> <small>管理系统</small>
				</div>
				<button class="am-topbar-btn am-topbar-toggle am-btn am-btn-sm am-btn-success am-show-sm-only" data-am-collapse="{target: '#topbar-collapse'}">
			<span class="am-sr-only">导航切换</span> <span class="am-icon-bars"></span>
		</button>
				<div class="am-collapse am-topbar-collapse" id="topbar-collapse">

					<ul class="am-nav am-nav-pills am-topbar-nav am-topbar-right admin-header-list">
						<li>
							<a href="javascript:;"><span class="am-icon-envelope-o"></span> 待审核<span class="am-badge am-badge-warning">5</span> </a>
						</li>
						<li class="am-dropdown" data-am-dropdown="">
							<a class="am-dropdown-toggle" data-am-dropdown-toggle="" href="javascript:;"> <span class="am-icon-users"></span> admin<span class="am-icon-caret-down"></span>
							</a>
							<ul class="am-dropdown-content">
								<li onClick="updatePwd('修改密码',2)">
									<a href="javascript:void(0)"><span class="am-icon-cog"></span> 修改密码</a>
								</li>
								<li>
									<a href=""><span class="am-icon-power-off"></span> 退出
									</a>
								</li>
							</ul>
						</li>
						<li class="am-hide-sm-only">
							<a href="javascript:;" id="admin-fullscreen"><span class="am-icon-arrows-alt"></span>
								<span class="admin-fullText">开启全屏</span> </a>
						</li>
					</ul>
				</div>
			</header>

			<div class="am-cf admin-main">
				<!-- sidebar start -->
				<div class="admin-sidebar am-offcanvas" id="admin-offcanvas">
					<div class="am-offcanvas-bar admin-offcanvas-bar">
						<ul class="am-list admin-sidebar-list">
							<li>
								<a href="admin-index.jsp"><span class="am-icon-home"> 首页</span>
									
									<li class="admin-parent">
										<a class="am-cf" href="personInfo.jsp" target="right"><span class="am-icon-file"></span> 个人信息<span class="am-icon-angle-right am-fr am-margin-right"></span> </a>
										<!-- 
										<ul class="am-list am-collapse admin-sidebar-sub am-in" id="collapse-nav">
												<li>
													<a  href="schedule.jsp" target="right" class="am-cf"><span class="am-icon-check"></span> 我的日程
														<span class="am-icon-star am-fr am-margin-right admin-icon-yellow"></span>
													</a>
												</li>
										</ul>
										 -->
									</li>
								
								
									<li class="admin-parent">
										<a class="am-cf" ><span class="am-icon-file"></span> 我的审批 <span class="am-icon-angle-right am-fr am-margin-right"></span> </a>
										<ul class="am-list am-collapse admin-sidebar-sub am-in" id="collapse-nav">
											<li>
												<a href="depart.jsp" target="right" class="am-cf"><span class="am-icon-check"></span> 提交审批
													<span class="am-icon-star am-fr am-margin-right admin-icon-yellow"></span>
												</a>
											</li>
											<li>
												<a  href="user.jsp" target="right" class="am-cf"><span class="am-icon-check"></span> 查询审批
													<span class="am-icon-star am-fr am-margin-right admin-icon-yellow"></span>
												</a>
											</li>
													
										</ul>
									</li>
									
									<li class="admin-parent">
										<a class="am-cf"><span class="am-icon-file"></span> 审批管理<span class="am-icon-angle-right am-fr am-margin-right"></span> </a>
										<ul class="am-list am-collapse admin-sidebar-sub am-in" id="collapse-nav">
											<li>
												<a  href="user.jsp" target="right" class="am-cf"><span class="am-icon-check"></span> 审核材料
													<span class="am-icon-star am-fr am-margin-right admin-icon-yellow"></span>
												</a>
											</li>
										</ul>
									</li>
									
									<li class="admin-parent">
										<a class="am-cf" ><span class="am-icon-file"></span> 系统管理<span class="am-icon-angle-right am-fr am-margin-right"></span> </a>
										<ul class="am-list am-collapse admin-sidebar-sub am-in" id="collapse-nav">
													<li>
														<a  href="role.jsp" target="right" class="am-cf"><span class="am-icon-check"></span> 数据字典
															<span class="am-icon-star am-fr am-margin-right admin-icon-yellow"></span>
														</a>
													</li>
													
													<li>
														<a  href="role.jsp" target="right" class="am-cf"><span class="am-icon-check"></span> 用户管理
															<span class="am-icon-star am-fr am-margin-right admin-icon-yellow"></span>
														</a>
													</li>
													
										</ul>
									</li>
									<!-- ========报错===== -->
									<li onClick="updatePwd('修改密码',${1})">
										<a href="javascript:void(0)" onClick="updatePwd('修改密码',5)"><span class="am-icon-sign-out"></span> 修改密码</a>
									</li>
									<li>
										<a href=""><span class="am-icon-sign-out"></span> 注销</a>
									</li>
						</ul>

						<div class="am-panel am-panel-default admin-sidebar-panel">
							<div class="am-panel-bd">
								<p>
									<span class="am-icon-bookmark"></span> 公告
								</p>
								<p>本周五下午学院将进行教职工大会,地点教学楼xxx,时间4:00.请勿缺席!</p>
							</div>
						</div>

						
					</div>
				</div>
				<!-- sidebar end -->

				<!-- content start -->
				<!-- 首页展示 -->
				<div class="admin-content">
					<div class="admin-content-body">
						<iframe src="personInfo.jsp" width="100%" height="1100" name="right" style="border: none;"></iframe>
					</div>
				</div>

				<footer class="admin-content-footer">
					<hr>
					<p class="am-padding-left">© 2014 AllMobilize, Inc. Licensed under MIT license.</p>
				</footer>

			</div>
			<!-- content end -->

			</div>

			<a href="#" class="am-icon-btn am-icon-th-list am-show-sm-only admin-menu" data-am-offcanvas="{target: '#admin-offcanvas'}"></a>

			<footer>
				<hr>
				<p class="am-padding-left">© 2014 AllMobilize, Inc. Licensed under MIT license.</p>
			</footer>

			<!--[if lt IE 9]>
<script src="http://libs.baidu.com/jquery/1.11.3/jquery.min.js"></script>
<script src="http://cdn.staticfile.org/modernizr/2.8.3/modernizr.js"></script>
<script src="assets/js/amazeui.ie8polyfill.min.js"></script>
<![endif]-->

			<!--[if (gte IE 9)|!(IE)]><!-->
			<script src="js/jquery-1.11.3.min.js"></script>
			<!--<![endif]-->
			<script src="js/amazeui.min.js"></script>
			<script src="js/app.js"></script>
			<script type="text/javascript" src="myplugs/js/plugs.js"></script>
			<script type="text/javascript">
				//添加编辑弹出层
				function updatePwd(title, id) {
					$.jq_Panel({
						title: title,
						iframeWidth: 500,
						iframeHeight: 300,
						url: "updatePwd.jsp"
					});
				}
			</script>
</html>
