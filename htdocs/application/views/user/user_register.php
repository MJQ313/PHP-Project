<?php 
defined('BASEPATH') OR exit('No direct script access allowed');
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
    body,#reg{ 
background-color: #b0d1f4;
}
  </style>
</head>
<body>
<nav class="navbar navbar-toggleable-md navbar-light" style="background-color: #4c91db;">
  <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <a class="navbar-brand" href="user/login_home">VHOMES | Register</a>
  <div class="collapse navbar-collapse" id="navbarNav">
    <ul class="navbar-nav">
      <li class="nav-item">
        <a class="nav-link" href="user/login">Login</a>
      </li>
      <li class="nav-item active">
        <a class="nav-link" href="user/register">Register</a>
      </li>
     
    </ul>
  </div>
</nav>
<div class="container-fluid">
   <div class="row">
  <div class="col-md-12">
    <div class="jumbotron" id="reg">

    <div class="col-md-6 offset-md-3">
      <blockquote><h3 style="font-family: arial;">Employee Registration</h3></blockquote>
      <form>
  <div class="form-group" id="em_name_group">
    <label for="em_name">Employee Name</label>
    <input type="text" class="form-control" id="em_name" placeholder="Enter Your Name">
    <small id="em_name_fb" class="form-control-feedback"></small>
  </div>
   <div class="form-group" id="em_irc_group">
    <label for="em_irc">Railway Employee Id</label>
    <input type="number" class="form-control" id="em_irc" placeholder="Enter Your Railway Employee Id">
    <small id="em_irc_fb" class="form-control-feedback"></small>
  </div>
  <div class="form-group" id="em_adhar_group">
    <label for="em_adhar">Aadhar No.</label>
    <input type="text" class="form-control" id="em_adhar"  placeholder="Enter Your Adhar No" maxlength="14">
    <small id="em_adhar_fb" class="form-control-feedback"></small>
  </div>
   <div class="form-group" id="em_mobile_group">
    <label for="em_mobile">Mobile Number</label>
    <input type="text" class="form-control" id="em_mobile" placeholder="Enter Your Mobile Number" maxlength="10">
    <small id="em_mobile_fb" class="form-control-feedback"></small>
  </div>
   <div class="form-group" id="em_id_group">
   <label for="em_id">Choose Employee Id</label>
   <div class="input-group mb-2 mr-sm-2 mb-sm-0">
    <div class="input-group-addon">vhomes@</div>
    <input type="text" class="form-control" id="em_id" placeholder="Choose Employee Id">
    
  </div>
  <small class="form-control-feedback" id="em_id_fb">Employee Id Should Contain more than 8 characters</small>
  </div>
 <div class="form-group" id="em_pass_group">
    <label for="em_pass">Password</label>
    <input type="password" class="form-control" id="em_pass" placeholder="Choose Your Password" >
    <small id="em_pass_fb" class="form-control-feedback"></small>
  </div>
  <button type="button" class="btn btn-primary" id="register">Register</button>
</form>
    </div>
    </div>
  </div>
 </div>

</div>
<nav class="navbar fixed-bottom navbar-light bg-faded">
  <div class="navbar-brand">&copy; Ministry Of Railways , India.</div>
</nav>

	<script src="<?php base_url();?>/js/jquery.js"></script>
	<script src="<?php base_url();?>/js/bootstrap.min.js"></script>
  <script src="<?php base_url();?>/js/toastr.min.js"></script>
    <script src="<?php base_url();?>/js/register.js"></script>
</body>
</html>