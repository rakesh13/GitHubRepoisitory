<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html ng-app="musicapp">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Product Details</title>


<script src="<c:url value="/resources/js/angular.min.js" />"></script>
<script src="<c:url value="/resources/js/Data.js" />" type="text/javascript"></script>
<link href="<c:url value="/resources/js/bootstrap.min.js" />" rel="stylesheet" type="text/css"/>
</head>
<body ng-controller="mycontrol">
Product Name: <input type="text" ng-model="search">
<table>
<tr>
<th>Product Name</th>
<th>Price</th>
<th>Type</th>
</tr>
<tr ng-repeat="p in products | filter:search">
<td>{{p.name}}</td>
<td>{{p.price}}</td>
<td>{{p.type}}</td>
</tr>


</table>
</body>
</html>