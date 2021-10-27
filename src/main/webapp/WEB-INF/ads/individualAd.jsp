<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>${ad}</title>
</head>

<body>

<jsp:include page="/WEB-INF/partials/navbar.jsp" />

<div class="container">
    <h1>Here is one ad</h1>

<%--    <c:forEach var="ad" items="${ads}">--%>
        <div class="col-md-6">
            <h2>${ad.title}</h2>
            <p>${ad.description}</p>
        </div>
<%--    </c:forEach>--%>
</div>

</body>
</html>
