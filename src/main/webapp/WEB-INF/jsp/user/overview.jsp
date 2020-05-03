<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="tags" tagdir="/WEB-INF/tags" %>

<html>
<body>
<tags:navigation_new/>
<div class="content-body">
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg">
                <div class="card">
                    <div class="card-body">
                        <div class="card-title">
                            Все пользователи
                        </div>
                        <div class="table-responsive">
                            <table class="table">
                                <thead>
                                <tr>
                                    <th>#</th>
                                    <th>Name</th>
                                    <th>Phone number</th>
                                    <th>Comment</th>
                                    <th>Edit</th>
                                </tr>
                                </thead>
                                <tbody>
                                <c:forEach var="user" items="${users}" varStatus="loop">
                                    <tr>
                                        <th>${loop.index + 1}</th>
                                        <td>${user.name}</td>
                                        <td>${user.phoneNumber}</td>
                                        <td>${user.comment}</td>
                                        <td><a id="edit" class="btn btn-info btn-rounded"
                                               href="/users/edit/${user.id}">Редактировать</a>
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