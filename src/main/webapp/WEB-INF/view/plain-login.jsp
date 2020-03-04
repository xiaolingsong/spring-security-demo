<%--
  Created by IntelliJ IDEA.
  User: sxlwo
  Date: 3/2/2020
  Time: 5:00 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8"  %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
<head>
    <title>Login the App</title>
    <style>
        .failed{
            color: red;
        }
    </style>
</head>
<body>
<h3>My Custom Login Page</h3>
    <form:form action="${pageContext.request.contextPath}/authenticateTheUser"
                method="post">
        <!-- Check for login error -->

        <c:if test="${param.error != null}">
            <i class="failed">Sorry! You entered invalid username/password. </i>
        </c:if>


        <p>
             <label>User name:
            <input type="text" name="username" />
        </label>
        </p>
        <p>
            <label>Password:
            <input type="password" name="password" />
        </label>
        </p>
        <input type="submit" value="Login" />
    </form:form>
</body>
</html>
