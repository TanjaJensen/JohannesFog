
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
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
        <div class="container">
            <h2>Empolyee Registration: </h2>
            <form class="form-horizontal" action="Signup" name="Signup" method="POST">
                <div class="form-group">
                    <label class="control-label col-sm-2" for="id">Your new ID:</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" name="eid"  placeholder="Enter your ID">
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-sm-2" for="name">Youy name:</label>
                    <div class="col-sm-10">          
                        <input type="text" class="form-control" name="ename" placeholder="Enter your name">
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-sm-2" for="Password">Your Password:</label>
                    <div class="col-sm-10">          
                        <input type="password" class="form-control" name="psw" placeholder="Enter your Password ">
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-sm-2" for="Phone">Your phone:</label>
                    <div class="col-sm-10">          
                        <input type="text" class="form-control" name="phone" placeholder="Enter your phone ">
                    </div>
                </div>

                <div class="form-group">        
                    <div class="col-sm-offset-2 col-sm-10">
                        <button type="submit" class="btn btn-default">Signup</button>
                    </div>
                </div>
            </form>
        </div>

    </body>
</html>

