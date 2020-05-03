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
<nav:navigation_new/>
<div class="content-body">
    <div class="container-fluid">
        <div class="row justify-content-center">
            <div class="col-lg-12">
                <div class="card">
                    <div class="card-body">
                        <h4 class="card-title">Редактирование пользователя - ${user.phoneNumber}</h4>
                            <div class="form-validation">
                                <form class="form-valide" action="/users/edit/%{user.id}" method="post">
                                    <input type="hidden" value="${product.id}" name="id"/>
                                    <div class="form-group row">
                                        <label class="col-lg-4 col-form-label" for="name">Имя<span class="text-danger">*</span>
                                        </label>
                                        <div class="col-lg-6">
                                            <input type="text" class="form-control" id="name" name="name" placeholder="Введите имя..." value="${user.name}">
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label class="col-lg-4 col-form-label" for="phoneNumber">Номер телефона<span class="text-danger">*</span>
                                        </label>
                                        <div class="col-lg-6">
                                            <input type="text" class="form-control" id="phoneNumber" name="phoneNumber" placeholder="Введите номер телефона.." value="${user.phoneNumber}">
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label class="col-lg-4 col-form-label" for="comment">Комментарий<span class="text-danger">*</span>
                                        </label>
                                        <div class="col-lg-6">
                                            <input type="text" class="form-control" id="comment" name="comment" placeholder="Введите комментарий.." value="${user.comment}">
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <div class="col-lg-8 ml-auto">
                                            <button type="submit" class="btn btn-primary" style="margin-top: 10px"
                                                    onclick="$('#code').prop('disabled', false);">Редактировать
                                            </button>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        <h4 class="card-title">Заказы пользователя</h4>
                        <table class="table">
                            <thead>
                            <tr>
                                <th>#</th>
                                <th>Name</th>
                                <th>Price</th>
                                <th>Category</th>
                            </tr>
                            </thead>
                            <tbody>
                            <c:forEach var="order" items="${user.orders}">
                                <tr>
                                    <th>${loop.index + 1}</th>
                                    <td>${order.product.name}</td>
                                    <td>${order.price}</td>
                                    <td>${order.product.category.name}</td>
                                </tr>
                            </c:forEach>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

</body>

</html>