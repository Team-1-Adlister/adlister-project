<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="partials/head.jsp">
        <jsp:param name="title" value="Register For Our Site!" />
    </jsp:include>
</head>
<body>
    <jsp:include page="partials/navbar.jsp" />
    <div class="container">
        <h1>Please fill in your information.</h1>
        <form action="/register" method="post">
            <div class="form-group">
                <label for="username">Username</label>
                <input id="username" name="username" class="form-control" type="text">
            </div>
            <div class="form-group">
                <label for="email">Email</label>
                <input id="email" name="email" class="form-control" type="text">
            </div>
            <div class="form-group">
                <label for="password">Password</label>
                <input id="password" name="password" class="form-control" type="password">
            </div>
            <div class="form-group">
                <label for="confirm_password">Confirm Password</label>
                <input id="confirm_password" name="confirm_password" class="form-control" type="password">
            </div>
            <input type="submit" class="btn btn-primary btn-block">
        </form>
    </div>

    <script src="https://code.jquery.com/jquery-latest.min.js"></script>
<script>
        $.get('${pageContext.request.contextPath}/register',

        $(document).getElementById(function registerValidation() {

            let userName = document.forms["register"]["username"].value;
            let passWord = document.forms["register"]["password"].value;
            let eMail = document.forms["register"]["email"].value;
            let confirmPassword = document.forms["register"]["confirm_password"].value;

            if (userName === "") {
                alert("Empty field. Must fill in Username")
            } else if (passWord === "") {
                    alert("Empty field. Must fill in Password")
                } else if (eMail === "") {
                        alert("Empty field. Must fill in Email")
                     } else if (confirmPassword !== passWord) {
                            alert("Passwords do not match. Please confirm correct password.")}
                         {
                             alert("Thank you for registering.")
                                }
                         return false;
             })
        )
    </script>

</body>
</html>
