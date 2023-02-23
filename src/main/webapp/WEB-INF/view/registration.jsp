<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Registration page</title>
<style type="text/css">

.container{
padding: 0 300px;
font-size: 20px;
font-family: sans-serif;
}
input{
size: 20px;
}
</style>
</head>
<body>

	<h1 align="center">Please register here</h1>
	
	<form:form modelAttribute="userReg" action="doneRegister" method="get">
	<div class="container" align="center">
	<label>UserName:</label>
	<form:input path="userName"/>
	
	<label>UserEmail:</label>
	<form:input path="userEmail"/>
	
		<label>Password:</label>
	<form:input path="userPass"/>
	
	<label>Country:</label>
	<form:input path="userCountry"/>
	
	<label>Hobbies:</label>
	Cricket: <form:checkbox path="hobbies" value="Cricket"/>
	Coding: <form:checkbox path="hobbies" value="Coding"/>
	Travelling: <form:checkbox path="hobbies" value="Travelling"/>
	Dancing: <form:checkbox path="hobbies" value="Dancing"/>
	Chess: <form:checkbox path="hobbies" value="Chess"/>
	
	<label>Gender: </label>
	Male: <form:radiobutton path="gender" value="male"/>
	Female: <form:radiobutton path="gender" value="female"/>
	<br>
	<button type="submit">Register</button>
	</div>
	</form:form>
	
	
</body>
</html>