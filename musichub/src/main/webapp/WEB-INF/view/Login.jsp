<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<jsp:include page="Header.jsp" />
</head>
<body>
<div class="container">
<div class="row">

</div>
</div>
<form method="post" action="login">
<table>
<tr>
<td>UserName</td>
<td><input type="text" name="username" /></td>
</tr>
<tr>
<td>Password</td>
<td><input type="password" name="password" /></td>
</tr>
<tr>
<td><input type="submit" value="Login" />
</table>
</form>
New User??
<br />Click here for <a href="UserRegister">Signup</a>
</body>
</html>