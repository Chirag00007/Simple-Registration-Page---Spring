<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib  uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>You are Successfully registerd here with details </h1>
 <h2>
 
 
 Name : ${userReg.userName}
 Email : ${userReg.userEmail}
 PassWord: ${userReg.userPass}
 Country: ${userReg.userCountry }
 Gender: ${userReg.gender}
 Hobbies:
 <c:forEach var="temp" items="${userReg.hobbies }">
 ${temp}
 </c:forEach>
 
 </h2>
</body>
</html>