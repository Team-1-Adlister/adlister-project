<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Your Profile" />
    </jsp:include>
</head>
<body>
    <jsp:include page="/WEB-INF/partials/navbar_loggedin.jsp" />

    <div class="container">
        <h1>Welcome, ${sessionScope.user.username}!</h1>
    </div>
        <h1 style="text-align: center;">Here are all your ads</h1>
        <div class="col-md-1"></div>
        <div class="col-md-10">
            <div style="float:right;">
                <a href="/profile" style="color: black"><button type="button">Sort By Date Desc</button></a>
                <a href="/profile?sortBy=dateAsc" style="color: black"><button type="button">Sort By Date Asc</button></a>
            </div>
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
