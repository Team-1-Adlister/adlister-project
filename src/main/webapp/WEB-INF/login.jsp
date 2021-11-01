<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Please Log In" />
    </jsp:include>
</head>
<body>
    <jsp:include page="/WEB-INF/partials/navbar.jsp" />
    <div class="container">
        <h1>Please Log In</h1>
        <form name ="login" action="/login" method="post" onsubmit="loginProfileValidation()">
            <div class="form-group">
                <label for="username">Username</label>
                <input id="username" name="username" class="form-control" type="text">
            </div>
            <div class="form-group">
                <label for="password">Password</label>
                <input id="password" name="password" class="form-control" type="password">
            </div>
            <input type="submit" class="btn btn-primary btn-block" value="Log In">
        </form>
    </div>
</body>

<script src="https://code.jquery.com/jquery-latest.min.js"></script>
<script>
    function loginProfileValidation() {
        let loginUsername = document.forms["login"]["username"].value;
        let loginPassword = document.forms["login"]["password"].value;

        if (loginUsername === "") {
            alert("Empty field. Please enter your username.")
            clearPassword(true, false)
        }
        if (loginPassword === "") {
            alert("Empty field. Please enter your password.")
            clearPassword(true, false)
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
</html>
