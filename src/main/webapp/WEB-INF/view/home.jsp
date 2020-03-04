<%--
  Created by IntelliJ IDEA.
  User: sxlwo
  Date: 2/29/2020
  Time: 8:30 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8"  %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="security" uri="http://www.springframework.org/security/tags" %>

<html>
<head>
    <title>Home Page </title>
</head>
<body>
<h2>Welcome to the luv2code company Home page!!!</h2>
<hr />
<!-- display user name and role-->
<p>
    User: <security:authentication property="principal.username" />
    <br /><br />
    Role(s): <security:authentication property="principal.authorities" />
</p>

<security:authorize access="hasRole('MANAGER')">
    <hr />
    <!-- Add a link to point to /leaders .. this is for the managers -->
    <p>
        <a href="${pageContext.request.contextPath}/leaders">LeaderShip meeting</a>
        (only for manager peeps)
    </p>
</security:authorize>
<security:authorize access="hasRole('ADMIN')">
    <hr />
    <!-- Add a link to point to /systems .. this is for the admins -->
    <p>
        <a href="${pageContext.request.contextPath}/systems">IT Systems meeting</a>
        (only for Admin peeps)
    </p>
</security:authorize>
<hr />
<!-- Add a logout button -->
<form:form action="${pageContext.request.contextPath}/logout" method="post">
    <input type="submit" value="Logout" />
</form:form>
</body>
</html>
