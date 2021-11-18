<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <!-- Required meta tags-->
    <!-- <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="au theme template">
    <meta name="keywords" content="au theme template"> -->

    <!-- Title Page-->
    <title>Manage Users</title>
    <base href="${pageContext.servletContext.contextPath}/">

    <!-- Fontfaces CSS-->
    <!-- <link href="vendor1/css/font-face.css" rel="stylesheet" media="all">
    <link href="vendor1/font-awesome-4.7/css/font-awesome.min.css" rel="stylesheet" media="all">
    <link href="vendor1/font-awesome-5/css/fontawesome-all.min.css" rel="stylesheet" media="all">
    <link href="vendor1/mdi-font/css/material-design-iconic-font.min.css" rel="stylesheet" media="all">
     -->
    <link href="<c:url value='/resources/vendor1/css/font-face.css' />" rel="stylesheet" media="all">
    <link href="<c:url value='/resources/vendor1/font-awesome-4.7/css/font-awesome.min.css' />" rel="stylesheet" media="all">
    <link href="<c:url value='/resources/vendor1/font-awesome-5/css/fontawesome-all.min.css' />" rel="stylesheet" media="all">
    <link href="<c:url value='/resources/vendor1/mdi-font/css/material-design-iconic-font.min.css' />" rel="stylesheet" >
    

    <!-- Bootstrap CSS-->
   <!--  <link href="vendor1/bootstrap-4.1/bootstrap.min.css" rel="stylesheet" media="all"> -->
    <link href="<c:url value='/resources/vendor1/bootstrap-4.1/bootstrap.min.css' />" rel="stylesheet" media="all">

    <!-- vendor1 CSS-->
    <!-- <link href="vendor1/animsition/animsition.min.css" rel="stylesheet" media="all">
    <link href="vendor1/bootstrap-progressbar/bootstrap-progressbar-3.3.4.min.css" rel="stylesheet" media="all">
    <link href="vendor1/wow/animate.css" rel="stylesheet" media="all">
    <link href="vendor1/css-hamburgers/hamburgers.min.css" rel="stylesheet" media="all">
    <link href="vendor1/slick/slick.css" rel="stylesheet" media="all">
    <link href="vendor1/select2/select2.min.css" rel="stylesheet" media="all">
    <link href="vendor1/perfect-scrollbar/perfect-scrollbar.css" rel="stylesheet" media="all">
     -->
    <link href="<c:url value='/resources/vendor1/animsition/animsition.min.css' />" rel="stylesheet" media="all">
    <link href="<c:url value='/resources/vendor1/bootstrap-progressbar/bootstrap-progressbar-3.3.4.min.css' />" rel="stylesheet" media="all">
    <link href="<c:url value='/resources/vendor1/wow/animate.css' />" rel="stylesheet" media="all">
    <link href="<c:url value='/resources/vendor1/css-hamburgers/hamburgers.min.css' />" rel="stylesheet" media="all">
    <link href="<c:url value='/resources/vendor1/slick/slick.css' />" rel="stylesheet" media="all">
    <link href="<c:url value='/resources/vendor1/select2/select2.min.css' />" rel="stylesheet" media="all">
    <link href="<c:url value='/resources/vendor1/perfect-scrollbar/perfect-scrollbar.css' />" rel="stylesheet" media="all">

    <!-- Main CSS-->
    <!-- <link href="vendor1/css/theme.css" rel="stylesheet" media="all">
    <link rel="stylesheet" href="vendor1/css/style-qa.css"> -->
    
    <link href="<c:url value='/resources/vendor1/css/theme.css' />" rel="stylesheet" media="all">
    <link href="<c:url value='/resources/vendor1/css/style-qa.css' />" rel="stylesheet" media="all">

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
            <nav class="navbar-mobile">
                <div class="container-fluid">
                    <ul class="navbar-mobile__list list-unstyled">
                        <li class="has-sub">
                            <a class="js-arrow" href="#">
                                <i class="fas fa-tachometer-alt"></i>Dashboard</a>
                            <ul class="navbar-mobile-sub__list list-unstyled js-sub-list">
                                <li>
                                    <a href="index.html">Dashboard 1</a>
                                </li>
                                <li>
                                    <a href="index2.html">Dashboard 2</a>
                                </li>
                                <li>
                                    <a href="index3.html">Dashboard 3</a>
                                </li>
                                <li>
                                    <a href="index4.html">Dashboard 4</a>
                                </li>
                            </ul>
                        </li>
                        <li>
                            <a href="chart.html">
                                <i class="fas fa-chart-bar"></i>Charts</a>
                        </li>
                        <li>
                            <a href="table.html">
                                <i class="fas fa-table"></i>Tables</a>
                        </li>
                        <li>
                            <a href="form.html">
                                <i class="far fa-check-square"></i>Forms</a>
                        </li>
                        <li>
                            <a href="calendar.html">
                                <i class="fas fa-calendar-alt"></i>Calendar</a>
                        </li>
                        <li>
                            <a href="map.html">
                                <i class="fas fa-map-marker-alt"></i>Maps</a>
                        </li>
                        <li class="has-sub">
                            <a class="js-arrow" href="#">
                                <i class="fas fa-copy"></i>Pages</a>
                            <ul class="navbar-mobile-sub__list list-unstyled js-sub-list">
                                <li>
                                    <a href="login.html">Login</a>
                                </li>
                                <li>
                                    <a href="register.html">Register</a>
                                </li>
                                <li>
                                    <a href="forget-pass.html">Forget Password</a>
                                </li>
                            </ul>
                        </li>
                        <li class="has-sub">
                            <a class="js-arrow" href="#">
                                <i class="fas fa-desktop"></i>UI Elements</a>
                            <ul class="navbar-mobile-sub__list list-unstyled js-sub-list">
                                <li>
                                    <a href="button.html">Button</a>
                                </li>
                                <li>
                                    <a href="badge.html">Badges</a>
                                </li>
                                <li>
                                    <a href="tab.html">Tabs</a>
                                </li>
                                <li>
                                    <a href="card.html">Cards</a>
                                </li>
                                <li>
                                    <a href="alert.html">Alerts</a>
                                </li>
                                <li>
                                    <a href="progress-bar.html">Progress Bars</a>
                                </li>
                                <li>
                                    <a href="modal.html">Modals</a>
                                </li>
                                <li>
                                    <a href="switch.html">Switchs</a>
                                </li>
                                <li>
                                    <a href="grid.html">Grids</a>
                                </li>
                                <li>
                                    <a href="fontawesome.html">Fontawesome Icon</a>
                                </li>
                                <li>
                                    <a href="typo.html">Typography</a>
                                </li>
                            </ul>
                        </li>
                    </ul>
                </div>
            </nav>
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
                            <a class="js-arrow" href="#">
                                <i class="fas fa-tachometer-alt"></i>Dashboard</a>
                            <ul class="list-unstyled navbar__sub-list js-sub-list">
                                <li>
                                    <a href="index.html">Dashboard 1</a>
                                </li>
                                <li>
                                    <a href="index2.html">Dashboard 2</a>
                                </li>
                                <li>
                                    <a href="index3.html">Dashboard 3</a>
                                </li>
                                <li>
                                    <a href="index4.html">Dashboard 4</a>
                                </li>
                            </ul>
                        </li>
                        <li>
                            <a href="chart.html">
                                <i class="fas fa-chart-bar"></i>Charts</a>
                        </li>
                        <li>
                            <a href="table.html">
                                <i class="fas fa-table"></i>Tables</a>
                        </li>
                        <li>
                            <a href="form.html">
                                <i class="far fa-check-square"></i>Forms</a>
                        </li>
                        <li>
                            <a href="calendar.html">
                                <i class="fas fa-calendar-alt"></i>Calendar</a>
                        </li>
                        <li>
                            <a href="map.html">
                                <i class="fas fa-map-marker-alt"></i>Maps</a>
                        </li>
                        <li class="has-sub">
                            <a class="js-arrow" href="#">
                                <i class="fas fa-copy"></i>Pages</a>
                            <ul class="list-unstyled navbar__sub-list js-sub-list">
                                <li>
                                    <a href="login.html">Login</a>
                                </li>
                                <li>
                                    <a href="register.html">Register</a>
                                </li>
                                <li>
                                    <a href="forget-pass.html">Forget Password</a>
                                </li>
                            </ul>
                        </li>
                        <li class="has-sub">
                            <a class="js-arrow" href="#">
                                <i class="fas fa-desktop"></i>UI Elements</a>
                            <ul class="list-unstyled navbar__sub-list js-sub-list">
                                <li>
                                    <a href="button.html">Button</a>
                                </li>
                                <li>
                                    <a href="badge.html">Badges</a>
                                </li>
                                <li>
                                    <a href="tab.html">Tabs</a>
                                </li>
                                <li>
                                    <a href="card.html">Cards</a>
                                </li>
                                <li>
                                    <a href="alert.html">Alerts</a>
                                </li>
                                <li>
                                    <a href="progress-bar.html">Progress Bars</a>
                                </li>
                                <li>
                                    <a href="modal.html">Modals</a>
                                </li>
                                <li>
                                    <a href="switch.html">Switchs</a>
                                </li>
                                <li>
                                    <a href="grid.html">Grids</a>
                                </li>
                                <li>
                                    <a href="fontawesome.html">Fontawesome Icon</a>
                                </li>
                                <li>
                                    <a href="typo.html">Typography</a>
                                </li>
                            </ul>
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
            <div class="main-content">
                <h3>Users</h3>
                <div class="content-top">
                    <h4>All Users</h4>
                    <table class="table table-bordered">
                        <thead>
                            <tr>
                                <th style="min-width:300px">User details</th>
                                <th style="width:120px">Role</th>
                                <th style="min-width:110px;">Actions</th>
                            </tr>
                        </thead>
                        <tbody>
							<c:forEach var="users" items="${users}">
                            <tr>
                                <td>
                                    <div class="user_avatar_list d-none d-none d-lg-block">
                                    <img src="<c:url value='/resources/vendor1/images/avatar_small.png' />" alt="">
                                        </div>
                                    <h4>${users.name }</h4>
                                    <p>${users.email }</p>
                                    <p>Địa chỉ : ${users.address_customer }</p>
                                </td>

                                <td>${users.roles.role }</td>


                                <td>
                                
                                    <a href="admin/users/${users.id_user }.htm?delete" class="btn btn-danger btn-sm btn-block mt-2"><i
                                            class="fas fa-trash"></i> Delete</a>
                                </td>
                            </tr>
                            </c:forEach>

                            
                        </tbody>
                    </table>
                </div>
            </div>
            <!-- END MAIN CONTENT-->
            <!-- END PAGE CONTAINER-->
        </div>

    </div>

    <!-- Jquery JS-->
    <!-- <script src="vendor1/jquery-3.2.1.min.js"></script> -->
    
    <script src="<c:url value='/resources/vendor1/jquery-3.2.1.min.js' />"></script>
    <!-- Bootstrap JS-->
    <!-- <script src="vendor1/bootstrap-4.1/popper.min.js"></script>
    <script src="vendor1/bootstrap-4.1/bootstrap.min.js"></script> -->
    
    <script src="<c:url value='/resources/vendor1/bootstrap-4.1/popper.min.js' />"></script>
    <script src="<c:url value='/resources/vendor1/bootstrap-4.1/bootstrap.min.js' />"></script>
    <!-- vendor1 JS       -->
    <!-- <script src="vendor1/slick/slick.min.js"></script>
    <script src="vendor1/wow/wow.min.js"></script>
    <script src="vendor1/animsition/animsition.min.js"></script>
    <script src="vendor1/bootstrap-progressbar/bootstrap-progressbar.min.js"></script>
    <script src="vendor1/counter-up/jquery.waypoints.min.js"></script>
    <script src="vendor1/counter-up/jquery.counterup.min.js"></script> -->
   <!--  <script src="vendor1/circle-progress/circle-progress.min.js"></script>
    <script src="vendor1/perfect-scrollbar/perfect-scrollbar.js"></script>
    <script src="vendor1/chartjs/Chart.bundle.min.js"></script>
    <script src="vendor1/select2/select2.min.js"></script> -->
    
    <script src="<c:url value='/resources/vendor1/slick/slick.min.js' />"></script>
    <script src="<c:url value='/resources/vendor1/wow/wow.min.js' />"></script>
    <script src="<c:url value='/resources/vendor1/animsition/animsition.min.js' />"></script>
    <script src="<c:url value='/resources/vendor1/bootstrap-progressbar/bootstrap-progressbar.min.js' />"></script>
    <script src="<c:url value='/resources/vendor1/counter-up/jquery.waypoints.min.js' />"></script>
    <script src="<c:url value='/resources/vendor1/counter-up/jquery.counterup.min.js' />"></script>
    <script src="<c:url value='/resources/vendor1/circle-progress/circle-progress.min.js' />"></script>
    <script src="<c:url value='/resources/vendor1/perfect-scrollbar/perfect-scrollbar.js' />"></script>
    <script src="<c:url value='/resources/vendor1/chartjs/Chart.bundle.min.js' />"></script>
    <script src="<c:url value='/resources/vendor1/select2/select2.min.js' />"></script>

    <!-- Main JS-->
    <!-- <script src="vendor1/js/main.js"></script> -->
    <script src="<c:url value='/resources/vendor1/js/main.js' />"></script>

</body>

</html>