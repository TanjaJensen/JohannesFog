<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Signup</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    </head>
    <body>
        <jsp:include page='includes/menu.jsp'></jsp:include><%--  navigationbar links--%>
        
        <h1>Login</h1>
        <form name="Login" action="Login" method="POST">
            <input type="text" name="eid" value="">
            <input type="password" name="psw" value="">
            <input type="submit" name="Login" value="Login">


        </form>
    </body>
</html>
