<%@ tag pageEncoding="UTF-8"%>
<%@ taglib prefix="lib" tagdir="/WEB-INF/tags" %>
<nav class="navbar navbar-inverse navbar-fixed-tope">
    <div class="container">
        <div class="navbar-header">
            <a class="navbar-brand" href="/sammilla/product">Sammilla.kz</a>
        </div>
        <div id="navbar" class="collapse navbar-collapse">
            <ul class="nav navbar-nav">
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"
                       aria-expanded="false">
                        Продукты
                        <span class="caret"></span>
                    </a>
                    <ul class="dropdown-menu">
                        <li>
                            <a href="/products">Все продукты</a>
                            <a href="/products/create">Создать продукт</a>
                            <a href="/products/category/create">Создать категорию</a>
                        </li>
                    </ul>
                </li>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"
                       aria-expanded="false">
                        Продажи
                        <span class="caret"></span>
                    </a>
                    <ul class="dropdown-menu">
                        <li>
                            <a href="/sammilla/sale">Просмотр продаж</a>
                            <a href="/sammilla/sale/create">Создать продажу</a>
                        </li>
                    </ul>
                </li>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"
                       aria-expanded="false">
                        Ревизия
                        <span class="caret"></span>
                    </a>
                    <ul class="dropdown-menu">
                        <li>
                            <a href="/sammilla/revision">Просмотр ревизий</a>
                            <a href="/sammilla/revision/create">Создать ревизию</a>
                        </li>
                    </ul>
                </li>
            </ul>
        </div>
    </div>
</nav>