<?php 
defined('BASEPATH') OR exit('No direct script access allowed');
if($this->session->userdata('sess_id')){
  redirect('user/login_home');
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
<base href="<?php echo base_url();?>">
	<meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="stylesheet" href="<?php base_url();?>/css/bootstrap.min.css">
<link rel="stylesheet" href="<?php base_url();?>/css/animate.min.css">
<link rel="stylesheet" href="<?php base_url();?>/css/toastr.min.css">
	<title>Hackthon</title>
   <style>
    body,#login_contain{ 
background-color: #b0d1f4;
}
  </style>
</head>
<body>
<nav class="navbar navbar-toggleable-md navbar-light" style="background-color: #4c91db;">
  <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <a class="navbar-brand" href="#">VHOMES | Login</a>
  <div class="collapse navbar-collapse" id="navbarNav">
    <ul class="navbar-nav">
      <li class="nav-item active">
        <a class="nav-link" href="user/login">Login</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="user/register">Register</a>
      </li>
     
    </ul>
  </div>
</nav>
<div class="container-fluid" >
  <div class="row">
  <div class="col-md-12">
    <div class="jumbotron" id="login_contain">
  <div class="col-md-6 offset-md-3">
      <blockquote><h3 style="font-family: arial;">Employee Login</h3></blockquote>
      <form>
  <div class="form-group" id="emid_group">
    <label for="EmployeeId">Employee Id</label>
    <input type="text" class="form-control" id="EmployeeId"  placeholder="Enter Your Employee Id"><small class="form-control-feedback" id="emid_fb"></small>
   
  </div>
  <div class="form-group" id="pass_group">
    <label for="Password">Password</label>
    <input type="password" class="form-control" id="Password" placeholder="Enter Password"><small class="form-control-feedback" id="pass_fb"></small>
  </div>
  
  <button type="submit" class="btn btn-primary" id="login">Login</button>
</form>

  </div>
    </div>
  </div>
 </div>
</div>
<nav class="navbar fixed-bottom navbar-light bg-faded">
  <div class="navbar-brand"><marquee behavior="" direction="">&copy; Ministry Of Railways , India.</marquee></div>
</nav>

	<script src="<?php base_url();?>/js/jquery.js"></script>
	<script src="<?php base_url();?>/js/bootstrap.min.js"></script>
  <script src="<?php base_url();?>/js/toastr.min.js"></script>
  <script src="<?php base_url();?>/js/login.js"></script>
</body>
</html>