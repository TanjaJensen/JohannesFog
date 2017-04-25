
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Contact</title>
        <link href="CSS/style.css" rel="stylesheet" type="text/css"/>
        <jsp:include page="includes/Header.jsp"></jsp:include> <%-- header son indhold boostrap--%>
    </head>
    <body>
        <jsp:include page='includes/menu.jsp'></jsp:include><%--  navigationbar links--%>
        <h3>Contact us</h3>

        <div class="container">
            <form action="/action_page.php">
                <label for="fname">First Name</label>
                <input type="text" id="fname" name="firstname" placeholder="Your name..">

                <label for="lname">Last Name</label>
                <input type="text" id="lname" name="lastname" placeholder="Your last name..">

                <label for="country">Country</label>
                <select id="country" name="country">
                    <option value="australia">Australia</option>
                    <option value="canada">Canada</option>
                    <option value="usa">USA</option>
                </select>

                <label for="subject">Subject</label>
                <textarea id="subject" name="subject" placeholder="Write something.." style="height:200px"></textarea>

                <input type="submit" value="Submit">
            </form>
        </div>
    </body>
</html>