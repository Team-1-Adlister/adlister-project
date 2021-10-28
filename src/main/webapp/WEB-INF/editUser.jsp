<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Edit User" />
    </jsp:include>
</head>
<body>
<jsp:include page="/WEB-INF/partials/navbar_loggedin.jsp" />
<div class="col-md-10">
        <br>
        Your Username: ${sessionScope.user.username}
        <br><br>
        <form action="/edituser" method="post">
            <label for="newUsername">New Username:</label>
            <input type="text" id="newUsername" name="newUsername"><br><br>
            <label for="newPassword">New Password:</label>
            <input type="text" id="newPassword" name="newPassword"><br><br>
            <label for="confirmPassword">Confirm Current Password:</label>
            <input type="text" id="confirmPassword" name="confirmPassword"><br><br>
            <button type="submit">Submit</button>
        </form>
</div>
</body>
</html>
