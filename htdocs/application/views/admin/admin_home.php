<?php 
defined('BASEPATH') OR exit('No direct script access allowed');
if(!$this->session->userdata('admin_sess_id')){
  redirect('admin/admin_login');
}$rows_reg=$this->db->select('*')->from('reg_holiday_homes')->get()->result();
$rows_fare=$this->db->select('*')->from('rates')->get()->result();
$rows_users=$this->db->select('*')->from('employees')->get()->result();
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
	<title>VHOMES | ADMIN</title>
</head>
<body>
<nav class="navbar navbar-toggleable-md navbar-light" style="background-color: #4c91db;">
  <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <a class="navbar-brand" href="#">VHOMES | Admin</a>
  <div class="collapse navbar-collapse" id="navbarNav">
    <ul class="navbar-nav">
      <li class="nav-item active">
        <a class="nav-link" href="admin/logout">Logout</a>
      </li>
      
    </ul>
  </div>
</nav><div class="contanier-fluid" id="reg_holiday_homes_display">
  <div class="jumbotron">
  <div class="col-md-12">
    <button class="btn btn-outline-danger" id="reg_holiday_homes_cancel">Cancel</button>
     <div class="card">
     <table class="table table-striped table-responsive">
       <thead class="thead-inverse">
         <tr>
         <th>Choice No.</th>
           <th>Registration Number</th>
      <th>Holiday Home</th>  <th>City</th>
           <th>UID</th>
         <th>Password</th>
           <th colspan="8">Rooms</th>
           <th>Status</th>
      
      
           
         </tr>
         <tr>
           <th></th>
           <th></th>
           <th></th>
           <th></th>
           <th></th>
           <th></th>
           <th>AL</th>
           <th>AH</th>
           <th>BL</th>
           <th>BH</th>
           <th>CL</th>
           <th>CH</th>
           <th>DL</th>
           <th>DH</th><th></th>
         </tr>
       </thead>
       <tbody>
       <?php $i=1; foreach($rows_reg as $row){?>
       <tr>
       <th><?php echo $i;?></th>
       <th><?php echo $row->reg_no;?></th>
       <th><?php echo $row->holiday_home;?></th>
       <th><?php echo $row->city;?></th>
       <th><?php echo $row->uid;?></th>
       <th><?php echo $row->password;?></th>
       <th><?php echo $row->AL;?></th>
       <th><?php echo $row->AH;?></th>
       <th><?php echo $row->BL;?></th>
       <th><?php echo $row->BH;?></th>
       <th><?php echo $row->CL;?></th>
       <th><?php echo $row->CH;?></th>
       <th><?php echo $row->DL;?></th>
       <th><?php echo $row->DH;?></th>
       <th><?php echo $row->status;?></th></tr><?php $i++;}?>
       </tbody>
     </table><br>
</div>

   
</div>
</div>
</div>
<div class="contanier-fluid" id="display_users">
  <div class="jumbotron">
  <div class="col-md-10">
    <button class="btn btn-outline-danger" id="users_cancel">Cancel</button>
     <div class="card">
     <table class="table table-striped table-responsive">
       <thead class="thead-inverse">
         <tr>
         <th>Choice No.</th>
           <th>Aadhar Number</th>
      <th>Employee Id</th> 
      <th>Name</th> 
           <th>Mobile Number</th>
         <th>Email</th>
           
           <th>Grade</th>
      
      
           
         </tr>
         
       </thead>
       <tbody>
       <?php $i=1; foreach($rows_users as $row){?>
       <tr>
       <th><?php echo $i;?></th>
       <th><?php echo $row->adhar_no;?></th>
       <th><?php echo $row->emid;?></th>
       <th><?php echo $row->name;?></th>
       <th><?php echo $row->email;?></th>
       <th><?php echo $row->mobile;?></th>
       <th><?php echo $row->grade;?></th>
       
       </tr><?php $i++;}?>
       </tbody>
     </table><br>
</div>

   
</div>
</div>
</div>
<div class="contanier-fluid" id="reg_holiday_homes_fare">
  <div class="jumbotron">
  <div class="col-md-12">
    <button class="btn btn-outline-danger" id="fares_cancel">Cancel</button>
     <div class="card">
     <table class="table table-striped table-responsive">
       <thead class="thead-inverse">
         <tr>
         <th>Choice No.</th>
           <th>Registration Number</th>
      <th>Holiday Home</th> 
         
           <th colspan="8">Rates</th>
           <th>Policy</th>
      
      
           
         </tr>
         <tr>
          
          
           <th></th>
           <th></th>
           <th></th>
           <th>AL</th>
           <th>AH</th>
           <th>BL</th>
           <th>BH</th>
           <th>CL</th>
           <th>CH</th>
           <th>DL</th>
           <th>DH</th>
           <th></th>
         </tr>
       </thead>
       <tbody>
       <?php $i=1; foreach($rows_fare as $row){?>
       <tr>
       <th><?php echo $i;?></th>
       <th><?php echo $row->reg_no;?></th>
       <th><?php echo $row->holiday_home;?></th>
       <th><?php echo $row->rate_al;?></th>
       <th><?php echo $row->rate_ah;?></th>
       <th><?php echo $row->rate_bl;?></th>
       <th><?php echo $row->rate_bh;?></th>
       <th><?php echo $row->rate_cl;?></th>
       <th><?php echo $row->rate_ch;?></th>
       <th><?php echo $row->rate_dl;?></th>
       <th><?php echo $row->rate_dh;?></th>
       <th><?php echo $row->policy;?></th></tr><?php $i++;}?>
       </tbody>
     </table><br>
</div>

   
</div>
</div>
</div>

<div class="contanier-fluid" id="req_display">
  <div class="jumbotron">
  <div class="col-md-7 offset-md-2">

     <div class="card">
     <table class="table table-striped table-responsive">
       <thead class="thead-inverse">
         <tr>
         <th>Choice No.</th>
           <th>Registration Number</th>
     <th>City</th>
           <th>Address</th>
         <th>Status</th>
                 
      
           
         </tr>
         <?php  $rows_hh=$this->db->select('*')->from('request_table')->get()->result();?>
       </thead>
       <tbody>
       <?php $j=1; foreach($rows_hh as $row){?>
        <tr>
       
       <td><?php echo $j;?></td>
       <td><?php echo $row->reg_no;?></td>
       <td><?php echo $row->city;?></td>
       <td><?php echo $row->address;?></td>
       <td><?php if($row->status=='2'){
        echo "Pending";
        }if($row->status=='0'){
        echo "Not Approved";
        }else if($row->status=='1'){
echo "Approved";
          };?></td></tr>
       <?php $j++;}?>
       </tbody>
     </table>
     <div class="col-md-5">
      <select id="select_req_verify" class="form-control">
        <option value="">Enter Choice</option>
         <?php $j=1; foreach($rows_hh as $row){?>
        <option value="<?php echo $row->reg_no?>"><?php echo $j;?></option><?php $j++;}?>
      </select>
      <br>
      <button class="btn btn-outline-success" type="button" id="verify_req"> Verify</button>&nbsp;
      <button class="btn btn-outline-danger" type="button" id="verify_req_cancel"> Cancel</button>
     </div><br>
</div>

   
</div>
</div>
</div>

<div class="jumbotron" id="admin_init">

 <div class="col-md-8 offset-md-2"> 
   <blockquote><h5>Admin Home</h5></blockquote><hr>

   <div class="row">

     <div class="col-md-6">
      <div class="card">
  <div class="card-header">
    Holiday Homes
  </div>
  <div class="card-block">
    <h4 class="card-title">Holiday Homes</h4>
    
    <div class="btn-group">
  <button type="button" class="btn btn-outline-danger" disabled="disabled">Manage Holiday Homes</button>
  <button type="button" class="btn btn-danger dropdown-toggle dropdown-toggle-split" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
    <span class="sr-only">Toggle Dropdown</span>
  </button>
  <div class="dropdown-menu">
    <a class="dropdown-item" id="reg_holiday_home" href="#">Registered Holiday Homes</a>
    <a class="dropdown-item" href="#" id="get_hh_req">Requests</a>
    <a class="dropdown-item" href="#" id="fares_">Fares</a>
    <div class="dropdown-divider"></div>

  </div>
</div>
  </div>
</div>
    </div>
    <div class="col-md-6">
      <div class="card">
  <div class="card-header">
    Employee Users
  </div>
  <div class="card-block">
    <h4 class="card-title">Users</h4>
    
      <div class="btn-group">
  <button type="button" class="btn btn-outline-info" disabled="disabled">Manage Users</button>
  <button type="button" class="btn btn-info dropdown-toggle dropdown-toggle-split" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
    <span class="sr-only">Toggle Dropdown</span>
  </button>
  <div class="dropdown-menu">

    <a class="dropdown-item" href="#" id="users">Users</a>
    
  </div>
</div>
  </div>
</div>
    </div>
   </div>
      
</div></div>
<nav class="navbar fixed-bottom navbar-light bg-faded">
  <div class="navbar-brand">&copy; Ministry Of Railways , India.</div>
</nav>

	<script src="<?php base_url();?>/js/jquery.js"></script>
	<script src="<?php base_url();?>/js/bootstrap.min.js"></script>
  <script src="<?php base_url();?>/js/toastr.min.js"></script>
  <script>
    $(document).ready(function(){
      $("#reg_holiday_homes_display").hide();
      $("#req_display").hide();
      $("#display_users").hide();
      $("#reg_holiday_homes_fare").hide();
      $("#users").click(function(event){
        event.preventDefault();
        $("#admin_init").hide('animated');
        $("#display_users").show('animated');
      });
       $("#users_cancel").click(function(event){
        event.preventDefault();
        $("#admin_init").show('animated');
        $("#display_users").hide('animated');
      });
      $("#reg_holiday_home").click(function(event){
        event.preventDefault();
$("#admin_init").hide('animated');
$("#reg_holiday_homes_display").show('animated');
      });
      $("#fares_").click(function(event){
event.preventDefault();
$("#admin_init").hide('animated');
$("#reg_holiday_homes_fare").show('animated');
      });
        $("#fares_cancel").click(function(event){
event.preventDefault();
$("#admin_init").show('animated');
$("#reg_holiday_homes_fare").hide('animated');
      });
      $("#reg_holiday_homes_cancel").click(function(event){
        event.preventDefault();
$("#admin_init").show('animated');
$("#reg_holiday_homes_display").hide('animated');
      });
       $("#get_hh_req").click(function(event){
        event.preventDefault();
$("#admin_init").hide('animated');
$("#req_display").show('animated');
      });
       $("#verify_req_cancel").click(function(event){
        event.preventDefault();
$("#admin_init").show('animated');
$("#req_display").hide('animated');
      });
       $("#verify_req").click(function(event){
        event.preventDefault();
        $.ajax({
                        url: "admin/verify_request"
                        , type: "POST"
                        , data: {
                            select_req_verify: $("#select_req_verify").val(),
                            
                          
                            
                        },beforeSend:function(){
                     $("#verify_req").html('Verifying');
                        }
                        , success: function (data) {
                            if (data == "failed") {
                                                              $("#verify_req").html('Verify');

                         toastr['error']("Already Verified !")
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
                               $("#verify_req").html('Verify');
                         
                             
                         
                         toastr['success']("Successfully Verified!")
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
       });

    });
  </script>
</body>
</html>