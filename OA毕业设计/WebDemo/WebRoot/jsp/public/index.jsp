<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="../../css/fullCalendar/fullcalendar.css">
<script src='../../js/fullCalendar/jquery-1.9.1.min.js'></script>
<script src="../../js/fullCalendar/jquery-ui-1.10.2.custom.min.js"></script> 
<script type="text/javascript" src="../../js/fullCalendar/fullcalendar.min.js"></script>
<script type="text/javascript">
$(function() {
	
		var date = new Date();
		var d = date.getDate();
		var m = date.getMonth();
		var y = date.getFullYear();
		
		$('#calendar').fullCalendar({
			header: {
				left: 'prev,next today',
				center: 'title',
				right: 'month,agendaWeek,agendaDay'
			},
			firstDay:1,
			editable: true,
			timeFormat: 'H:mm',
			axisFormat: 'H:mm',
			events: [
				{
					title: '全天计划\r\n#####\r\n写代码',
					start: new Date(y, m, 1)
				},
				{
					title: '张家界四日游',
					start: new Date(y, m, d-5),
					end: new Date(y, m, d-2)
				},
				{
					id: 999,
					title: '电话回访客户',
					start: new Date(y, m, d-6, 16, 0),
					allDay: false
				},
				{
					id: 999,
					title: '电话回访客户',
					start: new Date(y, m, d+4, 16, 0),
					allDay: false
				},
				{
					title: '视频会议',
					start: new Date(y, m, d, 10, 30),
					allDay: false
				},
				{
					title: '中秋放假',
					start: '2013-09-19',
					end: '2013-09-21',
				},
				{
					title: '午饭',
					start: new Date(y, m, d, 12, 0),
					end: new Date(y, m, d, 14, 0),
					allDay: false
				},
				{
					title: '生日聚会',
					start: new Date(y, m, d+1, 19, 0),
					end: new Date(y, m, d+1, 22, 30),
					allDay: false
				},
				{
					title: '访问Helloweba主页',
					start: new Date(y, m, 28),
					end: new Date(y, m, 29),
					url: 'http://helloweba.com/'
				},
				{
					title: '实战训练课',
					start: new Date(y, m, d+23)
				},
			]
		});
		
	});
</script>
</style>
</head>
<body>







<div id="main" style="width:1060px">
   <div id='calendar'></div>
</div>




</body>
</html>