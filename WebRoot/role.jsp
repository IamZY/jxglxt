<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <<head>
		<meta charset="UTF-8">
		<title></title>

		<link rel="stylesheet" href="css/amazeui.min.css">
		<link rel="stylesheet" href="css/admin.css">
		<link rel="stylesheet" href="css/app.css">
	</head>

	<body>

		<div class="am-cf admin-main">
			<!-- content start -->
			<div class="admin-content">
				<div class="admin-content-body">
					<div class="am-cf am-padding am-padding-bottom-0">
						<div class="am-fl am-cf">
							<strong class="am-text-primary am-text-lg"> </strong><small>
							<i class="icon-home"></i> &gt; 首页 &gt; 角色管理</small>
						</div>
					</div>
					<hr>
					<div class="container" style="padding: 0px 10px 0px 10px">
						<div class="am-g">
							<div class="am-u-sm-12 am-u-md-6">
								<div class="am-btn-toolbar">
									<div class="am-btn-group am-btn-group-xs">
							
									<button type="button" class="am-btn am-btn-default btnAdd">
										<span class="icon-plus"></span> 新增
									</button>
                               
									</div>
								</div>
							</div>
							<div class="am-u-sm-12 am-u-md-3">
								<div class="am-input-group am-input-group-sm">
									<input id="roleName" class="am-form-field" placeholder="请输入角色名称" type="text">
									<span class="am-input-group-btn">
									<button class="am-btn am-btn-default" type="button" id="btnsearch">
										搜索
									</button> </span>
								</div>
							</div>
						</div>

						<div class="am-g" style="margin-top: 5px;">
							<div class="am-u-sm-12">
								<form class="am-form">
									<table class="am-table am-table-striped am-table-hover table-main">
										<thead>
											<tr>
												<th class="table-id">
													<input id="chkAll" type="checkbox">
												</th>

												<th>
													角色名称
												</th>
												<th class="table-title">
													角色描述
												</th>

												<th class="table-set">
													操作
												</th>
											</tr>
										</thead>
										<tbody id="tUser">
											<tr>
												<td><input name="chks" value="701" type="checkbox"></td>
												<td>
													<a href="javascript:void(0)">超级管理员</a>
												</td>
												<td>拥有所有权限</td>
												<td>
													<div class="am-btn-toolbar">
														<div class="am-btn-group am-btn-group-xs"><button type="button" id="role_701" class="am-btn am-btn-default am-btn-xs am-text-secondary btnedit"><span class="am-icon-pencil-square-o"></span> 编辑</button><button type="button" onclick="sharesysfun(701);" class="am-btn am-btn-default am-btn-xs am-hide-sm-only"><span class="am-icon-copy"></span> 分配权限</button><button type="button" class="am-btn am-btn-default am-btn-xs am-text-danger am-hide-sm-only" onclick="delUser(701,1)"><span class="am-icon-trash-o"></span> 删除</button></div>
													</div>
												</td>
											</tr>
											<tr>
												<td><input name="chks" value="506" type="checkbox"></td>
												<td>
													<a href="javascript:void(0)">院校合作经理</a>
												</td>
												<td>负责院校课程</td>
												<td>
													<div class="am-btn-toolbar">
														<div class="am-btn-group am-btn-group-xs"><button type="button" id="role_506" class="am-btn am-btn-default am-btn-xs am-text-secondary btnedit"><span class="am-icon-pencil-square-o"></span> 编辑</button><button type="button" onclick="sharesysfun(506);" class="am-btn am-btn-default am-btn-xs am-hide-sm-only"><span class="am-icon-copy"></span> 分配权限</button><button type="button" class="am-btn am-btn-default am-btn-xs am-text-danger am-hide-sm-only" onclick="delUser(506,1)"><span class="am-icon-trash-o"></span> 删除</button></div>
													</div>
												</td>
											</tr>
											<tr>
												<td><input name="chks" value="505" type="checkbox"></td>
												<td>
													<a href="javascript:void(0)">讲师(院校)</a>
												</td>
												<td>负责给学校学生上课</td>
												<td>
													<div class="am-btn-toolbar">
														<div class="am-btn-group am-btn-group-xs"><button type="button" id="role_505" class="am-btn am-btn-default am-btn-xs am-text-secondary btnedit"><span class="am-icon-pencil-square-o"></span> 编辑</button><button type="button" onclick="sharesysfun(505);" class="am-btn am-btn-default am-btn-xs am-hide-sm-only"><span class="am-icon-copy"></span> 分配权限</button><button type="button" class="am-btn am-btn-default am-btn-xs am-text-danger am-hide-sm-only" onclick="delUser(505,1)"><span class="am-icon-trash-o"></span> 删除</button></div>
													</div>
												</td>
											</tr>
											<tr>
												<td><input name="chks" value="504" type="checkbox"></td>
												<td>
													<a href="javascript:void(0)">讲师(基地)</a>
												</td>
												<td>负责给基地学生上课</td>
												<td>
													<div class="am-btn-toolbar">
														<div class="am-btn-group am-btn-group-xs"><button type="button" id="role_504" class="am-btn am-btn-default am-btn-xs am-text-secondary btnedit"><span class="am-icon-pencil-square-o"></span> 编辑</button><button type="button" onclick="sharesysfun(504);" class="am-btn am-btn-default am-btn-xs am-hide-sm-only"><span class="am-icon-copy"></span> 分配权限</button><button type="button" class="am-btn am-btn-default am-btn-xs am-text-danger am-hide-sm-only" onclick="delUser(504,1)"><span class="am-icon-trash-o"></span> 删除</button></div>
													</div>
												</td>
											</tr>
											<tr>
												<td><input name="chks" value="503" type="checkbox"></td>
												<td>
													<a href="javascript:void(0)">教学经理</a>
												</td>
												<td>管理所有讲师</td>
												<td>
													<div class="am-btn-toolbar">
														<div class="am-btn-group am-btn-group-xs"><button type="button" id="role_503" class="am-btn am-btn-default am-btn-xs am-text-secondary btnedit"><span class="am-icon-pencil-square-o"></span> 编辑</button><button type="button" onclick="sharesysfun(503);" class="am-btn am-btn-default am-btn-xs am-hide-sm-only"><span class="am-icon-copy"></span> 分配权限</button><button type="button" class="am-btn am-btn-default am-btn-xs am-text-danger am-hide-sm-only" onclick="delUser(503,1)"><span class="am-icon-trash-o"></span> 删除</button></div>
													</div>
												</td>
											</tr>
											<tr>
												<td><input name="chks" value="502" type="checkbox"></td>
												<td>
													<a href="javascript:void(0)">教学总监</a>
												</td>
												<td>负责管理整个教学部</td>
												<td>
													<div class="am-btn-toolbar">
														<div class="am-btn-group am-btn-group-xs"><button type="button" id="role_502" class="am-btn am-btn-default am-btn-xs am-text-secondary btnedit"><span class="am-icon-pencil-square-o"></span> 编辑</button><button type="button" onclick="sharesysfun(502);" class="am-btn am-btn-default am-btn-xs am-hide-sm-only"><span class="am-icon-copy"></span> 分配权限</button><button type="button" class="am-btn am-btn-default am-btn-xs am-text-danger am-hide-sm-only" onclick="delUser(502,1)"><span class="am-icon-trash-o"></span> 删除</button></div>
													</div>
												</td>
											</tr>
											<tr>
												<td><input name="chks" value="501" type="checkbox"></td>
												<td>
													<a href="javascript:void(0)">教务主管</a>
												</td>
												<td>负责管理教务</td>
												<td>
													<div class="am-btn-toolbar">
														<div class="am-btn-group am-btn-group-xs"><button type="button" id="role_501" class="am-btn am-btn-default am-btn-xs am-text-secondary btnedit"><span class="am-icon-pencil-square-o"></span> 编辑</button><button type="button" onclick="sharesysfun(501);" class="am-btn am-btn-default am-btn-xs am-hide-sm-only"><span class="am-icon-copy"></span> 分配权限</button><button type="button" class="am-btn am-btn-default am-btn-xs am-text-danger am-hide-sm-only" onclick="delUser(501,1)"><span class="am-icon-trash-o"></span> 删除</button></div>
													</div>
												</td>
											</tr>
											<tr>
												<td><input name="chks" value="404" type="checkbox"></td>
												<td>
													<a href="javascript:void(0)">推广主管</a>
												</td>
												<td>负责公司的推广</td>
												<td>
													<div class="am-btn-toolbar">
														<div class="am-btn-group am-btn-group-xs"><button type="button" id="role_404" class="am-btn am-btn-default am-btn-xs am-text-secondary btnedit"><span class="am-icon-pencil-square-o"></span> 编辑</button><button type="button" onclick="sharesysfun(404);" class="am-btn am-btn-default am-btn-xs am-hide-sm-only"><span class="am-icon-copy"></span> 分配权限</button><button type="button" class="am-btn am-btn-default am-btn-xs am-text-danger am-hide-sm-only" onclick="delUser(404,1)"><span class="am-icon-trash-o"></span> 删除</button></div>
													</div>
												</td>
											</tr>
											<tr>
												<td><input name="chks" value="403" type="checkbox"></td>
												<td>
													<a href="javascript:void(0)">在线客服</a>
												</td>
												<td>负责客服</td>
												<td>
													<div class="am-btn-toolbar">
														<div class="am-btn-group am-btn-group-xs"><button type="button" id="role_403" class="am-btn am-btn-default am-btn-xs am-text-secondary btnedit"><span class="am-icon-pencil-square-o"></span> 编辑</button><button type="button" onclick="sharesysfun(403);" class="am-btn am-btn-default am-btn-xs am-hide-sm-only"><span class="am-icon-copy"></span> 分配权限</button><button type="button" class="am-btn am-btn-default am-btn-xs am-text-danger am-hide-sm-only" onclick="delUser(403,1)"><span class="am-icon-trash-o"></span> 删除</button></div>
													</div>
												</td>
											</tr>
											<tr>
												<td><input name="chks" value="402" type="checkbox"></td>
												<td>
													<a href="javascript:void(0)">市场经理</a>
												</td>
												<td>管理市场部</td>
												<td>
													<div class="am-btn-toolbar">
														<div class="am-btn-group am-btn-group-xs"><button type="button" id="role_402" class="am-btn am-btn-default am-btn-xs am-text-secondary btnedit"><span class="am-icon-pencil-square-o"></span> 编辑</button><button type="button" onclick="sharesysfun(402);" class="am-btn am-btn-default am-btn-xs am-hide-sm-only"><span class="am-icon-copy"></span> 分配权限</button><button type="button" class="am-btn am-btn-default am-btn-xs am-text-danger am-hide-sm-only" onclick="delUser(402,1)"><span class="am-icon-trash-o"></span> 删除</button></div>
													</div>
												</td>
											</tr>
											<tr>
												<td><input name="chks" value="401" type="checkbox"></td>
												<td>
													<a href="javascript:void(0)">咨询顾问(市场部)</a>
												</td>
												<td>给学生提供咨询课程</td>
												<td>
													<div class="am-btn-toolbar">
														<div class="am-btn-group am-btn-group-xs"><button type="button" id="role_401" class="am-btn am-btn-default am-btn-xs am-text-secondary btnedit"><span class="am-icon-pencil-square-o"></span> 编辑</button><button type="button" onclick="sharesysfun(401);" class="am-btn am-btn-default am-btn-xs am-hide-sm-only"><span class="am-icon-copy"></span> 分配权限</button><button type="button" class="am-btn am-btn-default am-btn-xs am-text-danger am-hide-sm-only" onclick="delUser(401,1)"><span class="am-icon-trash-o"></span> 删除</button></div>
													</div>
												</td>
											</tr>
											<tr>
												<td><input name="chks" value="301" type="checkbox"></td>
												<td>
													<a href="javascript:void(0)">网管</a>
												</td>
												<td>负责公司的网络硬件</td>
												<td>
													<div class="am-btn-toolbar">
														<div class="am-btn-group am-btn-group-xs"><button type="button" id="role_301" class="am-btn am-btn-default am-btn-xs am-text-secondary btnedit"><span class="am-icon-pencil-square-o"></span> 编辑</button><button type="button" onclick="sharesysfun(301);" class="am-btn am-btn-default am-btn-xs am-hide-sm-only"><span class="am-icon-copy"></span> 分配权限</button><button type="button" class="am-btn am-btn-default am-btn-xs am-text-danger am-hide-sm-only" onclick="delUser(301,1)"><span class="am-icon-trash-o"></span> 删除</button></div>
													</div>
												</td>
											</tr>
											<tr>
												<td><input name="chks" value="202" type="checkbox"></td>
												<td>
													<a href="javascript:void(0)">就业总监</a>
												</td>
												<td>管理整个就业部</td>
												<td>
													<div class="am-btn-toolbar">
														<div class="am-btn-group am-btn-group-xs"><button type="button" id="role_202" class="am-btn am-btn-default am-btn-xs am-text-secondary btnedit"><span class="am-icon-pencil-square-o"></span> 编辑</button><button type="button" onclick="sharesysfun(202);" class="am-btn am-btn-default am-btn-xs am-hide-sm-only"><span class="am-icon-copy"></span> 分配权限</button><button type="button" class="am-btn am-btn-default am-btn-xs am-text-danger am-hide-sm-only" onclick="delUser(202,1)"><span class="am-icon-trash-o"></span> 删除</button></div>
													</div>
												</td>
											</tr>
											<tr>
												<td><input name="chks" value="201" type="checkbox"></td>
												<td>
													<a href="javascript:void(0)">就业专员</a>
												</td>
												<td>负责就业</td>
												<td>
													<div class="am-btn-toolbar">
														<div class="am-btn-group am-btn-group-xs"><button type="button" id="role_201" class="am-btn am-btn-default am-btn-xs am-text-secondary btnedit"><span class="am-icon-pencil-square-o"></span> 编辑</button><button type="button" onclick="sharesysfun(201);" class="am-btn am-btn-default am-btn-xs am-hide-sm-only"><span class="am-icon-copy"></span> 分配权限</button><button type="button" class="am-btn am-btn-default am-btn-xs am-text-danger am-hide-sm-only" onclick="delUser(201,1)"><span class="am-icon-trash-o"></span> 删除</button></div>
													</div>
												</td>
											</tr>
											<tr>
												<td><input name="chks" value="103" type="checkbox"></td>
												<td>
													<a href="javascript:void(0)">咨询师(渠道)</a>
												</td>
												<td>负责渠道学生咨询</td>
												<td>
													<div class="am-btn-toolbar">
														<div class="am-btn-group am-btn-group-xs"><button type="button" id="role_103" class="am-btn am-btn-default am-btn-xs am-text-secondary btnedit"><span class="am-icon-pencil-square-o"></span> 编辑</button><button type="button" onclick="sharesysfun(103);" class="am-btn am-btn-default am-btn-xs am-hide-sm-only"><span class="am-icon-copy"></span> 分配权限</button><button type="button" class="am-btn am-btn-default am-btn-xs am-text-danger am-hide-sm-only" onclick="delUser(103,1)"><span class="am-icon-trash-o"></span> 删除</button></div>
													</div>
												</td>
											</tr>
										</tbody>
									</table>
									<div class="am-cf">
										共
										<span id="totalCount">17</span> 条记录
										<div class="am-fr">
											<ul class="pages am-pagination">
												<li onclick="javascript:void(0)" style="color:#6FB3E0" disabled="disabled" id="prev">
													<a href="javascript:void(0)"><i class="icon-double-angle-left"></i></a>
												</li>
												<li class="cpage  am-active">
													<a href="javascript:void(0)">1</a>
												</li>
												<li class="cpage" style="color:#6FB3E0">
													<a href="javascript:void(0)">2</a>
												</li>
												<li style="color:#6FB3E0" id="next">
													<a href="javascript:void(0)"><i class="icon-double-angle-right"></i></a>
												</li>
											</ul>
										</div>
									</div>
								</form>
							</div>
						</div>
					</div>

				</div>
				<!-- content end -->
			</div>
		</div>

		<!--[if (gte IE 9)|!(IE)]><!-->
		<script src="js/jquery-1.11.3.min.js"></script>
		<!--<![endif]-->
		<script type="text/javascript" src="myplugs/js/plugs.js"></script>
		<script>
			$(function() {

						$(".btnedit").click(function() {

							$.jq_Panel({
								title: "修改角色",
								iframeWidth: 500,
								iframeHeight: 300,
								url: "editRole.html"
							});
						});
						
						 $(".btnAdd").click(function(){
						 	
						 	$.jq_Panel({
								title: "添加角色",
								iframeWidth: 500,
								iframeHeight: 300,
								url: "editRole.html"
							});
						 	
						});						
			});
		 function sharesysfun(id){
		 	location.href="shareRole.html";
		 }
		</script>
	</body>
</html>
