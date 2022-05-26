<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<style>
    <%@include file='/WEB-INF/views/css/styles.css' %>
</style>
<html>
<head>
    <title>All car</title>
</head>
<body>
<%@include file="/WEB-INF/views/header.jsp"%>
<div class="add-form">
    <div class="container add-mytbl__container">
        <h1 class="add-form__heading">Add car</h1>
        <form id="car"
              class="form add-mytbl__form"
              method="post"
              action="${pageContext.request.contextPath}/cars/add"
        >
            <fieldset class="form__group">
                <label class="form__label" for="model">
                    Model:
                </label>
                <input placeholder="Enter model"
                       class="form__input"
                       id="model"
                       type="text"
                       name="model"
                       form="car"
                       required
                />
            </fieldset>
            <fieldset class="form__group">
                <label class="form__label" for="manufacturer_id">
                    Manufacturer id:
                </label>
                <input placeholder="Enter country"
                       class="form__input"
                       id="manufacturer_id"
                       type="text"
                       name="manufacturer_id"
                       form="car"
                       required
                />
            </fieldset>
            <button class="btn form__btn" type="submit" form="car">Add</button>
        </form>
    </div>
</div>
</body>
</html>
