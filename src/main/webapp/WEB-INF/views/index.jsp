<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
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

  <title>WEB_BAGS</title>

  <!-- Bootstrap core CSS -->
  <!-- <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet"> -->
  <link href="<c:url value='/resources/vendor/bootstrap/css/bootstrap.min.css' />" rel="stylesheet">

  <!-- Additional CSS Files -->
  <!-- <link rel="stylesheet" href="assets/css/fontawesome.css">
  <link rel="stylesheet" href="assets/css/tooplate-main.css">
  <link rel="stylesheet" href="assets/css/owl.css">
  <link rel="stylesheet" href="assets/css/new-style.css"> -->
  
  <link href="<c:url value='/resources/assets/css/fontawesome.css' />" rel="stylesheet">
  <link href="<c:url value='/resources/assets/css/tooplate-main.css' />" rel="stylesheet">
  <link href="<c:url value='/resources/assets/css/owl.css' />" rel="stylesheet">
  <link href="<c:url value='/resources/assets/css/new-style.css' />" rel="stylesheet">
  
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
      <!-- logo -->
      <a class="navbar-brand" href="#"><img src="assets/images/header-logo.png" alt=""></a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive"
        aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarResponsive">
        <div class="wrap-all">
          <div class="nav-wrap__nav">
            <ul class="navbar-nav ml-auto">
              <li class="nav-item active">
                <a class="nav-link" href="index.htm">Trang chủ
                  <span class="sr-only">(current)</span>
                </a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="products/index.htm">Sản phẩm</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="about.htm">Giới thiệu</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="contact.htm">Liên hệ</a>
              </li>
            </ul>
          </div>
          <div class="cart-search-wrap">
            <div class="nav-search">
              <form action="http://localhost:8080/Web_Bags/products/index.htm">
                <input name ="searchInput" type="text" class="nav-search-input" placeholder="Tìm kiếm trong shop">
                <button name="btnsearch" class="nav-search-btn">
                  <i class="fas fa-search nav-search-btn-icon"></i>
                </button>
                </form>
            </div>

            <div class="nav-cart">
              <i class="nav-cart-icon fas fa-shopping-cart"></i>
              <!-- no cart : nav-cart-no-cart -->
              <div class="nav-cart-has-cart">

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


                        </div>
                      </div>
                      <div class="nav-cart-item-body">
                        <span class="nav-cart-item-stock">Màu sắc: ${ca.getPk().getProductEntity().getColors().getName_color() }</span>
                        <a href="singleproduct/${ca.getPk().getProductEntity().getId_product()}.htm?delete" class="nav-cart-item-delete">Xóa</a>
                      </div>
</div>
                    </li>
                 </c:forEach>
                  </ul>
                  <div class="nav-cart-wrap-btn-delete">
                    <a href="bill/index.htm" class="nav-cart-item-view-cart">Xem giỏ hàng</a>
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
                    
                    <a href="register.htm" class="nav-login-link-register">Đăng kí</a>
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
  <!-- Banner Starts Here -->
  <div class="banner">
    <div class="container">
      <div class="row">
        <div class="col-md-12">
          <div class="caption">
            <h2>Ecommerce HTML Template</h2>
            <div class="line-dec"></div>
            <p>Pixie HTML Template can be converted into your desired CMS theme. Total <strong>5 pages</strong>
              included. You can use this Bootstrap v4.1.3 layout for any CMS.
              <br><br>Please tell your friends about <a rel="nofollow"
                href="https://www.facebook.com/tooplate/">Tooplate</a> free template site. Thank you. Photo credit goes
              to <a rel="nofollow" href="https://www.pexels.com">Pexels website</a>.
            </p>
            <div class="main-button">
              <a href="products.html">Order Now!</a>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  <!-- Banner Ends Here -->

  <!-- Featured Starts Here -->
  <div class="featured-items">
    <div class="container">
      <div class="row">
        <div class="col-md-12">
          <div class="section-heading">
            <div class="line-dec"></div>
            <h1>Sản phẩm nổi bật</h1>
          </div>
        </div>
        <div class="col-md-12">
          <div class="owl-carousel owl-theme">
            <a href="single-product.html">
              <div class="featured-item">
                <img src="assets/images/item-01.jpg" alt="Item 1">
                <h4>Proin vel ligula</h4>
                <h6>$15.00</h6>
              </div>
            </a>
            <a href="single-product.html">
              <div class="featured-item">
                <img src="assets/images/item-02.jpg" alt="Item 2">
                <h4>Erat odio rhoncus</h4>
                <h6>$25.00</h6>
              </div>
            </a>
            <a href="single-product.html">
              <div class="featured-item">
                <img src="assets/images/item-03.jpg" alt="Item 3">
                <h4>Integer vel turpis</h4>
                <h6>$35.00</h6>
              </div>
            </a>
            <a href="single-product.html">
              <div class="featured-item">
                <img src="assets/images/item-04.jpg" alt="Item 4">
                <h4>Sed purus quam</h4>
                <h6>$45.00</h6>
              </div>
            </a>
            <a href="single-product.html">
              <div class="featured-item">
                <img src="assets/images/item-05.jpg" alt="Item 5">
                <h4>Morbi aliquet</h4>
                <h6>$55.00</h6>
              </div>
            </a>
            <a href="single-product.html">
              <div class="featured-item">
                <img src="assets/images/item-06.jpg" alt="Item 6">
                <h4>Urna ac diam</h4>
                <h6>$65.00</h6>
              </div>
            </a>
            <a href="single-product.html">
              <div class="featured-item">
                <img src="assets/images/item-04.jpg" alt="Item 7">
                <h4>Proin eget imperdiet</h4>
                <h6>$75.00</h6>
              </div>
            </a>
            <a href="single-product.html">
              <div class="featured-item">
                <img src="assets/images/item-05.jpg" alt="Item 8">
                <h4>Nullam risus nisl</h4>
                <h6>$85.00</h6>
              </div>
            </a>
            <a href="single-product.html">
              <div class="featured-item">
                <img src="assets/images/item-06.jpg" alt="Item 9">
                <h4>Cras tempus</h4>
                <h6>$95.00</h6>
              </div>
            </a>
          </div>
        </div>
      </div>
    </div>
  </div>
  <!-- Featred Ends Here -->


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
  <!-- <script src="vendor/jquery/jquery.min.js"></script>
  <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script> -->
  
  <script src="<c:url value='/resources/vendor/jquery/jquery.min.js'/>"></script>
  <script src="<c:url value='/resources/vendor/bootstrap/js/bootstrap.bundle.min.js'/>"></script>


  <!-- Additional Scripts -->
  <!-- <script src="assets/js/custom.js"></script>
  <script src="assets/js/owl.js"></script> -->
  
  <script src="<c:url value='/resources/assets/js/custom.js' />"></script>
  <script src="<c:url value='/resources/assets/js/owl.js' />"></script>


  <script language="text/Javascript">
    cleared[0] = cleared[1] = cleared[2] = 0; //set a cleared flag for each field
    function clearField(t) {                   //declaring the array outside of the
      if (!cleared[t.id]) {                      // function makes it static and global
        cleared[t.id] = 1;  // you could use true and false, but that's more typing
        t.value = '';         // with more chance of typos
        t.style.color = '#fff';
      }
    }
  </script>


</body>

</html>