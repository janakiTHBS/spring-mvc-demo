<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Student Confirmation</title>
</head>
<body>
The Student confirmed :${student.firstName} ${student.lastName} 
<br><br>

 Country:${student.country}
 
 <br> <br>
 Favourite Language ${student.favouriteLanguage}

<br><br>
operatingSystems:
<ul>
<c:forEach var="temp" items="${student.operatingSystems}">
<li>${temp}</li>
</c:forEach>
</ul>
<br><br>
freePasses:${student.freePasses}
<br>
Postal Code:${student.postalCode}
<br>
</body>
</html>