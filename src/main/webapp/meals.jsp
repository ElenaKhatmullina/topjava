<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>



<html>
<head>
    <title>Meals List</title>
</head>
<body>

<h3><a href="index.html">Home</a></h3>
<h2>Meals</h2>

<table class="tg">
    <tr>

        <th width="120">Description</th>
        <th width="120">Calories</th>

    </tr>
<%--@elvariable id="meals" type="java.util.List"--%>

<c:forEach items="${meals}" var="meal" >
    <tr>
    <%-- <c:if test="${mealsWe}">--%>
        <td>${meal.description}</td>
        <td>${meal.calories}</td>

    <%--    </c:if>--%>

    </tr>
    </c:forEach>

<p>    </p>
    <p>ghfghjgj</p>
    <%--@elvariable id="mealsWe" type="java.util.List"--%>

    <c:forEach items="${mealsWe}" var="mealW" >
        <tr>
                <%-- <c:if test="${mealsWe}">--%>
            <td>${mealW.description}</td>
            <td>${mealW.calories}</td>

                <%--    </c:if>--%>

        </tr>
    </c:forEach>
</table>
</body>
</html>

