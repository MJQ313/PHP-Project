<?php 
defined('BASEPATH') OR exit('No direct script access allowed');
if($this->session->userdata('admin_sess_id')){
  redirect('admin/login_home');
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
	<title>VHOMES | ADMIN LOGIN</title>
</head>
<body>
<nav class="navbar navbar-toggleable-md navbar-light bg-success">
  <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <a class="navbar-brand" href="admin/login_home">VHOMES | Admin Login</a>
 
</nav>
<div class="container-fluid">
  <div class="row">
  <div class="col-md-12">
    <div class="jumbotron">
  <div class="col-md-6 offset-md-3">
      <blockquote><h3 style="font-family: arial;">Admin Login</h3></blockquote><hr>
      <form>
  <div class="form-group" id="adminid_group">
    <label for="adminid">Admin Id</label>
    <input type="text" class="form-control" id="adminid"  placeholder="Enter Admin Id"><small class="form-control-feedback" id="adminid_fb"></small>
   
  </div>
  <div class="form-group" id="adminpass_group">
    <label for="adminpass">Password</label>
    <input type="password" class="form-control" id="adminpass" placeholder="Enter Password"><small class="form-control-feedback" id="adminpass_fb"></small>
  </div>
  
  <button type="submit" class="btn btn-primary" id="login">Login</button>
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
  <script>
    $(document).ready(function(){
      $("#login").click(function(event){
        event.preventDefault();
        if($("#adminid").val()==""){
          $("#adminpass_group").removeClass('has-danger');
            $("#adminpass_fb").html('');
          $("#adminid_group").addClass('has-danger');
          $("#adminid_fb").html('Admin Id cannot be empty');
              }else 
        if($("#adminpass").val()==""){
           $("#adminid_group").removeClass('has-danger');
            $("#adminid_fb").html('');
          $("#adminpass_group").addClass('has-danger');
          $("#adminpass_fb").html('Password cannot be empty');
          

        }else{
          $("#adminpass_group").removeClass('has-danger');
            $("#adminpass_fb").html('');
            $("#adminid_group").removeClass('has-danger');
            $("#adminid_fb").html('');
           
              $.ajax({
                        url: "admin/login_process"
                        , type: "POST"
                        , data: {
                            adminid: $("#adminid").val()
                            , adminpass: $("#adminpass").val()
                        },beforeSend:function(){
                     $("#login").html('Logging In');
                        }
                        , success: function (data) {
                            if (data == "failed") {
                         $("#login").html('Login');
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
                         $("#login").html('Taking you to Employee Home');
                         window.location.href="admin/login_home";
                                
                            }
                        }
                    });
        }

      });
    });
  </script>
</body>
</html>