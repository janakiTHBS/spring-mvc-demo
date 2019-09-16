<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Student Registration</title>
<style>
 .error{color:red}
</style>
</head>
<body>
<form:form action="processForm" modelAttribute="student">
FirstName:<form:input path="firstName"/>
<br><br>
LastName(*)<form:input path="lastName"/>
<form:errors path="lastName" cssClass="error"/>
<br><br>
Country:
<form:select path="country">
<form:options items="${theCountryOptions}"/>
</form:select>
<br><br>
Java:<form:radiobutton path="favouriteLanguage" value="Java"/>
C++:<form:radiobutton path="favouriteLanguage" value="C++"/>
Python: <form:radiobutton path="favouriteLanguage" value="Python"/>
<br><br>

Linux :<form:checkbox path="operatingSystems" value="linux"/>

Windows:<form:checkbox path="operatingSystems" value="windows"/>

Mac :<form:checkbox path="operatingSystems" value="mac"/>

<br><br>
Free Passes:<form:input path="freePasses"/>
<form:errors path="freePasses" cssClass="error"/>
<br><br>
PostalCode:<form:input path="postalCode"/>

<form:errors path="postalCode" cssClass="error"/>

<br><br>

<input type="submit" value="Register"/>

</form:form>

</body>
</html>