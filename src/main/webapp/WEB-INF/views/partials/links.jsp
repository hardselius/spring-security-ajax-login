<!-- This JSP page displays the links section -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="security" %>
<%@ page session="false" %>

<!-- If not logged in, display login & ajax login links -->
<security:authorize ifNotGranted="ROLE_USER">
	<p><a href="<c:url value="/spring_security_login" />">Standard Login</a></p>
	<p><a id="ajaxLogin" href="#">Ajax Login</a></p>
</security:authorize>

<!-- If logged in, display secure and logout link -->
<security:authorize ifAllGranted="ROLE_USER">
	<p><a href="<c:url value="/secure" />">Secure</a></p>
	<p><a href="<c:url value="/j_spring_security_logout" />">Logout</a></p>
</security:authorize>
