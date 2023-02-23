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
	
	<form:form modelAttribute="userReg">
	
	<label>UserName:</label>
	<form:input path="userName"/>
	
	<label>UserEmail:</label>
	<form:input path="userEmail"/>
	
	</form:form>
	
</body>
</html>