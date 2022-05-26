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
<div class="add-form">
    <div class="container add-mytbl__container">
        <h1 class="add-form__heading">Add drivers</h1>
        <form id="driver"
              class="form add-mytbl__form"
              method="post"
              action="${pageContext.request.contextPath}/drivers/add"
        >
            <fieldset class="form__group">
                <label class="form__label" for="name">
                    Name:
                </label>
                <input placeholder="Enter name"
                       class="form__input"
                       id="name"
                       type="text"
                       name="name"
                       form="driver"
                       required
                />
            </fieldset>
            <fieldset class="form__group">
                <label class="form__label" for="license_number">
                    License Number:
                </label>
                <input placeholder="Enter license number"
                       class="form__input"
                       id="license_number"
                       type="text"
                       name="license_number"
                       form="driver"
                       required
                />
            </fieldset>
            <fieldset class="form__group">
                <label class="form__label" for="login">
                    Login:
                </label>
                <input placeholder="Enter login"
                       class="form__input"
                       id="login"
                       type="text"
                       name="login"
                       form="driver"
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
                       type="text"
                       name="password"
                       form="driver"
                       required
                />
            </fieldset>
            <button class="btn form__btn" type="submit" form="driver">Add</button>
        </form>
    </div>
</div>
</body>
</html>
