<?php 
defined('BASEPATH') OR exit('No direct script access allowed');
if($this->session->userdata('owner_sess_id')){
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
	<title>Hackthon | OWNER LOGIN</title>
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
  <a class="navbar-brand" href="#">VHOMES | Owner Login</a>
  <div class="collapse navbar-collapse" id="navbarNav">
    <ul class="navbar-nav">
      <li class="nav-item active">
        <a class="nav-link" href="owner/">Login</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="owner/register">Register</a>
      </li>
       <li class="nav-item">
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
      <blockquote><h3 style="font-family: arial;">Owner Login</h3></blockquote>
      <form>
  <div class="form-group" id="owner_id_group">
    <label for="owner_id">Owner Id</label>
    <input type="text" class="form-control" id="owner_id"  placeholder="Enter Your Owner Id"><small class="form-control-feedback" id="owner_id_fb"></small>
   
  </div>
  <div class="form-group" id="owner_pass_group">
    <label for="owner_pass">Password</label>
    <input type="password" class="form-control" id="owner_pass" placeholder="Enter Password"><small class="form-control-feedback" id="owner_pass_fb"></small>
  </div>
  
  <button type="submit" class="btn btn-primary" id="login_owner_process">Login</button>
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
$("#login_owner_process").click(function(event){
  event.preventDefault();
  if($("#owner_id").val()==""){
    $("#owner_id_group").addClass('has-danger');
    $("#owner_id_fb").html('Owner Id can not be Empty');
     $("#owner_pass_group").removeClass('has-danger');
    $("#owner_pass_fb").html('');
  }else if($("#owner_id").val()==""){
    $("#owner_id_group").removeClass('has-danger');
    $("#owner_id_fb").html('');
     $("#owner_pass_group").addClass('has-danger');
    $("#owner_pass_fb").html('Password can not be Empty');
  }else{
    $("#owner_id_group").removeClass('has-danger');
    $("#owner_id_fb").html('');
     $("#owner_pass_group").removeClass('has-danger');
    $("#owner_pass_fb").html('');
    $.ajax({
                        url: "owner/login_process"
                        , type: "POST"
                        , data: {
                            owner_id: $("#owner_id").val(),
                            owner_pass: $("#owner_pass").val(),
                          
                            
                        },beforeSend:function(){
                     $("#login_owner_process").html('Logging  In');
                        }
                        , success: function (data) {
                            if (data == "failed") {
                                             $("#login_owner_process").html('Login');
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
                                 $("#login_owner_process").html('Login');
                         
                             
                         
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