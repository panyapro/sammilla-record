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
            Все продукты
         </div>
         <div class="table-responsive">
         <table class="table">
         <thead>
          <tr>
            <th>#</th>
            <th>Name</th>
            <th>Price</th>
            <th>Comment</th>
            <th>Category</th>
            <th>Edit</th>
          </tr>
        </thead>
        <tbody>
          <c:forEach var="product" items="${products}" varStatus="loop">
          <tr>
            <th>${loop.index + 1}</th>
            <td>${product.name}</td>
            <td>${product.price}</td>
            <td>-</td>
            <td>${product.category.name}</td>
            <td><a id="edit" class="btn btn-info btn-rounded"
                href="/products/edit/${product.id}">Редактировать</a>
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