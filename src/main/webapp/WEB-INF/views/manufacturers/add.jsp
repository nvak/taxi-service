<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<style>
    <%@include file='/WEB-INF/views/css/styles.css' %>
</style>
<html>
<head>
    <title>Manufacturers</title>
</head>
<body>
<%@include file="/WEB-INF/views/header.jsp"%>
<div class="add-form">
    <div class="container add-mytbl__container">
        <h1 class="add-form__heading">Add manufacturer</h1>
        <form id="manufacturer"
              class="form add-mytbl__form"
              method="post"
              action="${pageContext.request.contextPath}/manufacturers/add"
        >
            <fieldset class="form__group">
                <label class="form__label" for="name">
                    Name:
                </label>
                <input placeholder="Enter manufacturer"
                       class="form__input"
                       id="name"
                       type="text"
                       name="name"
                       form="manufacturer"
                       required
                />
            </fieldset>
            <fieldset class="form__group">
                <label class="form__label" for="country">
                    Country:
                </label>
                <input placeholder="Enter country"
                       class="form__input"
                       id="country"
                       type="text"
                       name="country"
                       form="manufacturer"
                       required
                />
            </fieldset>
            <button class="btn form__btn" type="submit" form="manufacturer">Add</button>
        </form>
    </div>
</div>
</body>
</html>
