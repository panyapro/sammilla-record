       <%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
       <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
       <%@ page contentType="text/html; charset=UTF-8" %>
       <%@ taglib prefix="nav" tagdir="/WEB-INF/tags" %>

       <html>

       <head>

           <link href="/css/bootstrap.min.css" rel="stylesheet"/>
           <link href="/css/plugins/pg-calendar/css/pignose.calendar.min.css" rel="stylesheet"/>
           <link rel="stylesheet" href="/css/plugins/chartist/css/chartist.min.css"/>
           <link rel="stylesheet" href="/css/plugins/chartist-plugin-tooltips/css/chartist-plugin-tooltip.css"/>
           <link href="/css/style.css" rel="stylesheet">
       </head>

       <body>
           <!--**********************************
               Main wrapper start
           ***********************************-->
           <div id="main-wrapper">

               <!--**********************************
                   Nav header start
               ***********************************-->
               <div class="nav-header">
                   <div class="brand-logo">
                       <a href="index.html">
                           <b class="logo-abbr"><img src="/img/logo.png" alt=""> </b>
                           <span class="logo-compact"><img src=".//img/logo-compact.png" alt=""></span>
                           <span class="brand-title">
                               <img src="/img/logo-text.png" alt="">
                           </span>
                       </a>
                   </div>
               </div>
               <!--**********************************
                   Nav header end
               ***********************************-->

               <!--**********************************
                   Header start
               ***********************************-->
               <div class="header">
                   <div class="header-content clearfix">

                       <div class="nav-control">
                           <div class="hamburger">
                               <span class="toggle-icon"><i class="icon-menu"></i></span>
                           </div>
                       </div>
                   </div>
               </div>
               <!--**********************************
                   Header end ti-comment-alt
               ***********************************-->

               <!--**********************************
                   Sidebar start
               ***********************************-->
               <div class="nk-sidebar">
                   <div class="nk-nav-scroll">
                       <ul class="metismenu" id="menu">
                           <li>
                               <a class="has-arrow" href="javascript:void()" aria-expanded="false">
                                   <i class="icon-graph menu-icon"></i><span class="nav-text">Dashboard</span>
                               </a>
                           </li>
                           <li>
                               <a class="has-arrow" href="javascript:void()" aria-expanded="false">
                                   <i class="icon-basket menu-icon"></i><span class="nav-text">Orders</span>
                               </a>
                           </li>
                           <li>
                               <a class="has-arrow" href="javascript:void()" aria-expanded="false">
                                   <i class="icon-present menu-icon"></i><span class="nav-text">Products</span>
                               </a>
                           </li>
                           <li class="mega-menu mega-menu-sm">
                               <a class="has-arrow" href="javascript:void()" aria-expanded="false">
                                   <i class="icon-user menu-icon"></i><span class="nav-text">Users</span>
                               </a>
                               <ul aria-expanded="false">
                                   <li><a href="./layout-blank.html">Overview</a></li>
                                   <li><a href="./layout-one-column.html">Create</a></li>
                               </ul>
                           </li>
                       </ul>
                   </div>
               </div>
               <!--**********************************
                   Sidebar end
               ***********************************-->
               <div class="content-body">

                           <div class="container-fluid mt-3">
                               <div class="row">
                                   <div class="col-lg-3 col-sm-6">
                                       <div class="card gradient-1">
                                           <div class="card-body">
                                               <h3 class="card-title text-white">Products Sold</h3>
                                               <div class="d-inline-block">
                                                   <h2 class="text-white">4565</h2>
                                                   <p class="text-white mb-0">Jan - March 2019</p>
                                               </div>
                                               <span class="float-right display-5 opacity-5"><i class="fa fa-shopping-cart"></i></span>
                                           </div>
                                       </div>
                                   </div>
                                   </div>
                                    </div>
       <!--**********************************
                   Footer start
               ***********************************-->
               <div class="footer">
                   <div class="copyright">
                       <p>Sammilla since 2015</p>
                   </div>
               </div>
               <!--**********************************
                   Footer end
               ***********************************-->
           </div>
           <!--**********************************
               Main wrapper end
           ***********************************-->

           <!--**********************************
               Scripts
           ***********************************-->
                <script src="/js/plugins/common/common.min.js"></script>
                <script src="/js/custom.min.js"></script>
                <script src="/js/settings.js"></script>
                <script src="/js/gleek.js"></script>
                <script src="/js/styleSwitcher.js"></script>

                <!-- Chartjs -->
                <script src="/js//plugins/chart.js/Chart.bundle.min.js"></script>
                <!-- Circle progress -->
                <script src="/js//plugins/circle-progress/circle-progress.min.js"></script>
                <!-- Datamap -->
                <script src="/js//plugins/d3v3/index.js"></script>
                <script src="/js//plugins/topojson/topojson.min.js"></script>
                <script src="/js//plugins/datamaps/datamaps.world.min.js"></script>
                <!-- Morrisjs -->
                <script src="/js//plugins/raphael/raphael.min.js"></script>
                <script src="/js//plugins/morris/morris.min.js"></script>
                <!-- Pignose Calender -->
                <script src="/js//plugins/moment/moment.min.js"></script>
                <script src="/js//plugins/pg-calendar/js/pignose.calendar.min.js"></script>
                <!-- ChartistJS -->
                <script src="/js//plugins/chartist/js/chartist.min.js"></script>
                <script src="/js//plugins/chartist-plugin-tooltips/js/chartist-plugin-tooltip.min.js"></script>



                <script src="/js/dashboard/dashboard-1.js"></script>

       </body>

       </html>