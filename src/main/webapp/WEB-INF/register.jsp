<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
        <form name ="register" action="/register" method="post" onsubmit="registerValidation()">
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

                        <input id="password" name="password" class="form-control" type="password" value="">


            </div>
            <div class="form-group">
                <label for="confirm_password">Confirm Password</label>
                <input id="confirm_password" name="confirm_password" class="form-control" type="password" value="">
            </div>
            <input type="submit" class="btn btn-primary btn-block">
        </form>
    </div>

    <script src="https://code.jquery.com/jquery-latest.min.js"></script>
<script>

       function registerValidation() {

            let userName = document.forms["register"]["username"].value;
            let passWord = document.forms["register"]["password"].value;
            let eMail = document.forms["register"]["email"].value;
            let confirmPassword = document.forms["register"]["confirm_password"].value;

            if (userName === "") {
                alert("Empty field. Must fill in Username")
                clearPassword(true, true)

            }
            if (passWord === "") {
                    alert("Empty field. Must fill in Password")
                clearPassword(true, true)

                }
            if (eMail === "") {
                        alert("Empty field. Must fill in Email")
                clearPassword(true, true)

                     }
            if (confirmPassword !== passWord) {
                            alert("Passwords do not match. Please confirm correct password.")
                clearPassword(true, true)

            }

       }

       function clearPassword(containsPassword, containsConfirmPassword) {
           window.addEventListener("submit", function(event)  {
               event.preventDefault();
               if (containsPassword = true) {
                   let password = document.getElementById("password");
                   password.value = "";
               } if (containsConfirmPassword = true) {
                   let confirmPassword = document.getElementById("confirm_password");
                   confirmPassword.value = "";
               }
           });

       }


</script>

</body>
</html>
