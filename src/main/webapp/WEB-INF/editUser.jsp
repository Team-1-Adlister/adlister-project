<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Edit User" />
    </jsp:include>
</head>
<body>
<jsp:include page="/WEB-INF/partials/navbar_loggedin.jsp" />
<form action="/edituser" method="post">
    <div>${sessionScope.user.username}</div>
    <label>
        <input name="newUsername" type="text">
    </label>
    <label>
        <input name="newPassword" type="text">
    </label>
    <label>
        <input name="passwordConfirmation" type="text">
    </label>
</form>
</body>
</html>
