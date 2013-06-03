<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="security" %>
<%@ page session="false" %>
<html>
<head>
	<title>Secure</title>
</head>
<body>
<h1>Secure</h1>
<h3>This page is secured by Spring Security!</h3>
<p>Welcome <security:authentication property="principal.username" />!</p>
<p><a href="<c:url value="/" />">Home</a></p>
<p><a href="<c:url value="/j_spring_security_logout" />">Logout</a></p>
</body>
</html>
