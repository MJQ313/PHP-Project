<?php 
defined('BASEPATH') OR exit('No direct script access allowed');
if($this->session->userdata('owner_verify_sess_id')){
  redirect('owner/owner_verify_home');
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
	<title>VHOMES | OWNER LOGIN</title>
   <style>
    body,#login_own{ 
background-color: #b0d1f4;
}
  </style>
</head>
<body>
<nav class="navbar navbar-toggleable-md navbar-light" style="background-color: #4c91db;">
  <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <a class="navbar-brand" href="#">VHOMES | Holiday Home Verify</a>
  <div class="collapse navbar-collapse" id="navbarNav">
    <ul class="navbar-nav">
      <li class="nav-item">
        <a class="nav-link" href="owner/">Login</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="owner/register">Register</a>
      </li>
     
       <li class="nav-item active">
        <a class="nav-link" href="owner/check_approve">Check Approval</a>
      </li>
    </ul>
  </div>
</nav>
<div class="container-fluid" >
  <div class="row">
  <div class="col-md-12">
    <div class="jumbotron" id="login_own">
  <div class="col-md-6 offset-md-3">
      <blockquote><h3 style="font-family: arial;">Holiday Home Verifier</h3></blockquote>
      <form>
  <div class="form-group" id="hh_reg_group">
    <label for="hh_reg">Holiday Home Registration Number</label>
    <input type="text" class="form-control" id="hh_reg"  placeholder="Enter Registration Number"><small class="form-control-feedback" id="hh_reg_fb"></small>
   
  </div>
  <div class="form-group" id="ap_pass_group">
    <label for="ap_pass">Approval Password</label>
    <input type="password" class="form-control" id="ap_pass" placeholder="Enter Password"><small class="form-control-feedback" id="ap_pass_fb"></small>
  </div>
  
  <button type="submit" class="btn btn-primary" id="check_approve_process">Check Approval</button>
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
  <script>
    $(document).ready(function(){
      $("#check_approve_process").click(function(event){
        event.preventDefault();
        if($("#hh_reg").val()==""){
          $("#hh_reg_group").addClass('has-danger');
          $("#hh_reg_fb").html('Registration Number can not be Empty');
           $("#ap_pass_group").removeClass('has-danger');
          $("#ap_pass_fb").html('');
        }else if($("#ap_pass").val()==""){
   $("#hh_reg_group").removeClass('has-danger');
          $("#hh_reg_fb").html('');
           $("#ap_pass_group").addClass('has-danger');
          $("#ap_pass_fb").html('Approval Password can not be empty');
        }else{
          $("#hh_reg_group").removeClass('has-danger');
          $("#hh_reg_fb").html('');
           $("#ap_pass_group").removeClass('has-danger');
          $("#ap_pass_fb").html('');
                 $.ajax({
                        url: "owner/check_approve_process"
                        , type: "POST"
                        , data: {
                            hh_reg: $("#hh_reg").val(),
                            ap_pass: $("#ap_pass").val(),
                          
                            
                        },beforeSend:function(){
                     $("#check_approve_process").html('Verifying');
                        }
                        , success: function (data) {
                            if (data == "failed") {
                                             $("#check_approve_process").html('Check Approval');
                         toastr['error']("Incorrect Credentials !")
                    toastr.options = {
                        "closebutton": false
                        , "debug": false
                        , "newestOnTop": false
                        , "progressBar": true
                        , "positionClass": "toast-top-right"
                        , "preventDuplicates": false
                        , "onclick": null
                        , "showDuration": "300"
                        , "hideDuration": "1000"
                        , "timeOut": "5000"
                        , "extendedTimeOut": "1000"
                        , "showEasing": "swing"
                        , "hideEasing": "linear"
                        , "showMethod": "fadeIn"
                        , "hideMethod": "fadeOut"
                    }
                            }
                            else if (data == "success") {
                              $("#check_approve_process").html('Check Approval');
                         
                             
                         
                         toastr['success']("Successfull!")
                    toastr.options = {
                        "closebutton": false
                        , "debug": false
                        , "newestOnTop": false
                        , "progressBar": true
                        , "positionClass": "toast-top-right"
                        , "preventDuplicates": false
                        , "onclick": null
                        , "showDuration": "300"
                        , "hideDuration": "1000"
                        , "timeOut": "5000"
                        , "extendedTimeOut": "1000"
                        , "showEasing": "swing"
                        , "hideEasing": "linear"
                        , "showMethod": "fadeIn"
                        , "hideMethod": "fadeOut"
                    }
                    window.location.href="owner/owner_verify_home";
                                 
                            }
                        }
                    });
        }
      });
    });
  </script>
</body>
</html>