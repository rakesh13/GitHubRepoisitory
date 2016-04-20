<%@ page language="java" contentType="text/html; charset=UTF-8" isELIgnored="false"%>
<%@taglib prefix="c" uri="http://www.springframework.org/tags" %>
<%@taglib prefix="s" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<jsp:include page="Header.jsp" />
</head>
<body>
Product Name: <input type="text" ng-model="search">
<table id="myTable" border="2" class="table table-stripped">
<tr>
<th>Product Name</th>
<th>Price</th>
<th>Type</th>
</tr>
<s:forEach var="product" items="${products}">
<tr>
<td>${product.id }</td>
<td>${product.name}</td>

<td><a href="productdetails?pid=${product.id}"><img src="<c:url value="/resources/ico/info.png" />" height="50px" width="50px" /></a></td>
<td><a href="deleteproduct?pid=${product.id}"><img src="<c:url value="/resources/ico/del.png"  />" height="50px" width="50px" /></a></td>
<td><a href="updateproduct?pid=${product.id}">Update Product</a>
</tr>
</s:forEach>
</table>
<jsp:include page="Footer.jsp" />
</body>
<script>
$(document).ready(function()
		{
	$('myTable').dataTable();
		});
</script>
</html>