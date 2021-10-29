<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Create a new Ad" />
    </jsp:include>

<%--    <script>--%>
<%--        // PrintWriter pw = null;--%>
<%--        // pw = response.getWriter();--%>
<%--        // String adTitle = request.getParameter("title");--%>
<%--        // String adDescr = request.getParameter("description");--%>
<%--        // response.setContentType("text/html");--%>
<%--        function validateTitle(){--%>
<%--            const adTitle = document.forms["/ads/create"]["title"].value;--%>
<%--            if (adTitle == null || adTitle.length() === 0 || adTitle === ""){--%>
<%--                alert("Please input a title");--%>
<%--                return false;--%>
<%--            }--%>
<%--        }--%>


<%--    </script>--%>
</head>
<body>
    <div class="container">
        <h1>Create a new Ad</h1>
        <form action="/ads/create" method="post" >
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
</body>
</html>

