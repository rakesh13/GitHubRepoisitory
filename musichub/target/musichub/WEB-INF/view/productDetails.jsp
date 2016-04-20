<%@ page language="java" contentType="text/html; charset=UTF-8" isELIgnored="false"%>
<%@taglib prefix="c" uri="http://www.springframework.org/tags" %>
<%@taglib prefix="s" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<jsp:include page="Header.jsp" />
</head>
<body>
<h1>Product Details Page</h1>
<div class="container">

</div>
<table border="2">
<tr>
<th>Product Id</th>
<th>Product Name</th>
<th>Product Description</th>
<th>Product Manufacturer</th>
<th>Product Image</th>
</tr>

<tr>
<td>${selectedProduct.id }</td>
<td>${selectedProduct.name}</td>
<td><img src="<c:url value="/resources/Images/${selectedProduct.image}" />" /></td>
</tr>

</table>

</body>
<jsp:include page="Footer.jsp" />
</html>