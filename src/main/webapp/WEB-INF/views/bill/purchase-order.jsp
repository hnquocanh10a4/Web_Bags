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
    <title>Pixie - Cart</title>
	<base href="${pageContext.servletContext.contextPath}/">
    <!-- Bootstrap core CSS -->
    <link href="<c:url value='/resources/vendor/bootstrap/css/bootstrap.min.css' />" rel="stylesheet">


    <!-- Additional CSS Files -->
    <link href="<c:url value='/resources/assets/css/fontawesome.css' />" rel="stylesheet">
  	<link href="<c:url value='/resources/assets/css/tooplate-main.css' />" rel="stylesheet">
  	<link href="<c:url value='/resources/assets/css/owl.css' />" rel="stylesheet">
  	<link href="<c:url value='/resources/assets/css/new-style.css' />" rel="stylesheet">
  	<style>
    .bought {
      width: 100%;

      display: flex;
      flex-direction: column;
      padding: 0 25px;
      border: 1px solid #e8e8e7;


    }

    .product {
      width: 100%;
      display: flex;
      align-items: center;
      justify-content: space-between;
      padding: 15px 0;
      border-top: 1px solid #e8e8e7;
      border-bottom: 1px solid #e8e8e7;
    }

    .product-info {
      display: flex;
      align-items: center;

    }

    .product-info img {
      width: 80px;
      height: 80px;
      object-fit: cover;
    }

    .product-info-detail {
      margin-left: 20px;
    }

    .product-info-detail h3 {
      font-size: 18px;
    }

    .product-info-detail p {
      font-size: 14px;
    }

    .product-info-detail span {
      font-size: 14px;
    }

    .money span {
      margin-top: 20px;
      margin-right: 30px;
      float: right;
      font-weight: 700;
      font-size: 20px;
      color: #2cccff;
      margin-bottom: 30px;
    }
  </style>
  </head>

  <body>
  
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
        <a class="navbar-brand" href="#"><img src="assets/images/header-logo.png" alt=""></a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
          <div class="wrap-all">
            <div class="nav-wrap__nav">
              <ul class="navbar-nav ml-auto">
                <li class="nav-item ">
                  <a class="nav-link" href="index.html">Home
                    <span class="sr-only">(current)</span>
                  </a>
                </li>
                <li class="nav-item ">
                  <a class="nav-link" href="products.html">Products</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="about.html">About Us</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="contact.html">Contact Us</a>
                </li>
              </ul>
            </div>
            <div class="cart-search-wrap">
              <div class="nav-search">
                <input type="text" class="nav-search-input" placeholder="Tìm kiến trong shop">
                <button class="nav-search-btn">
                  <i class="fas fa-search nav-search-btn-icon"></i>
                </button>
              </div>
  
              <div class="nav-cart">
                <i class="nav-cart-icon fas fa-shopping-cart"></i>
                <!-- no cart : nav-cart-no-cart -->
                <div class="nav-cart-has-cart">
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
                            <span class="nav-cart-item-price">21.000.000đ</span>
                            <span class="nav-cart-item-multiple">x</span>
                            <span class="nav-cart-item-quantity">2</span>
  
                          </div>
                        </div>
                        <div class="nav-cart-item-body">
                          <span class="nav-cart-item-stock">Màu sắc: xanh</span>
                          <span class="nav-cart-item-delete">Xóa</span>
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
                            <span class="nav-cart-item-price">99.000.000đ</span>
                            <span class="nav-cart-item-multiple">x</span>
                            <span class="nav-cart-item-quantity">1</span>
  
                          </div>
                        </div>
                        <div class="nav-cart-item-body">
                          <span class="nav-cart-item-stock">Màu sắc: xanh</span>
                          <span class="nav-cart-item-delete">Xóa</span>
                        </div>
                      </div>
                    </li>
                    <li class="nav-cart-item">
                      <img src="https://i.pinimg.com/474x/91/3a/85/913a85aa512415ec0a5700d6617bf2c4.jpg" alt=""
                        class="nav-cart-item-img">
                      <div class="nav-cart-item-detail">
                        <div class="nav-cart-item-head">
                          <h4 class="nav-cart-item-name">Blue Dior Baby!</h4>
                          <div class="nav-cart-item-wrap">
                            <span class="nav-cart-item-price">11.000.000đ</span>
                            <span class="nav-cart-item-multiple">x</span>
                            <span class="nav-cart-item-quantity">2</span>
  
                          </div>
                        </div>
                        <div class="nav-cart-item-body">
                          <span class="nav-cart-item-stock">Màu sắc: xanh</span>
                          <span class="nav-cart-item-delete">Xóa</span>
                        </div>
                      </div>
                    </li>
                  </ul>
                  <div class="nav-cart-wrap-btn-delete">
                    <a href="" class="nav-cart-item-view-cart">Xem giỏ
                        hàng</a>
                  </div>
                </div>
              </div>
  
              <!-- nav-login-no-login -->
              <div class="nav-login nav-login-no-login">
                <i class="fas fa-user nav-login-icon"></i>
                <ul class="nav-login-list">
                  <li class="nav-login-item">
  
                    <a href="" class="nav-login-link-login">Log in</a>
                  </li>
                  <li class="nav-login-item">
  
                    <a href="" class="nav-login-link-register">Register</a>
                  </li>
                </ul>
                <span class="nav-login-name">Quốc Anh</span>
                <a href="#" class="fas fa-sign-out-alt nav-login-icon"></a>
              </div>
  
            </div>
          </div>
  
        </div>
      </div>
    </nav>

    <!-- Page Content -->
    <!-- Items Starts Here -->
    
  
	 <div class="featured-page" style="margin-top: 70px">
    <div class="container">
  <c:forEach var="p" items="${purchase }">
      <div class="row">
        <div class="bought">
          <div class="product">
            <div class="product-info">
              <img src="<c:url value='/resources/assets/images/${p.pk.productEntity.image}' />" alt="">
              <div class="product-info-detail">
                <h3>${p.pk.productEntity.image}</h3>
                <p>Phân loại hàng: ${p.pk.productEntity.colors.name_color}, ${p.pk.productEntity.brands.name_brand}</p>
                <span>&times; ${p.quantity }</span>
              </div>
            </div>

            <div class="product-price">

              <span>&dollar;${ p.price }</span>

            </div>
          </div>
          <div class="money">
            <span>Tổng số tiền : ${p.total} </span>
          </div>

        </div>
      </div>
     
       </c:forEach>

    </div>
  </div>

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
                <form id="subscribe" action="" method="get">
                  <div class="row">
                    <div class="col-md-7">
                      <fieldset>
                        <input name="email" type="text" class="form-control" id="email" 
                        onfocus="if(this.value == 'Your Email...') { this.value = ''; }" 
                    	onBlur="if(this.value == '') { this.value = 'Your Email...';}"
                    	value="Your Email..." required="">
                      </fieldset>
                    </div>
                    <div class="col-md-5">
                      <fieldset>
                        <button type="submit" id="form-submit" class="button">Subscribe Now!</button>
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
    <script src="<c:url value='/resources/vendor/jquery/jquery.min.js'/>"></script>
    <script src="<c:url value='/resources/vendor/bootstrap/js/bootstrap.bundle.min.js'/>"></script>


    <!-- Additional Scripts -->
    <script src="<c:url value='/resources/assets/js/custom.js' />"></script>
  	<script src="<c:url value='/resources/assets/js/owl.js' />"></script>
  	<script src="<c:url value='/resources/assets/js/isotope.js' />"></script>


    


  </body>

</html>