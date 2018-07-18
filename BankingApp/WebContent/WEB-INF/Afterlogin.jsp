<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.*,com.onlinebank.myapplication.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%-- <head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div ="container">

<c:forEach var="ydtls" items="${cust}">
${ydtls.name} 

</c:forEach>
</div>
</html> --%>
<!DOCTYPE html>
<html>
<head>
<title>Collapse Functionality with Accordion</title>
<link href="css/bootstrap.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">
    <script src="js/jquery.js"></script>
    <script src="js/bootstrap.min.js"></script>
<style type="text/css">
#packt{
padding: 35px 35px 35px 35px;
}
</style>
</head>
<body id="packt">
<div class="panel-group" id="accordion">
<div class="panel panel-success">
<div class="panel-heading">
<h4 class="panel-title">

<a data-toggle="collapse" data-parent="#accordion"
href="#packtpubcollapse1">WebRTC</a>
</h4>
</div>
<div id="packtpubcollapse1" class="panel-collapse collapsein">
<div class="panel-body">
<p>
<div class="container">

<div class="col-lg-4 column-"><img src="img/123.png" class="img-fluid img-thumbnail img-responsive" alt="responsive-img">
</div>
<form>
<div class="col-lg-6 form-group">
<table>
<c:forEach var="ydtls" items="${cust}">
 


<tr><td><label>Name   :  </label><input class="form-control" type="text" value="${ydtls.name}" disabled></td></tr>
<tr><td><label> Email : </label><input class="form-control" type="text" value="${ydtls.email}" disabled><td></tr>
<tr><td><label> contact : </label><input class="form-control" type="text" value="${ydtls.contact}" disabled><td></tr>
<tr><td><label> City : </label><input class="form-control" type="text" value="${ydtls.city}" disabled><td></tr>
<%-- <tr><td><label> Account Number: </label>${ydtls.}<td></tr> --%>
<tr><td><label> Account type :</label><input class="form-control" type="text" value="${ydtls.accounttype}" disabled> <td></tr>
<tr><td><label class="input-group"> Address :<input class="form-control " type="text" value="${ydtls.address}" disabled> </label></td></tr>
<tr><td>
</c:forEach>
</table>
</div>
</form>


</div>
</p>
</div>
</div>
</div>
<div class="panel panel-primary">
<div class="panel-heading">
<h4 class="panel-title">
<a data-toggle="collapse" data-parent="#accordion"
href="#packtpubcollapse2">Meteor</a>
</h4>
</div>
<div id="packtpubcollapse2" class="panel-collapse
collapse">
<div class="panel-body">
<p>Meteor is an open-source web application
framework which follows the MVVM pattern.Meteor runs on both the
server-side as well as the client-side, since both share the
same database API. Meteor is written in pure JavaScript and uses
established design patterns, easing the pain of the tedious tasks of
web application development, helping you build robust applications in
very little time. <a href="https://www.packtpub.com/books/content/
meteor-meteor-js">More information</a></p>
</div>
</div>
</div>
</div>
</body>
</html>