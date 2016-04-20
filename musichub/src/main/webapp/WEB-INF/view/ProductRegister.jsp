<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<title>Product Registration</title>
</head>
<body>
<form:form id="RegisterPage" method="POST" action="Register" commandName="insertProductCommand">
   <table>
   
   <tr>
        <td><label for="id">ID</label></td>
        <td><form:input path="id" /></td>
    </tr>
    <tr>
        <td><label for="name">Name</label></td>
        <td><form:input path="name" id="name" /></td>
    </tr>
    <tr>
        <td><form:label path="condition">Condition</form:label></td>
        <td><form:input path="condition" /></td>
    </tr>
    <tr>
        <td><form:label path="price">price</form:label></td>
        <td><form:input path="price" /></td>
    </tr>
     <tr>
        <td><form:label path="manufacturer">Manufacturer</form:label></td>
        <td><form:input path="manufacturer" /></td>
    </tr>
     <tr>
        <td><form:label path="description">Description</form:label></td>
        <td><form:input path="description" /></td>
    </tr>
     <tr>
        <td><form:label path="image">Image</form:label></td>
        <td><form:input path="image" /></td>
    </tr>
    <tr>
        <td colspan="2">
            <input type="submit" value="Submit"/>
        </td>
    </tr>
</table>  
</form:form>
<jsp:include page="Footer.jsp" />
</body>
</html>