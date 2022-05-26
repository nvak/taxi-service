<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<style>
    <%@include file='/WEB-INF/views/css/styles.css' %>
</style>
<html>
<head>
    <title>All cars</title>

</head>
<body>
<%@include file="/WEB-INF/views/header.jsp" %>
<main>
    <div class="all_items">
        <div class="container all_items__container">
            <h1 class="all_items__heading">List of all cars</h1>
            <div class="mytbl__table-wrapper">
                <table class="table all_items__table">
                    <tr>
                        <th>ID</th>
                        <th>Model</th>
                        <th>Manufacturer name</th>
                        <th>Manufacturer country</th>
                        <th>Drivers</th>
                    </tr>
                    <c:forEach items="${cars}" var="car">
                        <tr class="table__row">
                            <td><c:out value="${car.id}"/></td>
                            <td><c:out value="${car.model}"/></td>
                            <td><c:out value="${car.manufacturer.name}"/></td>
                            <td><c:out value="${car.manufacturer.country}"/></td>
                            <td>
                                <c:forEach var="driver" items="${car.drivers}">
                                    <ul>
                                        <li>
                                                ${driver.name} ${driver.licenseNumber}
                                        </li>
                                    </ul>
                                </c:forEach>
                            </td>
                            <td class="table__row_btn" style="border: none;">
                                <div class="dropdown">
                                    <button class="dropbtn">Add driver</button>
                                    <div id="${car.id}" class="dropdown-content">
                                        <input type="text" placeholder="Search.." id="myInput">
                                        <c:forEach items="${drivers}" var="driver">
                                            <a href="${pageContext.request.contextPath}/cars/drivers/add?driver_id=${driver.id}&car_id=${car.id}">
                                                    ${driver.name} ${driver.licenseNumber}
                                            </a>
                                        </c:forEach>
                                    </div>
                                </div>
                                <div class="table__delete">
                                    <a class="btn"
                                       href="${pageContext.request.contextPath}/drivers/delete?id=${driver.id}">Delete</a>
                                </div>
                            </td>
                        </tr>
                    </c:forEach>
                </table>
            </div>
            <div class="all_items__group-control">
                <a class="btn all_items__btn" href="${pageContext.request.contextPath}/cars/add">
                    add new car
                </a>
            </div>
        </div>
    </div>
</main>
<script>
    const dropdownBtn = document.querySelectorAll(".dropbtn");

    dropdownBtn.forEach((btn, i) => {
        btn.addEventListener("click", (e) => {
            const content = e.target.nextElementSibling;

            if (!content.style.display) {
                content.style.display = "block";
            } else {
                content.style.display = "";
            }
        });

        const parent = btn.offsetParent;
        const input = parent.querySelector('input');
        const allLinks = parent.querySelectorAll('a');

        input.addEventListener('keyup', (e) => {
            const searchText = e.target.value.toUpperCase();

            allLinks.forEach((link, i) => {
                const linkText = link.textContent.toUpperCase();

                if (linkText.includes(searchText)) {
                    link.style.display = 'block';
                } else {
                    link.style.display = 'none';
                }
            })
        });
    });
</script>
</body>
</html>
