<?php 
defined('BASEPATH') OR exit('No direct script access allowed');
if(!$this->session->userdata('sess_id')){
  redirect('user/login');
}$pnr_no=$this->session->userdata('pnr_no');
   $data_pnr=$this->db->select('*')->from('pnr')->where('pnr',$pnr_no)->get()->row();

   
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
	<title>Hackthon | PNR Results</title>
   <style>
    body,#jum{ 
background-color: #b0d1f4;
}
  </style>
</head>
<body>
<nav class="navbar navbar-toggleable-md navbar-light" style="background-color: #4c91db;">
  <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <a class="navbar-brand" href="user/login_home">VHOMES</a>
  <div class="collapse navbar-collapse" id="navbarNav">
     <ul class="navbar-nav">
      <li class="nav-item">
        <a class="nav-link active" href="user/login_home_">Home</a>
      </li>
    
     
    </ul>
  </div>
</nav>

<div class="container-fluid">
  <div class="jumbotron" id="jum"> 
    <div class="row">
<form action="">
  <div class="form-group" id="home_se_group">
    <label for="">Select Holiday Home</label>
    <select id="home_se" class="form-control">
      <option value="">Select Holiday Home</option>
      <?php foreach($hh as $rows){?>
      <option value="<?php echo $rows->holiday_home;?>"><?php echo $rows->holiday_home;?></option><?php }?>
    </select>
    <small class="form-control-feedback" id="home_se_fb"></small>
  </div>
  
  <div class="form-group">
    <a class="btn btn-primary" id="get_avail_process" href="<?php base_url();?>/user_book/">Get Availability</a>
  </div>
</form>
</div></div></div>   
<nav class="navbar fixed-bottom navbar-light bg-faded">
  <div class="navbar-brand"><marquee behavior="" direction="">&copy; Ministry Of Railways , India.</marquee></div>
</nav>


	<script src="<?php base_url();?>/js/jquery.js"></script>
	<script src="<?php base_url();?>/js/bootstrap.min.js"></script>
  <script src="<?php base_url();?>/js/toastr.min.js"></script>
  <script> 
$(document).ready(function(){
  $("#get_avail_process").click(function(event){
    event.preventDefault();
  if($("#home_se").val()==""){
$("#home_se_group").addClass('has-danger');
$("#home_se_fb").html('please select a holiday home');
$("#s_date_group").removeClass('has-danger');
$("#s_date_fb").html('');
  }else{
    window.location.href="/user_book";
  }
  });

});
  </script>
</body>
</html>