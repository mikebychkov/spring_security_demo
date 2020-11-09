<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>

<html>
<head>
    <title>Welcome to Spring Security</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>

<h2>Hello Spring Security! It is time to oooownnn THE Spring Framework!!!</h2>

<hr>

    <p>
        User: <security:authentication property="principal.username" />
    </p>
    <p>
        Role(s): <security:authentication property="principal.authorities" />
    </p>

    <security:authorize access="hasRole('MANAGER')" >
        <hr>
        <p>
            <a href="${pageContext.request.contextPath}/leaders">Managers Link</a>
        </p>
    </security:authorize>

    <security:authorize access="hasRole('ADMIN')">
        <hr>
        <p>
            <a href="${pageContext.request.contextPath}/systems">Admins Link</a>
        </p>
    </security:authorize>

<hr>

<form:form action="${pageContext.request.contextPath}/logout" method="POST">
    <input type="submit" value="Logout">
</form:form>

</body>
</html>
