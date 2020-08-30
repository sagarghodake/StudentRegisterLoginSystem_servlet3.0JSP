<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login Form</title>
</head>
<body>
<% String registerSucessMessage=(String)request.getAttribute("registerSucessMessage");%>

	<%	
    	if(registerSucessMessage!=null)   {
    
    %>
    	<center><p style='color:green'><%=registerSucessMessage%></p></center>
 
    <%
    	}
	%>
	<jsp:include page="header.jsp" />

	<div class="container">
		<br>
		<br>

		<div class="row">
			<div class="col-sm-2"></div>

			<div class="col-sm-8">
				<div class="card">
					<div class="card-body">
					
					<%String loginFailedMessage=(String)request.getAttribute("loginFailedMessage"); %>
					<%	
    	if(loginFailedMessage==null)   {
    
    %>
    	<center><p style='color:red'><%=loginFailedMessage%></p></center>
 
    <%
    	}
	%>
					

						<form action="LoginServlet" method="post">
							<div class="form-group row">
								<label for="inputEmail3" class="col-sm-2 col-form-label">Email:</label>
								<div class="col-sm-10">
									<input type="email" class="form-control" id="inputEmail3" name="username">
								</div>
							</div>
							<div class="form-group row">
								<label for="inputPassword3" class="col-sm-2 col-form-label">Password:</label>
								<div class="col-sm-10">
									<input type="password" class="form-control" id="inputPassword3 name="password">
								</div>
							</div>
							  <p>Not registered...! <a href="register.jsp" style="color:dodgerblue">Sign In</a>.</p>
							<div class="form-group row">
								<div class="col-sm-10">
									<button type="submit" class="btn btn-primary">Sign in</button>
								</div>
							</div>
						</form>
					</div>
				</div>
			</div>
			<div class="col-sm-2"></div>
		</div>
	</div>
	<jsp:include page="footer.jsp" />

</body>
</html>