<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/css/bootstrap.min.css"
	integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"
	crossorigin="anonymous">
<title>Insert title here</title>
</head>
<body>
<div class="container-fluid">

		<div class="row">
			<div class="col-md-3"></div>
			<div class="col-md-6">

<h2>Ecom Signup</h2>


<form action="esignup" method="post" enctype="multipart/form-data">

<div class="form-group">
	FirstName : <input type="text" name="firstName" class="form-control"/>
	</div>
	
	<div class="form-group">
	Email : <input type="text" name="email" class="form-control"/>
	</div>
	
	<div class="form-group">
	Password : <input type="password" name="password" class="form-control"/>
	</div>
	
	<div class="form-group">
	Profile : <input type="file" name="profilePic" class="form-control"/> 
	</div>
	
	<input type="submit" value="Signup" class="btn btn-success"/>
</form>

</div>


		</div>

	</div>

</body>
</html>