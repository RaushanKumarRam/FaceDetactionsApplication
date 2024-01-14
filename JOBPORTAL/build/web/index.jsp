<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>Job Portal Website</title>
		
		<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css">
		<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" ></script>
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js"></script>
		
		<link rel="stylesheet" type="text/css" href="css/style.css" />
	</head>
	<body>
		<div class="container-fluid">
			<jsp:include page="header.jsp"></jsp:include>
			<jsp:include page="menubar.jsp"></jsp:include>
			
			<div class="row" style="border: 2px solid black;">
				<img src="images/kanti.jpeg" />
			</div>
			
			<!-- ==============search job div starts================= -->
			<div class="row">
				<div class="col-md-2"></div>
				<div class="col-md-8 job_search_div">
					<h3> Find A Job at India's No.1 Job Site </h3>
					<input type="text" placeholder="Technology..." class="textfield_design" />
					<input type="text" placeholder="Location..." class="textfield_design" />
					<input type="submit" value="Search" class="btn btn-primary" />
				</div>
				<div class="col-md-2"></div>
			</div>
			<!-- ==============search job div ends================= -->
			
			<div class="row">
				<div class="col-md-3">
					<ul>
						<li> <a href=""> Raushansoft </a> </li>
						<li> <a href=""> Infosys </a> </li>
						<li> <a href=""> Wipro </a> </li>
						<li> <a href=""> IBM </a> </li>
						<li> <a href=""> Google </a> </li>
					</ul>
				</div>
				<div class="col-md-6" style="background-color: #f9f8f9; margin-top: 10px">
					<div class="row">
						<div class="col-md-12 display_job_div">
							<b> Java Software Developer</b> <br>
							<span> Company : Raushansoft </span> <br>
							<span> 2-8 Years </span> <br>
							<span> Writing efficient code and document it as per the design specification of module / component. </span> <br>
							<a href=""> See Full Details </a>
						</div>
						
						<div class="col-md-12 display_job_div">
							<b> Java Software Developer</b> <br>
							<span> Company : ORACLE </span> <br>
							<span> 2-8 Years </span> <br>
							<span> Writing efficient code and document it as per the design specification of module / component.And expert J2EE </span> <br>
							<a href=""> See Full Details </a>
						</div>
						
						<div class="col-md-12 display_job_div">
							<b> Java Software Developer</b> <br>
							<span> Company : Accenture </span> <br>
							<span> 5 Years </span> <br>
							<span> as expert J2SE Writing efficient code and document it as per the design specification of module / component. </span> <br>
							<a href=""> See Full Details </a>
						</div>
						
						<div class="col-md-12 display_job_div">
							<b> Java Software Developer</b> <br>
							<span> Company : TCS </span> <br>
							<span> 2-8 Years </span> <br>
							<span> Writing efficient code and document it as per the design specification of module / component. </span> <br>
							<a href=""> See Full Details </a>
						</div>
						
						<div class="col-md-12 display_job_div">
							<b> Java Software Developer</b> <br>
							<span> Company : IBM </span> <br>
							<span> 2-8 Years </span> <br>
							<span> Writing efficient code and document it as per the design specification of module / component. </span> <br>
							<a href=""> See Full Details </a>
						</div>
					</div>
				</div>
				<div class="col-md-3">
					<ul>
						<li> <a href=""> Smart Programming </a> </li>
						<li> <a href=""> Infosys </a> </li>
						<li> <a href=""> Wipro </a> </li>
						<li> <a href=""> IBM </a> </li>
						<li> <a href=""> Google </a> </li>
					</ul>
				</div>
			</div>
			
			<jsp:include page="footer.jsp"></jsp:include>
		</div>
	</body>
</html>