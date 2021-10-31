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
<%--                <c:choose>--%>
<%--                    <c:when test="${registerValidation eq true}">--%>
                        <input id="password" name="password" class="form-control" type="password" value="">
<%--                    </c:when>--%>

<%--<c:otherwise>--%>
<%--    <input id="password" name="password" class="form-control" type="password">--%>
<%--</c:otherwise>--%>
<%--                </c:choose>--%>

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

            }
            if (passWord === "") {
                    alert("Empty field. Must fill in Password")

                }
            if (eMail === "") {
                        alert("Empty field. Must fill in Email")

                     }
            if (confirmPassword !== passWord) {
                            alert("Passwords do not match. Please confirm correct password.")

            }

       }

    </script>

<%--    <script type="text/javascript">--%>
<%--        (function stickyFormUsername() {--%>
<%--            var form = document.getElementsByName('username')[0];--%>
<%--            if (localStorage['username'] !== "") {--%>
<%--                var displayArea = document.getElementById('username');--%>
<%--                displayArea.textContent = localStorage['username'];--%>
<%--            }--%>
<%--            form.addEventListener('submit', function() {--%>
<%--                var nameField = document.getElementsByName('username')[0];--%>
<%--                localStorage['username'] = nameField.value;--%>
<%--            }, false);--%>

<%--        })();--%>
<%--        // (function stickyFormPassword() {--%>
<%--        //     var form = document.getElementsByName('password')[0];--%>
<%--        //     if (localStorage['password'] !== undefined) {--%>
<%--        //         var displayArea = document.getElementById('password');--%>
<%--        //         displayArea.textContent = localStorage['password'];--%>
<%--        //     }--%>
<%--        //     form.addEventListener('submit', function() {--%>
<%--        //         var nameField = document.getElementsByName('password')[0];--%>
<%--        //         localStorage['password'] = nameField.value;--%>
<%--        //     }, false);--%>

<%--        // })();--%>
<%--        // (function stickyFormEmail() {--%>
<%--        //     var form = document.getElementsByName('email')[0];--%>
<%--        //     if (localStorage['email'] !== "") {--%>
<%--        //         var displayArea = document.getElementById('email');--%>
<%--        //         displayArea.textContent = localStorage['email'];--%>
<%--        //     }--%>
<%--        //     form.addEventListener('submit', function() {--%>
<%--        //         var nameField = document.getElementsByName('email')[0];--%>
<%--        //         localStorage['email'] = nameField.value;--%>
<%--        //     }, false);--%>
<%--        //--%>
<%--        // })();--%>
<%--        // (function stickyFormConfirmPassword() {--%>
<%--        //     var form = document.getElementsByName('confirm_password')[0];--%>
<%--        //     if (localStorage['confirm_password'] === undefined) {--%>
<%--        //         var displayArea = document.getElementById('confirm_password');--%>
<%--        //         displayArea.textContent = localStorage['confirm_password'];--%>
<%--        //     }--%>
<%--        //     form.addEventListener('submit', function() {--%>
<%--        //         var nameField = document.getElementsByName('confirm_password')[0];--%>
<%--        //         localStorage['confirm_password'] = nameField.value;--%>
<%--        //     }, false);--%>

<%--        // })();--%>
<%--    </script>--%>
<%--    https://stackoverflow.com/questions/4732270/making-sticky-javascript--%>

</body>
</html>
