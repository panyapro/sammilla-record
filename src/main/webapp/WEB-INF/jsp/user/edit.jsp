<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="nav" tagdir="/WEB-INF/tags" %>
<html>

<head>

    <link href="/css/bootstrap.min.css" rel="stylesheet"/>
    <link href="/css/bootstrap-theme.min.css" rel="stylesheet"/>
    <link href="/css/custom.css" rel="stylesheet"/>
    <script type="text/javascript" src="/js/jquery.min.js"></script>
    <script type="text/javascript" src="/js/jquery-ui.min.js"></script>
    <script type="text/javascript" src="/js/bootstrap.min.js"></script>

</head>

<body>
<div class="container theme-showcase">
    <h1>Редактирование пользователя</h1>
    <nav:navigation/>
    <form action="/users/edit/%{user.id}" method="post">
        <label for="name">Имя</label>
        <input style="width: 25%" type="text" id="name" class="form-control" name="name"
            value="${user.name}">

        <label for="phoneNumber">Номер телефона</label>
        <input style="width: 25%" type="text" id="name" class="form-control" name="phoneNumber"
            value="${user.phoneNumber}">

        <label for="comment">Комментарий</label>
        <input style="width: 25%" type="text" id="name" class="form-control" name="comment"
            value="${user.comment}">

        <button type="submit" class="btn btn-default" style="margin-top: 10px">Сохранить</button>
    </form>
    <c:forEach var="order" items="${user.orders}">
        <p>${order.name}</p>
    </c:forEach>
</div>

</body>

</html>