<?php 
defined('BASEPATH') OR exit('No direct script access allowed');
if(!$this->session->userdata('owner_verify_sess_id')){
  redirect('owner/check_approve');
}$rows=$this->db->select('*')->from('request_table')->where('reg_no',$this->session->userdata('owner_verify_sess_id'))->get()->row();
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
	<title>VHOMES | VERIFY HOME</title>
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
  <a class="navbar-brand" href="#">VHOMES | Verifier</a>
  <div class="collapse navbar-collapse" id="navbarNav">
    <ul class="navbar-nav">
    
      <li class="nav-item">
        <a class="nav-link" href="#" id="logout_verify">Logout</a>
      </li>
     
    </ul>
  </div>
</nav>
<div class="container-fluid">
  <div class="jumbotron" id="login_contain">
  <?php if($rows->status==2){
    $status="Pending";
    }else if($rows->status==1){
      $status="Approved";
      }else if($rows->status==0){
      $status="Not Approved";
      }?>
    <blockquote>Your Holiday Home Status is <?php echo $status;?></blockquote>
    <?php if($status=="Approved"){
      ?><blockquote>Owner Id :  <?php echo $this->session->userdata('owner_verify_sess_id');?></blockquote>
      <blockquote>Password :  Same as your Approval Password</blockquote>
       <input type="hidden" value="<?php echo $this->session->userdata('owner_verify_sess_id');?>" id="ver_entry_edit">
    <button class="btn btn-success" id="ver_entry">Confirm Credentials</button><?php }?>
    <?php if($status=="Not Approved"){?>
   <blockquote>Please give valid data for Approval.</blockquote>
   <input type="hidden" value="<?php echo $this->session->userdata('owner_verify_sess_id');?>" id="del_entry_edit">
 <button class="btn btn-success" id="del_entry">Confirm Disapproval</button>
   <?php }?>
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
    $("#logout_verify").click(function(event){
      event.preventDefault();
      window.location.href="owner/owner_verify_logout";
    });
    $("#del_entry").click(function(event){
      event.preventDefault();
       $.ajax({
                        url: "owner/del_entry_req"
                        , type: "POST"
                        , data: {
                            del_entry_edit: $("#del_entry_edit").val(),
                            
                          
                            
                        },beforeSend:function(){
                     $("#del_entry").html('Confirming');
                        }
                        , success: function (data) {
                            if (data == "failed") {
                         $("#del_entry").html('Confirm Disapproval');
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
                              $("#del_entry").html('Confirm Disapproval');
                         
                         toastr['success']("Successfully Confirmed!")
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
                    window.location.href="owner/owner_verify_logout";
                                 
                            }
                        }
                    });
    });
    $("#ver_entry").click(function(event){
      event.preventDefault();
       $.ajax({
                        url: "owner/ver_entry_req"
                        , type: "POST"
                        , data: {
                            ver_entry_edit: $("#ver_entry_edit").val(),
                            
                          
                            
                        },beforeSend:function(){
                     $("#ver_entry").html('Confirming');
                        }
                        , success: function (data) {
                            if (data == "failed") {
                         $("#ver_entry").html('Confirm Credentials');
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
                              $("#ver_entry").html('Confirm Credentials');
                         
                         toastr['success']("Successfully Confirmed!")
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
                    window.location.href="owner/owner_verify_logout";
                                 
                            }
                        }
                    });
    });
   });
 </script>
</body>
</html>