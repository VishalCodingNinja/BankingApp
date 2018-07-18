<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<html lang="en">
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Welcome | Life Style Store</title>
    <!-- Bootstrap Core CSS -->
    <link href="css/bootstrap.css" rel="stylesheet">
    <!-- Custom CSS -->
    <link href="css/style.css" rel="stylesheet">
    <!-- jQuery -->
    <script src="js/jquery.js"></script>
    <!-- Bootstrap Core JavaScript -->
    <script src="js/bootstrap.min.js"></script>
</head>

<body style="padding-top: 50px;">
<!-- Header -->
<div class="navbar navbar-inverse navbar-fixed-top">
    <div class="container">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="indexBank.jsp">State Finance And Central Bank</a>
        </div>
        <div class="collapse navbar-collapse" id="myNavbar">
            <ul class="nav navbar-nav navbar-right">
                <li><a href="CreateAccount.jsp"><span class="glyphicon glyphicon-user"></span> CreateAccount </a></li>
                <li><a href="login.jsp"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
            </ul>
        </div>
    </div>
</div>
<!--Header end-->

<div id="content">
    <!--Main banner image-->
    <div id = "banner_image">
        <div class="container">
            <center>
                <div id="banner_content">
                    <h1>We are here to help You </h1>
                    <p>Lowest Cost Education Loan  </p>
                    <br/>

                </div>
            </center>
        </div>
    </div>
    <!--Main banner image end-->

    <!-aItem categories listing-->
    <div class="container">
        <div class="row text-center" id="item_list">
            <div class="col-sm-4">
                <a href="products.html#cameras" >
                    <div class="thumbnail">
                        <img src="img/2.jpg" alt="">
                        <div class="caption">
                            <h3>Mobile Banking</h3>
                            <p>24/7 Mobile Banking Available </p>
                        </div>
                    </div>
                </a>
            </div>

            <div class="col-sm-4">
                <a href="products.html#watches" >
                    <div class="thumbnail">
                        <img src="img/3.jpg" alt="">
                        <div class="caption">
                            <h3>Cards</h3>
                            <p>Instant Issue Of Cards </p>
                        </div>
                    </div>
                </a>
            </div>

            <div class="col-sm-4">
                <a href="products.html#shirts" >
                    <div class="thumbnail">
                        <img src="img/4.jpg" alt="">
                        <div class="caption">
                            <h3>Services</h3>
                            <p>World Best Services</p>
                        </div>
                    </div>
                </a>
            </div>
        </div>
    </div>
    <!--Item categories listing end-->
</div>

<!--Footer-->
<footer>
    <div class="container">
        <center>
            <p>Copyright &copy; State Finance And Central Bank All Rights Reserved  |  Contact Us: +91 90000 00000</p>
        </center>
    </div>
</footer>
<!--Footer end-->

</body>
</html>