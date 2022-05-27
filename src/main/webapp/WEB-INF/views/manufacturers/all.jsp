<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<style>
    <%@include file='/WEB-INF/views/css/styles.css' %>
</style>
<html>
<head>
    <title>All manufacturers</title>
</head>
<body>
<%@include file="/WEB-INF/views/header.jsp"%>
<main>
    <div class="all_items">
        <div class="container all_items__container">
            <h1 class="all_items__heading">List of all manufacturers</h1>
            <div class="mytbl__table-wrapper">
                <table class="table all_items__table">
                    <tr>
                        <th>ID</th>
                        <th>Model</th>
                        <th>Manufacturer</th>
                    </tr>
                    <c:forEach items="${manufacturers}" var="manufacturer">
                    <tr class="table__row">
                        <td><c:out value="${manufacturer.id}"/></td>
                        <td><c:out value="${manufacturer.name}"/></td>
                        <td><c:out value="${manufacturer.country}"/></td>
                        <td class="table__row_btn" style="border: none;">
                            <div class="table__delete">
                                <a class="btn" href="${pageContext.request.contextPath}/manufacturers/delete?id=${manufacturer.id}">Delete</a>
                            </div>
                        </td>
                    </tr>
                    </c:forEach>
                </table>
            </div>

            <div class="all_items__group-control">
                <a class="btn all_items__btn" href="${pageContext.request.contextPath}/manufacturers/add">
                    add manufacturer
                </a>
            </div>
        </div>
    </div>
</main>
</body>
</html>