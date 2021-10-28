<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Create a new Ad" />
    </jsp:include>
</head>
<body>
    <div class="container">
        <h1>Create a new Ad</h1>
        <form name="ads/create" action="/ads/create" method="post" onsubmit="return adsCreateValidation()">
            <div class="form-group">
                <label for="title">Title</label>
                <input id="title" name="title" class="form-control" type="text">
            </div>
            <div class="form-group">
                <label for="description">Description</label>
                <textarea id="description" name="description" class="form-control" type="text"></textarea>
            </div>
            <input type="submit" class="btn btn-block btn-primary">
        </form>
    </div>

    <script src="https://code.jquery.com/jquery-latest.min.js"></script>
    <script>

        function adsCreateValidation() {

            let adTitle = document.forms["ads/create"]["title"].value;
            let adDescription = document.forms["ads/create"]["description"].value;

            if (adTitle === "") {
                alert("Empty field. Must fill in an ad title.")
            }
            if (adDescription === "") {
                alert("Empty field. Must fill in an ad description.")
            }

        }

    </script>


</body>
</html>
