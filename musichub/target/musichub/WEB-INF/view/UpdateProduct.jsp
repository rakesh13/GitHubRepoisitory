<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<jsp:include page="Header.jsp" />
<title>Update Product</title>
</head>
<body>
<div class="container">
  <div class="row">
  	<div class="col-xs-6 col-sm-6 col-md-6">
    
          <form class="form-horizontal" action="Register" method="POST">
          <fieldset>
            <div id="legend">
              <legend class="">Register Page</legend>
            </div>
            <div class="control-group">
              <label class="control-label" for="id">Product ID</label>
              <div class="controls">
                <input type="text" id="id" name="id" value="${product.id}" placeholder="Please Enter ProductID" class="form-control input-lg">
                <p class="help-block">Product ID can contain only numbers, without spaces</p>
              </div>
            </div>
         
            <div class="control-group">
              <label class="control-label" for="Name">Name</label>
              <div class="controls">
                <input type="text" id="Name" name="Name" placeholder="Please Enter Name" class="form-control input-lg">
                
              </div>
            </div>
         
            <div class="control-group">
              <label class="control-label" for="Description">Description</label>
              <div class="controls">
                <input type="text" id="Description" name="Description" placeholder="Please Enter PDescription" class="form-control input-lg">
                
              </div>
            </div>
         	 <div class="control-group">
              <label class="control-label" for="Price">Price</label>
              <div class="controls">
                <input type="text" id="Price" name="Price" placeholder="Please Enter Price" class="form-control input-lg">
                
              </div>
            </div>
            
             <div class="control-group">
              <label class="control-label" for="Manufacturer">Manufacturer</label>
              <div class="controls">
                <input type="text" id="Manufacturer" name="Manufacturer" placeholder="Please Enter Manufacturer" class="form-control input-lg">
                
              </div>
            </div>
            
            <div class="control-group">
              <label class="control-label" for="Image">Image</label>
              <div class="controls">
                <input type="text" id="Image" name="Image" placeholder="Please Enter Image" class="form-control input-lg">
                
              </div>
            </div>
         
            <div class="control-group">
              <!-- Button -->
              <div class="controls">
                <button class="btn btn-success">Register</button>
              </div>
            </div>
          </fieldset>
        </form>
    
    </div> 
  </div>
</div>
<jsp:include page="Footer.jsp" />
</body>
</html>