<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Signup | Life Style Store</title>
    <link href="css/bootstrap.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">
    <script src="js/jquery.js"></script>
    <script src="js/bootstrap.min.js"></script>
</head>
<body>
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
<div class="container-fluid decor_bg" id="content">
    <div class="row">
        <div class="container">
            <div class="col-lg-4 col-lg-offset-4 col-md-6 col-md-offset-3">
                <h2>SIGN UP</h2>
                <form  action="BankServlet" method="POST">
                    <div class="form-group">
                        <input class="form-control" placeholder="Name" name="name"  required>
                    </div>
                    <div class="form-group">
                        <input type="email" class="form-control"  placeholder="Email"  name="email" required>
                    </div>
                    <div class="form-group">
                        <input type="password" class="form-control" placeholder="Password" name="password" required>
                    </div>
                    <div class="form-group">
                        <input type="text" class="form-control"  placeholder="Contact" maxlength="10" size="10" name="contact" required>
                    </div>
                    <div class="form-group">
                        <input  type="text" class="form-control"  placeholder="City" name="city" required>
                    </div>
                    <div class="form-group">
                        <input  type="text" class="form-control"  placeholder="Address" name="address" required>
                    	<input type="hidden" name="command" value="SIGNUP"> 
                    </div>
                    <div class="form-group">
                        <label>Savingaccount</label><input type="radio" class=""  name="accounttype" value=Savingaccount >
                    	<label>CurrentAccount</label><input type="radio" class=""  name="accounttype" value=CurrentAccount>
                    </div>
                    <button type="submit" name="submit" class="btn btn-primary">Submit</button>
                </form>
            </div>
        </div>
    </div>
</div>
<footer>
    <div class="container">
        <center>
            <p>Copyright &copy; State Finance And Central Bank. All Rights Reserved  |  Contact Us: +91 90000 00000</p>
        </center>
    </div>
</footer>
</body>
</html>