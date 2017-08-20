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
  <a class="navbar-brand" href="user/login_home">VHOMES | Owner Register</a>
  <div class="collapse navbar-collapse" id="navbarNav">
    <ul class="navbar-nav">
      <li class="nav-item">
        <a class="nav-link" href="owner/">Login</a>
      </li>
      <li class="nav-item active">
        <a class="nav-link" href="owner/register">Register</a>
      </li>
        <li class="nav-item">
        <a class="nav-link" href="owner/check_approve">Check Approval</a>
      </li>
     
    </ul>
  </div>
</nav>
<div class="container-fluid">
   <div class="row">
  <div class="col-md-12">
    <div class="jumbotron" id="reg">

    <div class="col-md-6 offset-md-3">
      <blockquote><h3 style="font-family: arial;">Holiday Home Registration</h3></blockquote>
      <form>
  <div class="form-group" id="or_city_group">
    <label for="or_city">City Name</label>
    <input type="text" class="form-control" id="or_city" placeholder="Enter City Name">
    <small id="or_city_fb" class="form-control-feedback"></small>
  </div>
   <div class="form-group" id="or_reg_group">
    <label for="or_reg">Hotel Registration Number</label>
    <input type="text" class="form-control" id="or_reg" placeholder="Enter Your Hotel Registration Number">
    <small id="or_reg_fb" class="form-control-feedback"></small>
  </div>
  <div class="form-group" id="or_add_group">
    <label for="or_add">Address</label>
    <textarea id="or_add" cols="30" rows="10" class="form-control"></textarea>
    <small id="or_add_fb" class="form-control-feedback"></small>
  </div>
   <div class="form-group" id="or_pass_group">
    <label for="or_pass">Approval Password</label>
    <input type="password" class="form-control" id="or_pass" placeholder="Enter Approval Password" >
    <small id="or_pass_fb" class="form-control-feedback"></small>
  </div>
   

 
  <button type="button" class="btn btn-primary" id="send_req">Send Request</button>
</form>
    </div>
    </div>
  </div>
 </div>
<div class="alert alert-success" id="fb"></div>
</div>
<nav class="navbar fixed-bottom navbar-light bg-faded">
  <div class="navbar-brand">&copy; Ministry Of Railways , India.</div>
</nav>

	<script src="<?php base_url();?>/js/jquery.js"></script>
	<script src="<?php base_url();?>/js/bootstrap.min.js"></script>
  <script src="<?php base_url();?>/js/toastr.min.js"></script>
   <script>
     $(document).ready(function(){
      $("#send_req").click(function(event){
        event.preventDefault();
        if($("#or_city").val()==""){
          $("#or_city_group").addClass('has-danger');
          $("#or_city_fb").html('City can not be Empty');
          $("#or_reg_group").removeClass('has-danger');
          $("#or_reg_fb").html('');
          $("#or_add_group").removeClass('has-danger');
          $("#or_add_fb").html('');
$("#or_pass_group").removeClass('has-danger');
          $("#or_pass_fb").html('');
        }else if($("#or_reg").val()==""){
$("#or_city_group").removeClass('has-danger');
          $("#or_city_fb").html('');
          $("#or_reg_group").addClass('has-danger');
          $("#or_reg_fb").html('Registration Number can not be Empty');
          $("#or_add_group").removeClass('has-danger');
          $("#or_add_fb").html('');
$("#or_pass_group").removeClass('has-danger');
          $("#or_pass_fb").html('');
        }else if($("#or_add").val()==""){
$("#or_city_group").removeClass('has-danger');
          $("#or_city_fb").html('');
          $("#or_add_group").addClass('has-danger');
          $("#or_add_fb").html('Address can not be Empty');
          $("#or_reg_group").removeClass('has-danger');
          $("#or_reg_fb").html('');
$("#or_pass_group").removeClass('has-danger');
          $("#or_pass_fb").html('');
        }else if($("#or_pass").val()==""){
$("#or_city_group").removeClass('has-danger');
          $("#or_city_fb").html('');
          $("#or_pass_group").addClass('has-danger');
          $("#or_pass_fb").html('Password can not be Empty');
          $("#or_add_group").removeClass('has-danger');
          $("#or_add_fb").html('');
$("#or_reg_group").removeClass('has-danger');
          $("#or_reg_fb").html('');
        }else{
$("#or_city_group").removeClass('has-danger');
          $("#or_city_fb").html('');
          $("#or_pass_group").removeClass('has-danger');
          $("#or_pass_fb").html('');
          $("#or_add_group").removeClass('has-danger');
          $("#or_add_fb").html('');
$("#or_reg_group").removeClass('has-danger');
          $("#or_reg_fb").html('');
          $.ajax({
                        url: "owner/send_reque"
                        , type: "POST"
                        , data: {
                            or_city: $("#or_city").val(),
                            or_reg: $("#or_reg").val(),
                            or_add: $("#or_add").val(),
                            or_pass: $("#or_pass").val()
                            
                        },beforeSend:function(){
                     $("#send_req").html('Sending');
                        }
                        , success: function (data) {
                            if (data == "failed") {
                              $("#send_req").html('Send Request');
                         toastr['warning']("Already Applied !")
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
                              $("#send_req").html('Send Request');
                              $("#fb").html('Your Request is Forwarded to the Admin you can check your approval status for your owner Credentials');
                             
                         
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
                    
                                 
                            }
                        }
                    });

        }
      });
     });
   </script>
</body>
</html>