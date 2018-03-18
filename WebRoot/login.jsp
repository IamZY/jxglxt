<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<head>
	<title>二级学院绩效管理系统</title>
	<meta name="keywords" content="" />
	<meta name="description" content="" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	
	<link href="css/font-awesome.min.css" rel="stylesheet" type="text/css">
	<link href="css/bootstrap.min.css" rel="stylesheet" type="text/css">
	<link href="css/bootstrap-theme.min.css" rel="stylesheet" type="text/css">
	<link href="css/templatemo_style.css" rel="stylesheet" type="text/css">	
	
	
	<script type="text/javascript" src="js/jquery-1.7.2.min.js"></script>


	<script type="text/javascript">	
		$(function(){
			
			//bind() 方法为被选元素添加一个或多个事件处理程序，并规定事件发生时运行的函数。s
			$("#xgh").bind({
				"focus":function(){
					$("#xghMsg").show();
				},
				"blur":function(){
					$("#xghMsg").hide();
				}
			});	
			
			$("#mm").bind({
				"focus":function(){
					$("#mmMsg").show();
				},
				"blur":function(){
					$("#mmMsg").hide();
				}
			});	
			
			
			$("#submit").click(function(){
				var params = $("#form").serialize();
				alert(params);
	
				$.ajax({
				url:"LoginAction.action",
				data:params,
				dataType:"text",
				success:function(data){
					console.log(data);
					if(data == "success"){
						//location.href="index.jsp?userid="+$("#username").val();
						location.href="index.jsp";							
					}else{
						alert("学工号或密码错误！");
					}

				},
				error:function(){
					alert("出错了");
				}
			});//$("ajax")
			
			}); //$("submit")
		
		
		});


	</script>


</head>




	


<body class="templatemo-bg-gray">
	<div class="container">
		<div class="col-md-12">
			<h1 class="margin-bottom-15">二级学院绩效管理系统</h1>
			<form id="form" class="form-horizontal templatemo-container templatemo-login-form-1 margin-bottom-30" role="form" action="" method="post">				
		        <div class="form-group">
		          <div class="col-xs-12">		            
		            <div class="control-wrapper">
		            	<label for="username" class="control-label fa-label"><i class="fa fa-user fa-medium"></i></label>
		            	<!-- 用户名 -->
		            	<input type="text" class="form-control" id="xgh" name="user.xgh" placeholder="学工号">
		            	<input type="text" class="form-control" id="xghMsg" value="用户名不能为空!" style="display:none;color: red">
		            </div>		            	            
		          </div>              
		        </div>
		        <div class="form-group">
		          <div class="col-md-12">
		          	<div class="control-wrapper">
		            	<label for="password" class="control-label fa-label"><i class="fa fa-lock fa-medium"></i></label>
		            	<!-- 密码 -->
		            	<input type="password" class="form-control" id="mm" name="user.mm" placeholder="密码">
		            	<input type="text" class="form-control" id="mmMsg" style="display:none;color: red" value="密码不能为空！">
		            </div>
		          </div>
		        </div>
		        			        	
		        <div class="form-group">
		          <div class="col-md-12">
	             	<div class="checkbox control-wrapper">
	                	<label>
	                  		<input type="checkbox"> Remember me
                		</label>
	              	</div>
		          </div>
		        </div>
		        <div class="form-group">
		          <div class="col-md-12">
		          	<div class="control-wrapper">
		          		<!-- 提交 -->
		          		<input id="submit" type=button value="Log in" class="btn btn-info">
		          		<a href="forgot-password.jsp" class="text-right pull-right">Forgot password?</a>
		          	</div>
		          </div>
		        </div>
		        <hr>
		       
		      </form>
		      <div class="text-center">
		      	<a href="create-account.jsp" class="templatemo-create-new">Create new account <i class="fa fa-arrow-circle-o-right"></i></a>	
		      </div>
		</div>
	</div>
</body>
</html>
