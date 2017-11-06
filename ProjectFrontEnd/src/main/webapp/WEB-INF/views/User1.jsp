<%@ page language="java" contentType="text/html" import="com.model.User"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Signup Form</title>
<link rel='stylesheet' href='js-form-validation.css' type='text/css' />  
<script src="validation.js"></script>  

<style>

body, html
{
    height: 100%;
    margin: 0;
}

.bg {
    
    background-image: url("resources/Signupin BG.jpg");    
    height: 100%;     
    background-position: center;
    background-repeat: no-repeat;
    background-size: cover;
}


</style>

</head>

<body  onload="document.registration.userid.focus();">

<div class="bg">

<jsp:include page="header.jsp"></jsp:include>


 <div class="container">  
<h2><font color="black" >Registration Page</font></h2>


<form name='registration' onSubmit="return formValidation();">  
<form:form action="AddUser" modelAttribute="user"> 


	<div class="form-group">
	<div style="margin-bottom: 25px" class="input-group">
    <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>    
    <input id="login-userName" type="text" class="form-control" name="userName" value="" placeholder="username"required>                                        
    </div>
    </div>
	
	<div class="form-group">
	<div style="margin-bottom: 25px" class="input-group">
    <span class="input-group-addon"><i class="glyphicon glyphicon-envelope"></i></span>    
    <input id="userEmail" type="text" class="form-control" name="userEmail" value="" placeholder="Please enter your email"required>                                        
    </div>
    </div>
	
	<div class="form-group">
	<div style="margin-bottom: 25px" class="input-group">
    <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>    
    <input id="userPassword" type="password" class="form-control" name="userPassword" value="" placeholder="Please type the password"required>                                        
    </div>
    </div>
	
	<div class="form-group">
	<div style="margin-bottom: 25px" class="input-group">
    <span class="input-group-addon"><i class="glyphicon glyphicon-phone-alt"></i></span>    
    <input id="userPhone" type="text" class="form-control" name="userPhone" value="" placeholder="Enter phone number"required>                                        
    </div>
    </div>
    
	<div class="form-group">
	<div style="margin-bottom: 25px" class="input-group">
    <span class="input-group-addon"><i class="glyphicon glyphicon-map-marker"></i></span>    
    <input id="userAddress" type="text" class="form-control" name="userAddress" value="" placeholder="Enter address"required>                                        
    </div>
    </div>
		
	<br>
		<center>
	<button type="submit" class="btn btn-lg btn-info">Submit</button>
	<button type="reset"  class="btn btn-lg btn-info">Cancel</button>
	</center>	
		



</form:form>
</form>

</div> 
</div>

</body>
</html>