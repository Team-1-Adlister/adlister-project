<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Viewing All The Ads" />
    </jsp:include>
</head>
<body>
<c:choose>
    <c:when test="${sessionScope.user != null}">
        <jsp:include page="/WEB-INF/partials/navbar_loggedin.jsp" />
    </c:when>
    <c:otherwise>
        <jsp:include page="/WEB-INF/partials/navbar.jsp" />
    </c:otherwise>
</c:choose>

<div class="container">
    <h1>Here Are all the ads!</h1>

    <a href="/ads?sortBy=dateDesc" style="color: black"><button type="button">Sort By Date Desc</button></a>
    <a href="/ads" style="color: black"><button type="button">Sort By Date Asc</button></a>

    <c:forEach var="ad" items="${ads}">
        <div class="col-md-6">
            <h2>${ad.title}</h2>
            <p>${ad.description}</p>
            <p>${ad.date}</p>
        </div>
    </c:forEach>
</div>

</body>
</html>
