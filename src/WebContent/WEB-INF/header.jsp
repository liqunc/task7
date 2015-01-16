<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<head>
<meta charset="utf-8">

<title>Task 7</title>

<!-- Bootstrap -->
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="http://v3.bootcss.com/examples/dashboard/dashboard.css"
	rel="stylesheet">
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="http://cdn.bootcss.com/jquery/1.11.1/jquery.min.js">
	
</script>
<!-- Include all compiled plugins (below), or include individual files as needed -->
<script src="js/bootstrap.min.js"></script>
</head>

<div class="navbar navbar-inverse navbar-fixed-top" role="navigation">
	<div class="container">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle collapsed"
				data-toggle="collapse" data-target=".navbar-collapse">
				<span class="sr-only">Toggle navigation</span> <span
					class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
		</div>
		<div class="navbar-collapse collapse">

			<form class="navbar-form navbar-right" role="form" method="POST">

				<div class="form-group">
					<input type="text" placeholder="Email" name="email_address"
						class="form-control">
				</div>
				<div class="form-group">
					<input type="password" placeholder="Password" name="password"
						class="form-control">
				</div>
				<button class="btn btn-success"
					onclick="dispatch(this.form, 'servlet/LoginServlet')">Sign
					in</button>
				<button class="btn btn-success"
					onclick="dispatch(this.form, 'servlet/RegServlet')">Register</button>
			</form>

		</div>
		<!--/.navbar-collapse -->
	</div>
</div>


<!-- side bar-->

<div class="container-fluid">
	<div class="row">
		<div class="row">
			<div class="col-sm-3 col-md-2 sidebar">

				<ul class="nav nav-sidebar">

					<li><a href="www.google.com"> View Account </a></li>
					<li><a href="www.google.com"> Buy Fund </a></li>
					<li><a href="www.google.com"> Sell Fund </a></li>
					<li><a href="www.google.com"> Request Check </a></li>
					<li><a href="www.google.com"> Transaction History </a></li>
					<li><a href="www.google.com"> Research Fund </a></li>
				</ul>

			</div>
		</div>
	</div>
</div>