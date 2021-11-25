<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <!-- Required meta tags-->
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="au theme template">
    <meta name="author" content="Hau Nguyen">
    <meta name="keywords" content="au theme template">

    <!-- Title Page-->
    <title>Dashboard</title>

    <!-- Fontfaces CSS-->
    <link href="<c:url value='/resources/vendor1/css/font-face.css'/>" rel="stylesheet" media="all">
    <link href="<c:url value='resources/vendor1/font-awesome-5/css/fontawesome-all.min.css'/>/" rel="stylesheet" media="all">
    <link href="<c:url value='/resources/vendor1/mdi-font/css/material-design-iconic-font.min.css'/>" rel="stylesheet" media="all">

    <!-- Bootstrap CSS-->
    <link href="<c:url value='/resources/vendor1/bootstrap-4.1/bootstrap.min.css'/>" rel="stylesheet" media="all">
	<link href="<c:url value='/resources/vendor1/css/theme.css'/>" rel="stylesheet" media="all">

 

</head>

<body class="animsition">
    <div class="page-wrapper">
        <!-- HEADER MOBILE-->
        <header class="header-mobile d-block d-lg-none">
            <div class="header-mobile__bar">
                <div class="container-fluid">
                    <div class="header-mobile-inner">
                        <a class="logo" href="index.html">
                            <img src="vendor1/images/icon/logo.png" alt="CoolAdmin" />
                        </a>
                        <button class="hamburger hamburger--slider" type="button">
                            <span class="hamburger-box">
                                <span class="hamburger-inner"></span>
                            </span>
                        </button>
                    </div>
                </div>
            </div>
           
        </header>
        <!-- END HEADER MOBILE-->

        <!-- MENU SIDEBAR-->
        <aside class="menu-sidebar d-none d-lg-block">
            <div class="logo">
                <a href="#">
                    <img src="vendor1/images/icon/logo.png" alt="Cool Admin" />
                </a>
            </div>
            <div class="menu-sidebar__content js-scrollbar1">
                <nav class="navbar-sidebar">
                    <ul class="list-unstyled navbar__list">
                        <li class="active has-sub">
                            <a class="js-arrow" href="statistics.htm">

                                <i class="fas fa-tachometer-alt"></i>Thống kê</a>
                      

                        </li>
                       
                       <li class="active has-sub">
                            <a class="js-arrow" href="contact.htm">

                                <i class="fas fa-tachometer-alt"></i>Liên hệ</a>
                      

                        </li>
                        
                        <li class="active has-sub">
                            <a class="js-arrow" href="users.htm">

                                <i class="fas fa-tachometer-alt"></i>Tài khoản</a>
                      

                        </li>
                        
                        <li class="active has-sub">
                            <a class="js-arrow" href="product.htm">

                                <i class="fas fa-tachometer-alt"></i>Sản phẩm</a>
                      

                        </li>
                              
                        

                    </ul>
                </nav>
            </div>
        </aside>
        <!-- END MENU SIDEBAR-->

        <!-- PAGE CONTAINER-->
        <div class="page-container">
            <!-- HEADER DESKTOP-->

            <!-- HEADER DESKTOP-->

            <!-- MAIN CONTENT-->
            <div class="main-content" style="padding-top: 50px;">
                <div class="section__content section__content--p30">
                    <div class="container-fluid">
                        <div class="row ">
                            <div class="col-lg-12">
                                <h1 class="">Thống Kê </h1>
                            </div>
                        </div>
                        <div class="row m-t-25">
                            <div class="col-sm-6 col-lg-4">
                                <div class="overview-item overview-item--c1">
                                    <div class="overview__inner">
                                        <div class="overview-box clearfix">
                                            <div class="icon">
                                                <i class="zmdi zmdi-account-o"></i>
                                            </div>
                                            <div class="text">
                                                <h2>${userQuantity }</h2>
                                                <span>members </span>
                                            </div>
                                        </div>
                                        <div class="overview-chart">
                                            <canvas id="widgetChart1"></canvas>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-6 col-lg-4">
                                <div class="overview-item overview-item--c2">
                                    <div class="overview__inner">
                                        <div class="overview-box clearfix">
                                            <div class="icon">
                                                <i class="zmdi zmdi-shopping-cart"></i>
                                            </div>
                                            <div class="text">
                                                <h2>${totalQuantity }</h2>
                                                <span>items solid</span>
                                            </div>
                                        </div>
                                        <div class="overview-chart">
                                            <canvas id="widgetChart2"></canvas>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="col-sm-6 col-lg-4">
                                <div class="overview-item overview-item--c4">
                                    <div class="overview__inner">
                                        <div class="overview-box clearfix">
                                            <div class="icon">
                                                <i class="zmdi zmdi-money"></i>
                                            </div>
                                            <div class="text">
                                                <h2>${totalMoney }</h2>
                                                <span>total earnings</span>
                                            </div>
                                        </div>
                                        <div class="overview-chart">
                                            <canvas id="widgetChart4"></canvas>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-lg-12">
                                <h2 class="title-1 m-b-25">Earnings By Items</h2>
                                <div class="table-responsive table--no-card m-b-40">
                                    <table class="table table-borderless table-striped table-earning">
                                        <thead>
                                            <tr>
                                                <th>date</th>
                                                <th>order ID</th>
                                                <th>name</th>
                                                <th class="text-right">price</th>
                                                <th class="text-right">quantity</th>
                                                <th class="text-right">total</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                        <c:forEach var="bill" items="${billDetailEntities }">
                                            <tr>
                                                <td>${bill.pk.billEntity.date_bill }</td>
                                                <td>${bill.pk.billEntity.id_user }</td>
                                                <td>${bill.pk.productEntity.title }</td>
                                                <td class="text-right">${bill.price }</td>
                                                <td class="text-right">${bill.quantity }</td>
                                                <td class="text-right">${bill.total }</td>
                                            </tr>
                                            </c:forEach>
                                        </tbody>
                                    </table>
                                </div>
                            </div>

                        </div>

                        <div class="row">
                            <div class="col-md-12">
                                <div class="copyright">
                                    <p>Copyright © 2018 Colorlib. All rights reserved. Template by <a
                                            href="https://colorlib.com">Colorlib</a>.</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- END MAIN CONTENT-->
            <!-- END PAGE CONTAINER-->
        </div>

    </div>

    <!-- Jquery JS-->
    <script src="<c:url value='/resources/vendor1/jquery-3.2.1.min.js'/>"></script>

    <script src="<c:url value='/resources/vendor1/chartjs/Chart.bundle.min.js'/>"></script>

    <script src="<c:url value='/resources/vendor1/js/main.js'/>"></script>

</body>

</html>
<!-- end document-->