<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<style>
    <%@include file='/WEB-INF/views/css/styles.css' %>
</style>
<html>
<head>
    <title>All drivers</title>
</head>
<body>
<%@include file="/WEB-INF/views/header.jsp"%>
<main>
    <div class="all_items">
        <div class="container all_items__container">
            <h1 class="all_items__heading">List of all drivers</h1>
            <div class="mytbl__table-wrapper">
                <table class="table all_items__table">
                    <tr>
                        <th>ID</th>
                        <th>Name</th>
                        <th>License number</th>
                        <th>Login</th>
                    </tr>
                    <c:forEach items="${drivers}" var="driver">
                        <tr class="table__row">
                            <td><c:out value="${driver.id}"/></td>
                            <td><c:out value="${driver.name}"/></td>
                            <td><c:out value="${driver.licenseNumber}"/></td>
                            <td><c:out value="${driver.login}"/></td>
                            <td class="table__row_btn" style="border: none;">
                                <div class="table__delete">
                                    <a class="btn" href="${pageContext.request.contextPath}/drivers/delete?id=${driver.id}">Delete</a>
                                </div>
                            </td>
                        </tr>
                    </c:forEach>
                </table>
            </div>
            <div class="all_items__group-control">
                <a class="btn all_items__btn" href="${pageContext.request.contextPath}/drivers/add">
                    add driver
                </a>
            </div>
        </div>
    </div>
</main>
</body>
</html>
