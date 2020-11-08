<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <title>Login</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>

<div class="container">

    <h3>Please Login</h3>

    <br>

    <form:form action="${pageContext.request.contextPath}/authenticateUser" method="POST">
        <c:if test="${param.error != null}">
            <div class="alert alert-danger">
                <i><strong>Sorry!</strong> You entered wrong user name or password.</i>
            </div>
        </c:if>
        <c:if test="${param.logout != null}">
            <div class="alert alert-success">
                <i><strong>Success!</strong> You've been successfully logged out.</i>
            </div>
        </c:if>
        <div class="input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
            <input id="username" type="text" class="form-control" name="username" placeholder="User name">
        </div>
        <br>
        <div class="input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
            <input id="password" type="password" class="form-control" name="password" placeholder="Password">
        </div>
        <br>
        <button type="submit" class="btn btn-primary">Login</button>
    </form:form>

</div>

</body>
</html>

