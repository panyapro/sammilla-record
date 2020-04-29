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
         <div id="main-wrapper">
          <nav:navigation_new/>
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
         <nav:footer/>
         </div>

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