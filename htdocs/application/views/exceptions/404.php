<?php 
defined('BASEPATH') OR exit('No direct script access allowed');
?>
<!DOCTYPE html>
<html lang="en">
<head>
<base href="<?php echo base_url();?>">
	<meta charset="UTF-8">
<link rel="stylesheet" href="<?php base_url();?>/css/bootstrap.min.css">
<link rel="stylesheet" href="<?php base_url();?>/css/animate.min.css">
	<title>Hackthon</title>
</head>
<body>
<nav class="navbar navbar-toggleable-md navbar-light bg-success">
  <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <a class="navbar-brand" href="#">Hackathon</a>
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
<div class="jumbotron bg-danger">
 
     
  <h1 class="display-3">Not Found!</h1>
  <p class="lead">This page does not belong to any prior information about this website.</p>
  <hr class="my-4">

  <p class="lead">
  </p>

 </div>
<nav class="navbar fixed-bottom navbar-light bg-faded">
  <div class="navbar-brand">&copy; Ministry Of Railways , India.</div>
</nav>

	<script src="<?php base_url();?>/js/jquery.js"></script>
	<script src="<?php base_url();?>/js/bootstrap.min.js"></script>
</body>
</html>