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
	<base href="${pageContext.servletContext.contextPath}/">
    <!-- Title Page-->
    <title>Admin</title>
    <link href="<c:url value='/resources/vendor1/font-awesome-5/css/fontawesome-all.min.css'/>" rel="stylesheet" media="all">
    <link href="<c:url value='/resources/vendor1/bootstrap-4.1/bootstrap.min.css'/>" rel="stylesheet" media="all">
    <link href="<c:url value='/resources/vendor1/css/theme.css'/>" rel="stylesheet" media="all">
    <link rel="stylesheet" href="<c:url value='/resources/vendor1/css/style.css'/>">
<style>
.errors {
	color: red;
	font-style: italic;
}
</style>
</head>

<body class="animsition">
    <div class="page-wrapper">
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
                                <i class="fas fa-tachometer-alt"></i>Thống kê</a>
                           
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
                       
                    </ul>
                </nav>
            </div>
        </aside>
        <!-- END MENU SIDEBAR-->

        <!-- PAGE CONTAINER-->
        <div class="page-container">
            <div class="header">
                <h2 class="header-heading">${title }</h2>
            </div>
            <div class="main-content">

                <div class="content">
                    <form:form action="admin/product.htm"  method="POST" modelAttribute="product" >
                        <div class="form-group">
                            <label for="">Tên sản phẩm</label>
                            <form:input type="text" class="" path="title"/>
                            <form:errors path="title" element="span" cssClass="errors" />
                        </div>
                        <div class="form-group">
                            <label for="">Giá</label>
                            <form:input type="text" class="" path="price"/>
                           <form:errors path="price" element="span" cssClass="errors" />
                        </div>
                        <div class="form-group">
                            <label for="">Số lượng</label>
                            <form:input type="text" class="" path="quantity"/>
                             <form:errors path="quantity" element="span" cssClass="errors" />
                        </div>

                        <div class="form-group">
                            <label for="">Hình ảnh</label>
                            <form:input type="file"  path="image" />
                            <form:errors path="image" element="span" cssClass="errors" />
                        </div>
                        <div class="form-group">
                            <label for="">Màu sắc</label>
                            <form:select path="colors.id_color" 
                            items="${colorlist}" 
                            itemLabel="name_color"
                            itemValue="id_color" >
                               </form:select>
                               
                       
                        </div> 
                         <div class="form-group">
                            <label for="">Thương hiệu</label>
                           <form:select path="brands.id_brand" items="${brandlist}"
						itemLabel="name_brand" itemValue="id_brand">

					</form:select>
                        </div>
                        
                        <div class="form-group">
                            <label for="">Mô tả</label>
                            <form:textarea path="descr" type="text" class=""/>
                            <form:errors path="descr" element="span" cssClass="errors" />
                        </div> 
                        <div class="button" name="button">
                            <button type="submit" name="${btnStatus}" >Lưu sản phẩm</button>
                           <span class="errors">${ message123 }</span>
                        </div>
                    </form:form>
                </div>
                <div class="product">
                    <table>
                        <thead>
                            <tr>
                                <th>
                                   Hình ảnh
                                </th>
                                <th>Tên sản phẩm</th>
                                <th>Giá</th>
                                <th>Màu sắc</th>
                                <th>Thương hiệu</th>
                                <th>Số lượng</th>
                                <th></th>

                            </tr>
                        </thead>

                        <tbody>
                        <c:forEach  var="pd2" items="${products}">
                            <tr>
                                <td>
                                    <div class="picture">
                                        <img src="<c:url value='/resources/assets/images/${pd2.image}'/>" alt="">
                                    </div>
                                </td>
                                <td>${pd2.title }</td>
                                <td>${pd2.price }</td>
                                <td>${pd2.colors.name_color }</td>
                                <td>${pd2.brands.name_brand }</td>
                                <td>${pd2.quantity }</td>
                                <td><a href="admin/product/${pd2.id_product }.htm?update" class="button1"><i class="fas fa-edit"></i></a> <a  href="admin/product/${pd2.id_product }.htm?delete" class="button1"><i class="fas fa-trash-alt"></i></a></td>
                            </tr>
                               </c:forEach>
                        </tbody>
                    </table>
                </div>
                
            </div>


        </div>
    </div>



    <!-- Jquery JS-->
    <script src="<c:url value='resources/vendor1/jquery-3.2.1.min.js'/>/"></script>
    <script src="<c:url value='/resources/vendor1/bootstrap-4.1/popper.min.js'/>"></script>
    <script src="<c:url value='/resources/vendor1/animsition/animsition.min.js'/>"></script>
    <script src="<c:url value='/resources/vendor1/js/main.js'/>"></script>
</body>

</html>
<!-- end document-->