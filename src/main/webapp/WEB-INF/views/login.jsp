<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<style>
    <%@include file='/WEB-INF/views/css/styles.css' %>
</style>
<html>
<head>
    <title>Login</title>
</head>
<body>
<div class="add-form">
    <div class="container add-mytbl__container">
        <h1 class="add-form__heading">Login</h1>
        <form id="login"
              class="form add-mytbl__form"
              method="post"
              action="${pageContext.request.contextPath}/login"
        >
            <fieldset class="form__group">
                <label class="form__label" for="login">
                    Login:
                </label>
                <input placeholder="Enter login"
                        class="form__input"
                        id="model"
                        type="text"
                        name="login"
                        required
                />
            </fieldset>
            <fieldset class="form__group">
                <label class="form__label" for="password">
                    Password:
                </label>
                <input placeholder="Enter password"
                        class="form__input"
                        id="password"
                        type="password"
                        name="password"
                        required
                />
            </fieldset>
            <h6 style="color: #e25544">${errorMsg}</h6>
            <button class="btn form__btn" type="submit">Login</button>
        </form>
    </div>
</div>
</body>
</html>
