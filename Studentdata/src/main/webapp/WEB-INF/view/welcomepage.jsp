<!DOCTYPE html>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta http-equiv="Pragma" content="no-cache">
<meta http-equiv="Cache-Control" content="no-cache">
<meta http-equiv="Expires" content="sat,01 DEC 2001 00:00:00 GMT">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Infidata</title>
<link href="static/css/bootstrap.min.css" rel="stylesheet">
<link href="static/css/style.css" rel="stylesheet">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link href="https://fonts.googleapis.com/css?family=Montserrat"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<style>
body {
	font-family: 'Montserrat', sans-serif;
}

.navbar {
	padding-top: 2px;
	margin: 0px;
}
/* .jumbotron {
	background-color: #42aaf4;
	margin: 0px;
	padding-left:40px;
} */
.form-control {
	font-size: 18px;
}

.box {
	margin-right: 690px;
}
.box1 {
	margin-right: 740px;
}
</style>
<body>


	<nav class="navbar navbar-expand-sm  navbar-light"
		style="background-color: #f4d941;">
		<div class="container-fluid">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target="#myNavbar">
					<span class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
			</div>
			<div class="collapse navbar-collapse" id="myNavbar">
				<ul class="nav navbar-nav">
					<li class="null"><a href="/welcome">Home</a></li>
					<li class="dropdown"><a class="dropdown-toggle"
						data-toggle="dropdown" href="#">About <span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="boothistory.html"><h4>History</h4></a></li>
							<li><a href="bootprinci.html"><h4>Courses</h4></a></li>
						</ul></li>

					<li><a href="/show-users">All Users</a></li>
					<li><a href="/register">Application</a></li>
					<li><a href="/offdata">Office</a></li>

				</ul>
				<ul class="nav navbar-nav navbar-right navbar-primary">
					<!-- <li><a href="/register"><span
							class="glyphicon glyphicon-user"></span> Sign up</a></li> -->

					<li><a href="/register"><span
							class="glyphicon glyphicon-log-in"></span> Sign up</a></li>
				</ul>
			</div>
		</div>
	</nav>
	<c:choose>
		<c:when test="${mode=='MODE_HOME' }">
			<div class="container" id="homediv">
				<div class="jumbotron text-center">
					<h1>Welcome to Infidata Technologies</h1>
					<h3>Training|Internship|Counseling</h3>
				</div>
			</div>

		</c:when>

		<c:when test="${mode=='MODE_REGISTER' }">
			<div class="container text-center">
				<h3>New Student Registration</h3>
				<hr>
				<form class="form-horizontal" method="POST" action="save-user">
					<input type="hidden" name="id" value="${user.id }" />
					<div class="form-group">
						<label class="control-label col-md-3">Name</label>
						<div class="col-md-3">
							<input type="text" class="form-control" name="name" required
								value="${user.name }" />
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-md-3">Mobile</label>
						<div class="col-md-3">
							<input type="text" class="form-control" name="mobile" required
								value="${user.mobile }" />
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-md-3">Email</label>
						<div class="col-md-5">
							<input type="text" class="form-control" name="email" required
								value="${user.email }" />
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-md-3">College </label>
						<div class="col-md-5">
							<input type="text" class="form-control" name="college" required
								value="${user.college }" />
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-md-3">Branch</label> <input
							type="" class="box" id="branch" value="${user.branch }"
							placeholder="choose branch" list="no-branch" name="branch">
						<datalist id="no-branch">
							<option value="CS"></option>
							<option value="EC"></option>
							<option value="IS"></option>
							<option value="EEE"></option>
							<option value="BCA"></option>

						</datalist>
					</div>
					<div class="form-group">
						<label class="control-label col-md-3">Semester</label> <input
							type="" class="box" id="semester" value="${user.semester }"
							placeholder="choose semester" list="no-semester" name="semester">
						<datalist id="no-semester">
							<option value="1st Sem"></option>
							<option value="2nd Sem"></option>
							<option value="3rd Sem"></option>
							<option value="4th Sem"></option>
							<option value="5th Sem"></option>
							<option value="6th dem"></option>
							<option value="7th Sem"></option>
							<option value="8th Sem"></option>
						</datalist>
					</div>
					<%-- 	<div class="form-group">
						<label class="control-label col-md-3">Semester </label>
						<div class="col-md-5">
							<input type="text" class="form-control" name="semester" required
								value="${user.semester }" />
						</div>
					</div> --%>
					<div class="form-group">
						<label class="control-label col-md-3">Address </label>
						<div class="col-md-5">

							<textarea class="form-control" rows="5" id="address"
								name="address" required value="${user.address }"></textarea>
						</div>
					</div>

					<div class="form-group">
						<label class="control-label col-md-3">Internship:</label> <input
							type="" class="box" id="internship" value="${user.internship }"
							placeholder="choose domain" list="no-internship"
							name="internship">
						<datalist id="no-internship">
							<option value="Web"></option>
							<option value="Java"></option>
							<option value="Python"></option>
							<option value="I.O.T"></option>
							<option value="Android"></option>
							<option value="Machine Learning"></option>
							<option value="C/C++"></option>
						</datalist>
					</div>

					<div class="form-group">
						<label class="control-label col-md-3">Batch</label> <%-- <input type="select"
							<%-- class="box" id="batch" value="${user.batch }"
						<!-- 	placeholder="Choose Batch" list="no-batch" name="batch">
						<datalist id="no-batch">
							<option value="Weekdays" selected></option>
							<option value="Weekend"></option>
							<option value="Evening"></option>

						</datalist>  --> --%> 
						             <select class="box1" id="batch" name="batch">
						
						<option value=" ${user.batch == weekend ? "weekend" : ""}">Weekend</option>
						<option value=" ${user.batch == weekdays ? "weekdays" : ""}">Weekdays</option>
					   <option value=" ${user.batch == evening ? "evening" : ""}">Evenings</option>
						
						</select> 
					</div>
					<div class="form-group">
						<label class="control-label col-md-3">Start Date </label>
						<div class="col-md-3">
							<input type="text" class="form-control" name="startdate" required
								value="${user.startdate }" />
						</div>
					</div>
					
					<div class="form-group">
						<label class="control-label col-md-3">End Date </label>
						<div class="col-md-3">
							<input type="text" class="form-control" name="enddate" required
								value="${user.enddate }" />
						</div>
					</div>

					<br>
					<br>
					<div class="form-group ">
						<input type="submit" class="btn btn-primary" value="Register" />
					</div>
				</form>
			</div>
		</c:when>
		<c:when test="${mode=='MODE_DATA' }">
			<div class="container text-center">
				<h3>Office Details Form</h3>
				<hr>
				<form class="form-horizontal" method="POST" action="office-user">
					<input type="hidden" name="form" value="${office.sno }" />
					<div class="form-group">
						<label class="control-label col-md-3">Batch No</label>
						<div class="col-md-5">
							<input type="text" class="form-control"
								placeholder="Enter Batch Number " name="batchno" required
								
								value="${office.batchno }" />
						</div>
					</div>
					 <%--  <div class="form-group">
						<label class="control-label col-md-3">Candidate Register Number</label>
						<div class="col-md-5">
							<input type="text" class="form-control"
								placeholder="Enter Register Number" name="id" required
								value="${office.id }" />
						</div>
					</div>  --%> 
					<div class="form-group">
						<label class="control-label col-md-3">Trainer Name </label>
						<div class="col-md-5">
							<input type="text" class="form-control" placeholder="Enter Trainer Name" name="trainer" required
								value="${office.trainer }" />
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-md-3">Fees</label>
						<div class="col-md-5">
							<input type="text" class="form-control" placeholder="Enter Fees" required
								name="fees" value="${office.fees }" />
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-md-3">Receipt Number </label>
						<div class="col-md-5">
							<input type="text" class="form-control"
								placeholder="Enter Receipt Number" name="reciptno" required
								value="${office.reciptno }" />
						</div>
						<br> <br> <br>
						<br>
						<br>
						<div class="form-group ">
							<input type="submit" class="btn btn-primary"
								style="margin-right: 50px;" value="Register" />
						</div>
					</div>
				</form>
			</div>
		</c:when>

		<c:when test="${mode=='ALL_USERS' }">
			<div class="container text-center" id="tasksDiv">
				<h3>Student Info</h3>
				<hr>
				<form action="/search" method="POST">
					Search By Internship: <input type="text" name="internship" />
					<button>Search</button>
				</form>
				<br> <br>
				<div class="table-responsive">
					<table class="table table-striped table-bordered">
						<thead>
							<tr>
								<th>Id</th>
								<th>Name</th>
								<th>Mobile</th>
								<th>Email</th>
								<th>College</th>
								<th>Branch</th>
								<th>Semester</th>
								<th>Address</th>
								<th>Internship</th>
								<th>Batch</th>
								<th>Start date</th>
								<th>End Date</th>
								<th>Delete</th>
								<th>Edit</th>


							</tr>
						</thead>
						<tbody>
							<c:forEach var="user" items="${users }">
								<tr>
									<td>${user.id}</td>
									<td>${user.name}</td>
									<td>${user.mobile}</td>
									<td>${user.email}</td>
									<td>${user.college}</td>
									<td>${user.branch}</td>
									<td>${user.semester}</td>
									<td>${user.address}</td>
									<td>${user.internship}</td>
									<td>${user.batch}</td>
									<td>${user.startdate}</td>
									<td>${user.enddate}</td>

									<td><a href="/delete-user?id=${user.id }"><span
											class="glyphicon glyphicon-trash"></span></a></td>
									<td><a href="/edit-user?id=${user.id }"><span
											class="glyphicon glyphicon-pencil"></span></a></td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
			</div>
		</c:when>
		<c:when test="${mode=='MODE_UPDATE' }">
			<div class="container text-center">
				<h3>Update User</h3>
				<hr>
				<form class="form-horizontal" method="POST" action="save-user">
					<input type="hidden" name="id" value="${user.id }" />
					<div class="form-group">
						<label class="control-label col-md-3">Name</label>
						<div class="col-md-6">
							<input type="text" class="form-control" name="name" required
								value="${user.name }" />
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-md-3">Mobile</label>
						<div class="col-md-6">
							<input type="text" class="form-control" name="mobile" required
								value="${user.mobile }" />
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-md-3">Email</label>
						<div class="col-md-6">
							<input type="text" class="form-control" name="email" required
								value="${user.email }" />
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-md-3">College </label>
						<div class="col-md-6">
							<input type="text" class="form-control" name="college" required
								value="${user.college }" />
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-md-3">Branch </label>
						<div class="col-md-6">
							<input type="text" class="form-control" name="branch" required
								value="${user.branch }" />
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-md-3">Semester </label>
						<div class="col-md-6">
							<input type="text" class="form-control" name="semester" required
								value="${user.semester }" />
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-md-3">Address </label>
						<div class="col-md-7">
							<input type="text" class="form-control" name="address" required
								value="${user.address }" />
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-md-3">Internship </label>
						<div class="col-md-6">
							<input type="select" class="form-control" name="internship"
								required value="${user.internship }" />
						</div>
					</div>

					<div class="form-group">
						<label class="control-label col-md-3">Batch </label>
						<div class="col-md-6">
							<input type="text" class="form-control" name="batch" required
								value="${user.batch }" />
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-md-3">Start Date </label>
						<div class="col-md-6">
							<input type="text" class="form-control" name="startdate" required
								value="${user.startdate }" />
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-md-3">End Date </label>
						<div class="col-md-6">
							<input type="text" class="form-control" name="enddate" required
								value="${user.enddate }" />
						</div>
					</div>
					<div class="form-group ">
						<input type="submit" class="btn btn-primary" value="Update" />
					</div>
				</form>
			</div>
		</c:when>
	</c:choose>
	<!-- Optional JavaScript -->
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
	<script src="static/js/jquery-1.11.1.min.js"></script>
	<script src="static/js/bootstrap.min.js"></script>
</body>
</html>