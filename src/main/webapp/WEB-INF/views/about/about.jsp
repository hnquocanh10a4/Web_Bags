<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html>
<html lang="en">

  <head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <link href="https://fonts.googleapis.com/css?family=Roboto:100,300,400,500,700" rel="stylesheet">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.4/css/all.css"
    integrity="sha384-DyZ88mC6Up2uqS4h/KRgHuoeGwBcD4Ng9SiP4dIRy0EXTlnuz47vAwmeGwVChigm" crossorigin="anonymous">
	<base href="${pageContext.servletContext.contextPath}/">
    <title>Pixie Template - About Page</title>

    <!-- Bootstrap core CSS -->
   <link href="<c:url value='/resources/vendor/bootstrap/css/bootstrap.min.css' />" rel="stylesheet">


    <!-- Additional CSS Files -->
    <link href="<c:url value='/resources/assets/css/fontawesome.css' />" rel="stylesheet">
  	<link href="<c:url value='/resources/assets/css/tooplate-main.css' />" rel="stylesheet">
  	<link href="<c:url value='/resources/assets/css/owl.css' />" rel="stylesheet">
  	<link href="<c:url value='/resources/assets/css/new-style.css' />" rel="stylesheet">
	<link href="<c:url value='/resources/assets/css/flex-slider.css' />" rel="stylesheet">
<!--
Tooplate 2114 Pixie
https://www.tooplate.com/view/2114-pixie
-->
  </head>

  <body>
    
    <!-- Pre Header -->
    <div id="pre-header">
      <div class="container">
        <div class="row">
          <div class="col-md-12">
            <span>Suspendisse laoreet magna vel diam lobortis imperdiet</span>
          </div>
        </div>
      </div>
    </div>

    <!-- Navigation -->
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark static-top">
      <div class="container">
        <a class="navbar-brand" href="#"><img src="/resources/assets/images/header-logo.png" alt=""></a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
          <div class="wrap-all">
            <div class="nav-wrap__nav">
              <ul class="navbar-nav ml-auto">
                <li class="nav-item ">
                  <a class="nav-link" href="#">Trang chủ
                    <span class="sr-only">(current)</span>
                  </a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="products/index.htm">Sản phẩm</a>
                </li>
                <li class="nav-item active">
                  <a class="nav-link" href="about.htm">Giới thiệu</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="contact.htm">Liên hệ</a>
                </li>
              </ul>
            </div>
            <div class="cart-search-wrap">
              <div class="nav-search">
<<<<<<< HEAD
                <input type="text" class="nav-search-input" placeholder="Tìm kiếm trong Shop">
                <button class="nav-search-btn">
=======
                <form action="http://localhost:8080/Web_Bags/products/index.htm">
                <input name ="searchInput" type="text" class="nav-search-input" placeholder="Tìm kiếm trong shop">
                <button name="btnsearch" class="nav-search-btn">
>>>>>>> 8167a418a0a55e84de51f01cfa62c71483db9d22
                  <i class="fas fa-search nav-search-btn-icon"></i>
                </button>
                </form>
              </div>
  
              <div class="nav-cart">
                <i class="nav-cart-icon fas fa-shopping-cart"></i>
                <!-- no cart : nav-cart-no-cart -->
                <div class="nav-cart-has-cart">
<<<<<<< HEAD
                  <img src="https://uchimart.com/assets/images/no-cart.png" alt="no cart" class="nav-cart-no-cart-img">
                  <span class="nav-cart-no-cart-title">Chưa có sản phẩm nào </span>
                  <h3 class="nav-cart-title">Sản phẩm đã thêm</h3>
                  <ul class="nav-cart-list-item">
                    <li class="nav-cart-item">
                      <img src="https://cdn1.jolicloset.com/img4/detail4b/2020/06/196114-1/handbags-dior.jpg" alt=""
                        class="nav-cart-item-img">
                      <div class="nav-cart-item-detail">
                        <div class="nav-cart-item-head">
                          <h4 class="nav-cart-item-name">Dior Lady Dior Medium Bag</h4>
                          <div class="nav-cart-item-wrap">
                            <span class="nav-cart-item-price">21.000.000Ä</span>
                            <span class="nav-cart-item-multiple">x</span>
                            <span class="nav-cart-item-quantity">2</span>
  
                          </div>
                        </div>
                        <div class="nav-cart-item-body">
                          <span class="nav-cart-item-stock">MÃ u sáº¯c: xanh</span>
                          <span class="nav-cart-item-delete">XÃ³a</span>
                        </div>
                      </div>
                    </li>
                    <li class="nav-cart-item">
                      <img src="https://images.stockx.com/images/Dior-x-Shawn-Saddle-Bag-Blue.jpg?fit=fill&bg=FFFFFF&w=700&h=500&auto=format,compress&q=90&dpr=2&trim=color&trimcolor=ffffff&updated_at=1606317582" alt=""
                        class="nav-cart-item-img">
                      <div class="nav-cart-item-detail">
                        <div class="nav-cart-item-head">
                          <h4 class="nav-cart-item-name">Dior And Shawn Saddle</h4>
                          <div class="nav-cart-item-wrap">
                            <span class="nav-cart-item-price">99.000.000Ä</span>
                            <span class="nav-cart-item-multiple">x</span>
                            <span class="nav-cart-item-quantity">1</span>
  
                          </div>
                        </div>
                        <div class="nav-cart-item-body">
                          <span class="nav-cart-item-stock">MÃ u sáº¯c: xanh</span>
                          <span class="nav-cart-item-delete">XÃ³a</span>
=======
                <img src="https://uchimart.com/assets/images/no-cart.png" alt="no cart" class="nav-cart-no-cart-img">
                <span class="nav-cart-no-cart-title">ChÆ°a cÃ³ sáº£n pháº©m nÃ o </span>
                <h3 class="nav-cart-title">Sản phẩm đã thêm</h3>
                <ul class="nav-cart-list-item">
                  <c:forEach var="ca" items="${getCart}">
                  <li class="nav-cart-item">
                    <img src="<c:url value='/resources/assets/images/${ca.getPk().getProductEntity().getImage() }.jpg'/>" alt=""
                      class="nav-cart-item-img">
                    <div class="nav-cart-item-detail">
                      <div class="nav-cart-item-head">
                        <h4 class="nav-cart-item-name">${ca.getPk().getProductEntity().getTitle() }</h4>
                        <div class="nav-cart-item-wrap">
                          <span class="nav-cart-item-price">${ca.getPk().getProductEntity().getPrice() }</span>
                          <span class="nav-cart-item-multiple">x</span>
                          <span class="nav-cart-item-quantity">${ca.getQuantity() }</span>

>>>>>>> 8167a418a0a55e84de51f01cfa62c71483db9d22
                        </div>
                      </div>
                      <div class="nav-cart-item-body">
                        <span class="nav-cart-item-stock">Màu sắc: xanh</span>
                        <a href="singleproduct/${ca.getPk().getProductEntity().getId_product()}.htm?delete" class="nav-cart-item-delete">Xóa</a>
                      </div>
<<<<<<< HEAD
                    </li>
                  </ul>
                  <div class="nav-cart-wrap-btn-delete">
                    <a href="bill/index.htm" class="nav-cart-item-view-cart">Xem giỏ hàng</a>
                  </div>
=======
                    </div>
                  </li>
              		</c:forEach>
                </ul>
                <div class="nav-cart-wrap-btn-delete">
                  <a href="" class="nav-cart-item-view-cart">Xem chi tiết giỏ hàng</a>
>>>>>>> 8167a418a0a55e84de51f01cfa62c71483db9d22
                </div>
              </div>
              </div>
  
              <!-- nav-login-no-login -->
              <div class="nav-login ${loginStatus} }">
                <i class="fas fa-user nav-login-icon"></i>
                <ul class="nav-login-list">
                  <li class="nav-login-item">
                    
                    <a href="login.htm" class="nav-login-link-login">Đăng nhập</a>
                  </li>
                  <li class="nav-login-item">
                    
<<<<<<< HEAD
                    <a href="register.htm" class="nav-login-link-register">Đăng ký</a>
=======
                    <a href="register.htm" class="nav-login-link-register">Đăng kí</a>
>>>>>>> 8167a418a0a55e84de51f01cfa62c71483db9d22
                  </li>
                  
                  <li class="nav-login-item">

                  <a href="purchase.htm" class="nav-login-link-register">Đơn mua</a>
                </li>
                </ul>
                <span class="nav-login-name"> ${currentUser}</span>
                <a href="#" class="fas fa-sign-out-alt nav-login-icon"></a>
              </div>
  
            </div>
          </div>
  
        </div>
      </div>
    </nav>

    <!-- Page Content -->
    <!-- About Page Starts Here -->
    <div class="about-page">
      <div class="container">
        <div class="row">
          <div class="col-md-12">
            <div class="section-heading">
              <div class="line-dec"></div>
              <h1>Giới thiệu</h1>
            </div>
          </div>
          <div class="col-md-6">
            <div class="left-image">
              <img src="${company.image }" alt="">
            </div>
          </div>
          <div class="col-md-6">
            <div class="right-content">
              <h4>${company.name }</h4>
              	<p>${company.story }</p>
                
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <!-- About Page Ends Here -->

    <!-- Subscribe Form Starts Here -->
    <div class="subscribe-form">
      <div class="container">
        <div class="row">
          <div class="col-md-12">
            <div class="section-heading">
              <div class="line-dec"></div>
              <h1>Subscribe on PIXIE now!</h1>
            </div>
          </div>
          <div class="col-md-8 offset-md-2">
            <div class="main-content">
              <p>Godard four dollar toast prism, authentic heirloom raw denim messenger bag gochujang put a bird on it celiac readymade vice.</p>
              <div class="container">
          		
                <form id="subscribe" action="send.htm" method="post">
               
                  <div class="row">
                    <div class="col-md-7">
                      <fieldset>
                        <input name="to" type="text" class="form-control" id="email" 
                        onfocus="if(this.value == 'Your Email...') { this.value = ''; }" 
                    	onBlur="if(this.value == '') { this.value = 'Your Email...';}"
                    	value="Your Email..." required="">
                      </fieldset>
                    </div>
                    <div class="col-md-5">
                      <fieldset>
                        <button  id="form-submit" class="button">Subscribe Now!</button>
                      </fieldset>
                    </div>
                  </div>
                </form>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <!-- Subscribe Form Ends Here -->


    
    <!-- Footer Starts Here -->
    <div class="footer">
      <div class="container">
        <div class="row">
          <div class="col-md-12">
            <div class="logo">
              <img src="assets/images/header-logo.png" alt="">
            </div>
          </div>
          <div class="col-md-12">
            <div class="footer-menu">
              <ul>
                <li><a href="#">Home</a></li>
                <li><a href="#">Help</a></li>
                <li><a href="#">Privacy Policy</a></li>
                <li><a href="#">How It Works ?</a></li>
                <li><a href="#">Contact Us</a></li>
              </ul>
            </div>
          </div>
          <div class="col-md-12">
            <div class="social-icons">
              <ul>
                <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                <li><a href="#"><i class="fa fa-linkedin"></i></a></li>
                <li><a href="#"><i class="fa fa-rss"></i></a></li>
              </ul>
            </div>
          </div>
        </div>
      </div>
    </div>
    <!-- Footer Ends Here -->


    <!-- Sub Footer Starts Here -->
    <div class="sub-footer">
      <div class="container">
        <div class="row">
          <div class="col-md-12">
            <div class="copyright-text">
              <p>Copyright &copy; 2019 Company Name 
                
                - Design: <a rel="nofollow" href="https://www.facebook.com/tooplate">Tooplate</a></p>
            </div>
          </div>
        </div>
      </div>
    </div>
    <!-- Sub Footer Ends Here -->


    <!-- Bootstrap core JavaScript -->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>


    <!-- Additional Scripts -->
    <script src="<c:url value='/resources/assets/js/custom.js' />"></script>
  	<script src="<c:url value='/resources/assets/js/owl.js' />"></script>
  	<script src="<c:url value='/resources/assets/js/isotope.js' />"></script>
  	 <script src="<c:url value='/resources/assets/js/flex-slider.js' />"></script>
  
 


    <script language = "text/Javascript"> 
      cleared[0] = cleared[1] = cleared[2] = 0; //set a cleared flag for each field
      function clearField(t){                   //declaring the array outside of the
      if(! cleared[t.id]){                      // function makes it static and global
          cleared[t.id] = 1;  // you could use true and false, but that's more typing
          t.value='';         // with more chance of typos
          t.style.color='#fff';
          }
      }
    </script>


  </body>

</html>
