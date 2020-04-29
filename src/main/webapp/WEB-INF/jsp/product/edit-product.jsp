<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="tags" tagdir="/WEB-INF/tags" %>

<html>

<body>
<tags:navigation_new/>
    <div class="content-body">
        <div class="container-fluid">
                <div class="row justify-content-center">
                    <div class="col-lg-12">
                        <div class="card">
                            <div class="card-body">
                            <h4 class="card-title">Редактирование продукта - ${product.name}</h4>
                                <div class="form-validation">
                                    <form class="form-valide" action="/products/edit/${product.id}" method="post">
                                    <input type="hidden" value="${product.id}" name="id"/>
                                        <div class="form-group row">
                                            <label class="col-lg-4 col-form-label" for="name">Название<span class="text-danger">*</span>
                                            </label>
                                            <div class="col-lg-6">
                                                <input type="text" class="form-control" id="name" name="name" placeholder="Введите название..." value="${product.name}">
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="col-lg-4 col-form-label" for="price">Цена<span class="text-danger">*</span>
                                            </label>
                                            <div class="col-lg-6">
                                                <input type="text" class="form-control" id="price" name="price" placeholder="Введите цену.." value="${product.price}">
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="col-lg-4 col-form-label" for="category">Категория<span class="text-danger">*</span>
                                            </label>
                                            <div class="col-lg-6">
                                                <select class="form-control" id="categoryId" name="category.id">
                                                    <option value="${null}">Выберите категорию</option>
                                                    <c:forEach items="${category}" var="category">
                                                        <option value="${category.id}">${category.name}</option>
                                                    </c:forEach>
                                                </select>
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
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            </div>
<script>
    $("#name").focus();
</script>

</body>

</html>