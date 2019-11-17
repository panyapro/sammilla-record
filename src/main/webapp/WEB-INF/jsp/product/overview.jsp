<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="nav" tagdir="/WEB-INF/tags" %>

<html>

<head>

    <link href="/css/bootstrap.min.css" rel="stylesheet"/>
    <link href="/css/bootstrap-theme.min.css" rel="stylesheet"/>
    <link href="/css/custom.css" rel="stylesheet"/>
    <link href="/css/plugins/pg-calendar/css/pignose.calendar.min.css" rel="stylesheet"/>
    <link rel="stylesheet" href="/css/plugins/chartist/css/chartist.min.css"/>
    <link rel="stylesheet" href="/css/plugins/chartist-plugin-tooltips/css/chartist-plugin-tooltip.css"/>
    <link href="/css/style.css" rel="stylesheet">
    <script type="text/javascript" src="/js/jquery.min.js"></script>
    <script type="text/javascript" src="/js/jquery-ui.min.js"></script>
    <script type="text/javascript" src="/js/bootstrap.min.js"></script>

</head>

<body>
<div class="container theme-showcase">
<div class="table-responsive">
  <table class="table table-hover">
    <thead>
      <tr>
        <th>#</th>
        <th>Name</th>
        <th>Phone</th>
        <th>Date</th>
        <th>Comment</th>
      </tr>
    </thead>
    <tbody>
      <c:forEach var="product" items="${products}" varStatus="loop">
      <tr>
        <th>${loop.index + 1}</th>
        <td>${product.name}</td>
        <td>${product.phoneNumber}</td>
        <td>-</td>
        <td>${product.comment}</td>
      </tr>
    </c:forEach>
  </tbody>
</table>
</div>
</div>

</body>

</html>