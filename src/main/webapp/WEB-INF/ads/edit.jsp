<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="${ad.title}" />
    </jsp:include>
</head>

<body>
</div>
<c:choose>
    <c:when test="${sessionScope.user != null}">
        <jsp:include page="/WEB-INF/partials/navbar_loggedin.jsp" />
    </c:when>
    <c:otherwise>
        <jsp:include page="/WEB-INF/partials/navbar.jsp" />
    </c:otherwise>
</c:choose>

<div class="container">
    <c:forEach var="ad" items="${ads}">
1

    <div class="col-md-12" style="background-color: #F8F8F8; margin: 5px; border-radius: 5px; box-shadow: lightgrey 3px 3px 3px">
        <h2>${ad.title}</h2>
        <p>${ad.description}</p>

    </div>
        </c:forEach>
<div class="col-md-10">
    <br>
    <h2>Current Ad: ${ad.title}</h2>
    <br><br>
    <form action="/ads/edit" method="post">
        <input type="hidden" id="currentAdId" name="currentAdId" value="${ad.id}">
        <label for="newAdTitle">New Ad Title:</label>
        <input type="text" id="newAdTitle" name="newAdTitle" value="${ad.title}"><br><br>
        <label for="newAdDescription">New Description:</label><br>
        <textarea cols="50" rows="6" id="newAdDescription" name="newAdDescription" value="${ad.description}"></textarea><br><br>
        <button type="submit">Submit</button>
    </form>
</div>
        <script>
            document.getElementById("newAdDescription").innerHTML="${ad.description}";
            console.log("${ad.id}");
        </script>
</body>
</html>
