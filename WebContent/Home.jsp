<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<jsp:include page="header.jsp" />

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
					
					<%
						String loginSucessMessage=(String)request.getAttribute("loginSucessMessage");
						String un=(String)session.getAttribute("un");
						
					
					%>
						<%
							if(un!=null){
						%>
						<p><h2>Welcome <%=un%></h2></p>
						
						<%
							}
						%>
					
					<%	
    	if(loginSucessMessage!=null)   {
    
    %>
    	<center><p style='color:green'><%=loginSucessMessage%></p></center>
 
    <%
    	}
	%>
					

						
					</div>
				</div>
			</div>
			<div class="col-sm-2"></div>
		</div>
	</div>
	<jsp:include page="footer.jsp" />

</body>
</html>