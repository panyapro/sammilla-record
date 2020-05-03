<%@ tag pageEncoding="UTF-8"%>
<%@ taglib prefix="tags" tagdir="/WEB-INF/tags" %>
<tags:scripts/>
               <div class="nav-header">
                   <div class="brand-logo">
                       <a href="/dashboard">
                           <b class="logo-abbr"><img src="/img/logo.png" alt=""> </b>
                           <span class="logo-compact"><img src=".//img/logo-compact.png" alt=""></span>
                           <span class="brand-title">
                               <img src="/img/logo-text_old.png" alt="">
                           </span>
                       </a>
                   </div>
               </div>
               <div class="header">
                   <div class="header-content clearfix">

                       <div class="nav-control">
                           <div class="hamburger">
                               <span class="toggle-icon"><i class="icon-menu"></i></span>
                           </div>
                       </div>
                   </div>
               </div>
               <div class="nk-sidebar">
                   <div class="nk-nav-scroll">
                       <ul class="metismenu" id="menu">
                           <li>
                               <a class="has-arrow" href="javascript:void()" aria-expanded="false">
                                   <i class="icon-basket menu-icon"></i><span class="nav-text">Заказы</span>
                               </a>
                           </li>
                           <li>
                               <a class="has-arrow" href="javascript:void()" aria-expanded="false">
                                   <i class="icon-present menu-icon"></i><span class="nav-text">Продукты</span>
                               </a>
                               <ul aria-expanded="false">
                                    <li><a href="/products">Все продукты</a></li>
                                    <li><a href="/products/create">Создать</a></li>
                                    <li><a href="/categories/create">Создать категорию</a></li>
                               </ul>
                           </li>
                           <li class="mega-menu mega-menu-sm">
                               <a class="has-arrow" href="javascript:void()" aria-expanded="false">
                                   <i class="icon-user menu-icon"></i><span class="nav-text">Клиенты</span>
                               </a>
                               <ul aria-expanded="false">
                                   <li><a href="/users">Все клиенты</a></li>
                                   <li><a href="/users/create">Создать клиента</a></li>
                               </ul>
                           </li>
                       </ul>
                   </div>
                 </div>