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
	<title>Hackthon</title>
</head>
<body>  
<nav class="navbar navbar-toggleable-md navbar-light bg-success">
  <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <a class="navbar-brand" href="#">VHOMES</a>
  <div class="collapse navbar-collapse" id="navbarNav">
    <ul class="navbar-nav">
      <li class="nav-item">
        <a class="nav-link" href="user/login">Login</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="user/register">Register</a>
      </li>
     
    </ul>
  </div>
</nav>
  
  <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
  <ol class="carousel-indicators">
    <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
  </ol>
  
<div class="jumbotron">
 
     
  <h1 class="display-3">Welcome, User!</h1>
  <p class="lead">This website is only for employees of <strong>Ministry Of Railways , India</strong>. You must have your <strong>Employee Id</strong> to proceed furthur.</p>
  <hr class="my-4">

  <p class="lead">
    <a class="btn btn-outline-success btn-lg" href="user/login" role="button">Login</a>
     <a class="btn btn-outline-danger btn-lg" href="user/register" role="button">Register</a>
      
  </p>

 </div>
<nav class="navbar fixed-bottom navbar-light bg-faded">
  <div class="navbar-brand">&copy; Ministry Of Railways , India.</div>
</nav>

	<script src="<?php base_url();?>/js/jquery.js"></script>
	<script src="<?php base_url();?>/js/bootstrap.min.js"></script>
</body>
</html>