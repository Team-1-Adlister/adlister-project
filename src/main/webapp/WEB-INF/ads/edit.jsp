<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="${ad.title}" />
    </jsp:include>
</head>

<body>


<div class="container">

    <div class="col-md-12" style="background-color: #F8F8F8; margin: 5px; border-radius: 5px; box-shadow: lightgrey 3px 3px 3px">
        <h2>${ad.title}</h2>
        <p>${ad.description}</p>
    </div>
    <c:choose>
        <c:when test="${sessionScope.user != null}">
            <jsp:include page="/WEB-INF/partials/navbar_loggedin.jsp" />
        </c:when>
        <c:otherwise>
            <jsp:include page="/WEB-INF/partials/navbar.jsp" />
        </c:otherwise>
    </c:choose>

</div>

</body>
</html>
