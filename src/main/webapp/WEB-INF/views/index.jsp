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
  

  <!-- Navigation -->
  <%@include file="/WEB-INF/views/include/header.jsp" %>

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
          <c:forEach var="pd" items="${getPro}">
            <a href="single-product.html">
              <div class="featured-item">
                <img src="<c:url value='/resources/assets/images/${pd.image}' />" alt="">
                <h4>${pd.getTitle() }</h4>
                <h6>$${pd.getPrice() }</h6>
              </div>
            </a>
            </c:forEach>
          </div>
        </div>
      </div>
    </div>
  </div>
  <!-- Featred Ends Here -->


  <!-- Subscribe Form Starts Here -->
 <%@include file="/WEB-INF/views/include/email.jsp" %>
  <!-- Subscribe Form Ends Here -->



  <!-- Footer Starts Here -->
    <%@include file="/WEB-INF/views/include/footer.jsp" %>
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