<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>GuestBook</title>
</head>
<body>
<form action="AddTask" method ="post">
<table border="2">
<tr><th>Task</th><th>Date</th><th>Done</th>
</tr>
<c:forEach items="${toDoList}" var="toDo" varStatus="status">
<c:if test="${not toDo.complete}"> 
<tr>
 <td>${toDo.task }</td>
 <td>${toDo.date }</td>
 <td><a href="TaskDone?id=${status.index}">X</a></td>
 </tr>
</c:if> 
</c:forEach>
<tr> <td><input type = 'text' name = 'task'/></td><td><button >Add</button><td></tr>
</table>
</form>
<p>
<b>Tasks Completed</b>
</p>
<table border="1">
<tr><th>Task</th><th>Assign Date</th><th>Complete Date</th></tr>
<c:forEach items="${toDoList}" var="toDo" varStatus="status">
<c:if test="${toDo.complete }">
<tr>
<td>${toDo.task }</td>
<td>${toDo.date }</td>
<td>${toDo.completedDate }</td>
</tr>
</c:if>
</c:forEach>
</table>
</body>
</html>