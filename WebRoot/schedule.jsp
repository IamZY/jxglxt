<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
   <head>
		<base href="<%=basePath%>">

		<title>My JSP 'schedule.jsp' starting page</title>
		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">

		<link rel="stylesheet" href="css/layer.css">
		<link rel="stylesheet" href="css/iconfont.css" />
		<link rel="stylesheet" href="css/skin.css">
		<link rel="stylesheet" href="css/fullcalendar.css">
		<style>
#calendar {
	margin: 30px;
}
</style>
	</head>

	<body>
		<div id='calendar'></div>
	</body>
<script type="text/javascript"  src="js/jquery-1.11.3.min.js" >
	<script src='js/jquery-ui-1.10.2.custom.min.js'>
</script>
	<script src='js/fullcalendar.min.js'>
</script>
	<script type="text/javascript">
$(function() {

	var date = new Date();
	var d = date.getDate();
	var m = date.getMonth();
	var y = date.getFullYear();

	$('#calendar').fullCalendar( {
		header : {
			left : 'prev,next today',
			center : 'title',
			right : 'month,agendaWeek,agendaDay'
		},
		dayClick : function(event, jsEvent, view) {
			alert(event);
		},
		buttonIcons:false,
		firstDay : 1,
		editable : true,
		timeFormat : 'H:mm',
		axisFormat : 'H:mm',
		events : function(start, end, callback) {
			callback( [ {
				title : '鍐檍ava浠ｇ爜',
				start : new Date(y, m, 1),
				event : function() {
					alert('3232');
				}
			}, {
				title : '寮犲鐣屽洓鏃ユ父',
				start : new Date(y, m, d - 50),
				end : new Date(y, m, d - 2)
			}, {
				id : 999,
				title : '鐢佃瘽鍥炶瀹㈡埛',
				start : new Date(y, m, d - 6, 16, 0),
				allDay : false
			}, {
				id : 999,
				title : '鐢佃瘽鍥炶瀹㈡埛',
				start : new Date(y, m, d + 4, 16, 0),
				allDay : false

			}, {
				title : '瑙嗛浼氳',
				start : new Date(y, m, d, 10, 30),
				allDay : false
			}, {
				title : '涓鏀惧亣',
				start : '2013-09-19',
				end : '2013-09-21'

			}, {
				title : '鍗堥キ',
				start : new Date(y, m, d, 12, 0),
				end : new Date(y, m, d, 14, 0),
				allDay : false
			}, {
				title : '鐢熸棩鑱氫細',
				start : new Date(y, m, d + 1, 19, 0),
				end : new Date(y, m, d + 1, 22, 30),
				allDay : false
			}, {
				title : '璁块棶Helloweba涓婚〉',
				start : new Date(y, m, 28),
				end : new Date(y, m, 29),
				url : 'http://helloweba.com/'
			}, {
				title : '瀹炴垬璁粌璇�',
				start : new Date(y, m, d + 23)
			}, ]);
		}
	});
});
</script>
</html>
