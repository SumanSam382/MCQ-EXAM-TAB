<!DOCTYPE html>
<head>
	<!-- templatemo 418 form pack -->
    <!-- 
    Form Pack
    http://www.templatemo.com/preview/templatemo_418_form_pack 
    -->
    <meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<title>ADMIN AREA </title>
		<meta name="description" content="Twitter Bootstrap Modal Login Popup - Social Login Popup ">
		<meta name="viewport" content="width=device-width, initial-scale=1">

		<!-- Place favicon.ico and apple-touch-icon.png in the root directory -->
		<link href='http://fonts.googleapis.com/css?family=Bree+Serif' rel='stylesheet' type='text/css'>
		<link href='http://fonts.googleapis.com/css?family=Philosopher' rel='stylesheet' type='text/css'>
		
		
		<link rel="stylesheet" href="css2/bootstrap.min.css"/>
		<link rel="stylesheet" href="css2/font-awesome.min.css"/>
	
		<link rel="stylesheet" href="css2/style.css" />
		<script src="js/vendor/modernizr-2.6.2.min.js"></script>
		<script src="js/vendor/jquery-1.10.2.min.js"></script>
		<script src="js/vendor/bootstrap.min.js"></script>
	<title>ADMIN AREA</title>
	<meta name="keywords" content="" />
	<meta name="description" content="" />
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link href="http://fonts.googleapis.com/css?family=Open+Sans:300,400,700" rel="stylesheet" type="text/css">
	<link href="css2/bootstrap.min.css" rel="stylesheet" type="text/css">
	<link href="css2/bootstrap-theme.min.css" rel="stylesheet" type="text/css">
	<link href="css2/font-awesome.min.css" rel="stylesheet" type="text/css">
	<link href="css2/templatemo_style.css" rel="stylesheet" type="text/css">	
</head>
<body class="templatemo-bg-image-2">
	<h1>ADMIN AREA</h1>
    <h2><span class="gray"></span> <span class="green"></span></h2>
	<div class="container center-block templatemo-form-list-container templatemo-container">
		<div class="col-md-12">		
		<table class="table table-striped table-hover">
	      <thead>
	        <tr>
	          <th>#</th>
	          <th>Name</th>
	          <th class="text-right">View</th>
	        </tr>
	      </thead>
	      <tbody>
	        <tr>
	          <td>1</td>
	          <td>ADD DATA</td>
	          <td class="text-right"><a href="AddData.jsp" class="btn btn-info"><i class="fa fa-arrow-circle-right"></i></a></td>
	        </tr>
	        <tr>
	          <td>2</td>
	          <td>LEADERSHIP BOARD</td>
	          <td class="text-right"><a href="leaderboard.jsp" class="btn btn-info"><i class="fa fa-arrow-circle-right"></i></a></td>
	        </tr>
	        <tr>
	          <td>3</td>
	          <td>PERSONAL DETAILS</td>
	          <td class="text-right"><a href="#login-modal " data-target="" data-toggle="modal" class="btn btn-info"><i class="fa fa-arrow-circle-right"></i></a></td>
	        </tr>
	        <!--tr>
	          <td>4</td>
	          <td>Forgot Password</td>
	          <td class="text-right"><a href="forgot-password.html" class="btn btn-info"><i class="fa fa-arrow-circle-right"></i></a></td>
	        </tr>
	        <tr>
	          <td>5</td>
	          <td>Create Account</td>
	          <td class="text-right"><a href="create-account.html" class="btn btn-info"><i class="fa fa-arrow-circle-right"></i></a></td>
	        </tr>
	        <tr>
	          <td>6</td>
	          <td>Contact Form 1</td>
	          <td class="text-right"><a href="contact-form-1.html" class="btn btn-info"><i class="fa fa-arrow-circle-right"></i></a></td>
	        </tr>
	        <tr>
	          <td>7</td>
	          <td>Contact Form 2</td>
	          <td class="text-right"><a href="contact-form-2.html" class="btn btn-info"><i class="fa fa-arrow-circle-right"></i></a></td>
	        </tr>
	        <tr>
	          <td>8</td>
	          <td>Payment Form</td>
	          <td class="text-right"><a href="payment-form.html" class="btn btn-info"><i class="fa fa-arrow-circle-right"></i></a></td>
	        </tr-->
	      </tbody>
	    </table>
                    <br><br> <a href="index.html" >LOGOUT</a>
		</div>
	</div>
    
<div class="modal fade" id="login-modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	<div class="modal-dialog">
    	<div class="modal-content">
      		<div class="modal-header login_modal_header">
        		<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
        		<h2 >Login to Your Account</h2>
      		</div>
      		<div class="modal-body login-modal">
      			<p>Stack Overflow is a question and answer site for professional and enthusiast programmers. It's 100% free, no registration required</p>
      			<br/>
      			<div class="clearfix"></div>
      			<div id='social-icons-conatainer'>
	        		<div class='modal-body-left'>
	        			<div class="form-group">
						<form action="Pdetails.jsp" method="get" >
		              		<input type="text" name="t1" id="username" width=100% placeholder="Enter Team name" value="" class="form-control login-field">
		              		</i>
		            	</div>
						<div class="form-group">
							<input type="text" name="t2" id="username" width=100% placeholder="Enter name" value="" class="form-control login-field">
		              		</i>
		            	</div>
					    
		
		
		            	<div class="form-group">
		            	  	<input type="password" name="t3" id="login-pass" placeholder="Password" value="" class="form-control login-field">
		              		</i>
		            	</div>
						
		
		            	<input type="submit" value="Login" class="btn btn-success modal-login-btn">
		            	</form>
						<!--a href="#" class="login-link text-center">Lost your password?</a-->
	        		</div>
	        	
	        		<!--div class='modal-body-right'>
	        			<div class="modal-social-icons">
	        				<a href='#' class="btn btn-default facebook"> <i class="fa fa-facebook modal-icons"></i> Sign In with Facebook </a>
	        				<a href='#' class="btn btn-default twitter"> <i class="fa fa-twitter modal-icons"></i> Sign In with Twitter </a>
	        				<a href='#' class="btn btn-default google"> <i class="fa fa-google-plus modal-icons"></i> Sign In with Google </a>
	        				<a href='#' class="btn btn-default linkedin"> <i class="fa fa-linkedin modal-icons"></i> Sign In with Linkedin </a>
	        			</div> 
	        		</div-->	
	        		<!--div id='center-line'> OR </div-->
	        	</div>																												
        		<div class="clearfix"></div>
        		
        		<!--div class="form-group modal-register-btn">
        			<button class="btn btn-default"> New User Please Register</button>
        		</div-->
      		</div>
      		<!--div class="clearfix"></div>
      		<div class="modal-footer login_modal_footer">
      		</div-->
    	</div>
  	</div>
</div>
</body>
</html>
