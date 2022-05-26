<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<header class="header">
    <nav class="header__nav">
        <a href="${pageContext.request.contextPath}/index" class="header__logo">
<%--            <div class="header__logo-icon icon"></div>--%>
            <ul class="header__nav-list">
                <li class="header__nav-item">
                    <a href="${pageContext.request.contextPath}/index">
                        <span class="hero__title_left">Mate</span>Taxi
                    </a>
                </li>
                <li class="header__nav-item">
                    <a class="header__nav-link" href="${pageContext.request.contextPath}/cars">
                        Cars list
                    </a>
                </li>
                <li class="header__nav-item">
                    <a class="header__nav-link" href="${pageContext.request.contextPath}/drivers/cars">
                        My cars
                    </a>
                </li>
                <li class="header__nav-item">
                    <a class="header__nav-link" href="${pageContext.request.contextPath}/drivers">
                        Drivers list
                    </a>
                </li>
                <li class="header__nav-item">
                    <a class="header__nav-link" href="${pageContext.request.contextPath}/manufacturers">
                        Manufacturers list
                    </a>
                </li>
            </ul>
            </a>
    </nav>
    <a href="${pageContext.request.contextPath}/logout" class="header__logout">
        <span class="header__logout-label">Logout</span>
    </a>
</header>
