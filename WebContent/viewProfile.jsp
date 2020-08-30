<%@page import="com.servletproject.pojo.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>View Profile</title>
<style>
body {font-family: Arial, Helvetica, sans-serif;}
* {box-sizing: border-box;}

/* Full-width input fields */
input[type=text], input[type=password] {
  width: 100%;
  padding: 15px;
  margin: 5px 0 22px 0;
  display: inline-block;
  border: none;
  background: #f1f1f1;
}

/* Add a background color when the inputs get focus */
input[type=text]:focus, input[type=password]:focus {
  background-color: #ddd;
  outline: none;
}

/* Set a style for all buttons */
button {
  background-color: #4CAF50;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 100%;
  opacity: 0.9;
}

button:hover {
  opacity:1;
}

/* Extra styles for the cancel button */
.cancelbtn {
  padding: 14px 20px;
  background-color: #f44336;
}

/* Float cancel and signup buttons and add an equal width */
.cancelbtn, .signupbtn {
  float: left;
  width: 10%;
}

/* Add padding to container elements */
.container {
  padding: 16px;
}

/* The Modal (background) */
.modal {
  display: none; /* Hidden by default */
  position: fixed; /* Stay in place */
  z-index: 1; /* Sit on top */
  left: 0;
  top: 0;
  width: 100%; /* Full width */
  height: 100%; /* Full height */
  overflow: auto; /* Enable scroll if needed */
  background-color: #474e5d;
  padding-top: 10px;
}

/* Modal Content/Box */
.modal-content {
  background-color: #fefefe;
  margin: 5% auto 15% auto; /* 5% from the top, 15% from the bottom and centered */
  border: 1px solid #888;
  width: 80%; /* Could be more or less, depending on screen size */
}

/* Style the horizontal ruler */
hr {
  border: 1px solid #f1f1f1;
  margin-bottom: 25px;
}
 
/* The Close Button (x) */
.close {
  position: absolute;
  right: 35px;
  top: 15px;
  font-size: 40px;
  font-weight: bold;
  color: #f1f1f1;
}

.close:hover,
.close:focus {
  color: #f44336;
  cursor: pointer;
}

/* Clear floats */
.clearfix::after {
  content: "";
  clear: both;
  display: table;
}

/* Change styles for cancel button and signup button on extra small screens */
@media screen and (max-width: 300px) {
  .cancelbtn, .signupbtn {
     width: 100%;
  }
}
</style>
</head>
<body>

<div class="container">
  <div class="row">
    <div class="col-sm-2">
 
    </div>
    <div class="col-sm">
<meta charset="ISO-8859-1">
<title>Registration Form</title>
</head>
<body>

	<jsp:include page="header.jsp" />
	
	
	<div class="container">

		<div class="row">
			<div class="col-sm-1"></div>

			<div class="col-sm-12">
				<div class="card">
					<div class="card-body">
					<%
                                            User user=(User)request.getAttribute("user");
                                          String viewProfileFailedMessage=(String)request.getAttribute("viewProfileFailedMessage");
                                            
                                        %>

	<%	
    	if(viewProfileFailedMessage==null){
    
         %>
    	<center><p style='color:green'><%=viewProfileFailedMessage%></p></center>
 
        <%         
            }
	%>
					

	<form action="UserInfoServletServlet" method="post">
	<div class="container">
      <h1>View Profile</h1>
      <p>Please fill in this form to edit account information.</p>
      <hr>
      <label for="name"><b>Name:</b></label>
      <input type="text" placeholder="Enter Email" name="name" required value="<%=user.getName()%>">

      <label for="email"><b>Email:</b></label>
      <input type="text" placeholder="Enter Email" name="email" required value="<%=user.getUsername()%>">
      
      <label for="date"><b>Birthdate:</b></label>
      <input type="text" placeholder="Enter Birthday" name="date" required value="<%=user.getDate()%>">
      
      <p>Want to edit profile...!!! <a href="view.jsp" style="color:dodgerblue">  Edit Profile Profile</a>.</p>
      

    
    </div>
  </form>
</div>	</form>
					</div>
				</div>
			</div>
			<div class="col-sm-2"></div>
		</div>
	</div>
	
</body>
</html>
