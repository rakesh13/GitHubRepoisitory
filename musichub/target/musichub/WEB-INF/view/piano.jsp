<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<jsp:include page="Header.jsp" />
</head>
<body ng-controller="mycontrol">
<table border="2">
<tr>
<th>Product Name</th>
<th>Price</th>
<th>Type</th>
</tr>
<tr ng-repeat="p in products | filter:'Piano'">
<td>{{p.name}}</td>
<td>{{p.price}}</td>
<td>{{p.type}}</td>
</tr>


</table>

<jsp:include page="Footer.jsp" />
</body>
</html>