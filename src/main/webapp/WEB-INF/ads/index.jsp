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
    <div class="text-center">
        <form method="post" action="/ads/search">
            <label for="searchTerm">
                <input type="search" name="searchTerm" id="searchTerm">
            </label>
            <button type="submit">Search</button>
        </form>
    </div>
    <c:choose>
        <c:when test="${requestScope.searchTerm == null}">
            <h1 style="text-align: center;">All Ads</h1>
        </c:when>
        <c:otherwise>
            <h1 style="text-align: center;">Search term = "${requestScope.searchTerm}"</h1>
        </c:otherwise>
    </c:choose>
    <div class="col-md-1"></div>
    <div class="col-md-10">
    <c:choose>
        <c:when test="${requestScope.searchTerm == null}">
            <div style="float:right;">
                <a href="/ads" style="color: black"><button type="button">Sort By Date Desc</button></a>
                <a href="/ads?sortBy=dateAsc" style="color: black"><button type="button">Sort By Date Asc</button></a>
            </div>
        </c:when>
    </c:choose>
        <c:forEach var="ad" items="${ads}">
            <div class="col-md-12" style="background-color: #F8F8F8; margin: 5px; border-radius: 5px; box-shadow: lightgrey 3px 3px 3px">
                <h2><a href="ads/individualAd?id=${ad.id}">${ad.title}</a></h2>
                <p>${ad.description}</p>
                <p>${ad.date}</p>
            </div>
        </c:forEach>
    </div>
</div>



</body>
</html>
