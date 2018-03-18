<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
		<meta charset="UTF-8">
		<title></title>

		<link rel="stylesheet" href="css/amazeui.min.css">
		<link rel="stylesheet" href="css/admin.css">
		<link rel="stylesheet" href="css/app.css">
		<style>
			.admin-main {
				padding-top: 0px;
			}
		</style>
	</head>

	<body>

		<div class="am-cf admin-main">
			<!-- content start -->
			<div class="admin-content">
				<div class="admin-content-body">
					<div class="am-g">
						<form class="am-form am-form-horizontal" action="role/addroleSubmit.action" method="post" style="padding-top: 30px;">
							<input value="504" name="roleId" type="hidden">
							<div class="am-form-group">
								<label for="user-name" class="am-u-sm-3 am-form-label">
								用户名
								</label>
								<div class="am-u-sm-9">
									<input id="roleName" required="" placeholder="请输入用户名" value="" name="userName" type="text">
									<small id="helpRole">输入用户名。</small>
								</div>
							</div>
							<div class="am-form-group">
								<label for="user-name" class="am-u-sm-3 am-form-label">
								姓名
								</label>
								<div class="am-u-sm-9">
									<input id="roleName" required="" placeholder="请输入姓名" value="" name="name" type="text">
									<small id="helpRole">输入姓名。</small>
								</div>
							</div>
							
							<div class="am-form-group">
								<label for="user-name" class="am-u-sm-3 am-form-label">
								邮箱
								</label>
								<div class="am-u-sm-9">
									<input id="roleName" required="" placeholder="请输入邮箱" value="" name="email" type="text">
									<small id="helpRole">输入邮箱。</small>
								</div>
							</div>

							<div class="am-form-group">
								<label for="user-name" class="am-u-sm-3 am-form-label">
										性别 / sex
									</label>
								<div class="am-u-sm-9" style="line-height: 30px;">
									<input type="radio" id="man" name="sex" value="1" ${user.sex==1? "checked=checked ": ""}/>
									<label for="man">
											男
										</label> &nbsp;&nbsp;&nbsp;&nbsp;
									<input type="radio" id="woman" name="sex" value="0" ${user.sex==0? "checked=checked ": ""} />
									<label for="woman">
											女
										</label>
									<br />
									<small>性别...</small>
								</div>
							</div>

							<div class="am-form-group">
								<label for="user-email" class="am-u-sm-3 am-form-label">
										部门
									</label>
								<div class="am-u-sm-9">
									<select name="departid" required>
										<option value="">
											请选择部门
										</option>

										<option value="1">
											开发部
										</option>

									</select>
									<small>部门</small>
								</div>
							</div>
							<div class="am-form-group">
								<div class="am-u-sm-9 am-u-sm-push-3">
									<input id="addRole" class="am-btn am-btn-success" value="编辑部门" type="button">
								</div>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</body>
</html>
