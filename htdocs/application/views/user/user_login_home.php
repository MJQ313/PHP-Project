<?php 
defined('BASEPATH') OR exit('No direct script access allowed');
if(!$this->session->userdata('sess_id')){
  redirect('user/login');
}else
{$se=$this->session->userdata('sess_id');
   $data=$this->db->select('id,emid,name,email,mobile,grade')->from('employees')->where('emid',$se)->get()->row();
   $this->session->set_userdata('gr',$data->grade);
    }

?>
<!DOCTYPE html>
<html lang="en">
<head>
<base href="<?php echo base_url();?>">
	<meta charset="UTF-8">
  <?php echo $map['js']; ?>
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  
<link rel="stylesheet" href="<?php base_url();?>/css/bootstrap.min.css">
<link rel="stylesheet" href="<?php base_url();?>/css/animate.min.css">
<link rel="stylesheet" href="<?php base_url();?>/css/toastr.min.css">
	<title>Hackthon</title>
  <style>
    body,#main_home,#main_profile,#change_password { 
background-color: #b0d1f4;
}
  </style>
</head>
<body >
<nav class="navbar navbar-toggleable-md navbar-light" style="background-color: #4c91db;">
  <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <a class="navbar-brand" href="user/login_home">VHOMES</a>
  <div class="collapse navbar-collapse" id="navbarNav">
    <ul class="navbar-nav">
      <li class="nav-item">
        <a class="nav-link active" href="user/login_home" id="home">Home</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#" id="profile">Profile</a>
      </li>
     <li class="nav-item">
        <a class="nav-link" href="#" id="logout">Logout</a>
      </li>
    </ul>
     
  </div>
</nav>

<div class="jumbotron" id="main_home">
  <blockquote ><strong>Welcome <?php echo $data->name;?></strong></blockquote><br>
  <div id="init">
    <form action="">
      <div class="col-md-4">
        <blockquote ><strong>Select Way to get Availability and Book</strong> </blockquote>
      <div class="form-group">
        <select id="init_val" class="form-control">
          <option value="">----------------Select---------------</option>
          <option value="1">By PNR Number</option>
          <option value="2">By City</option>
                    <option value="3">By Region</option>
        </select></div>
        <div class="form-group">
          <button type="button" class="btn btn-primary" id="process_init">Go</button>
        </div>
      </div>
      
    </form>
  </div>
  
   <div id="pnr">
      <div class="col-md-4">
      <blockquote>Enter 10 Digit PNR Number</blockquote>
      <div class="form-group" id="pnr_group">
       <input type="text" class="form-control" placeholder="Enter PNR Number" id="pnr_edit" maxlength="10">
<small class="form-control-feedback" id="pnr_fb"></small>
       </div>
        <div class="form-group">
          <button type="button" class="btn btn-primary" id="go_pnr">Go</button>
          <button type="button" class="btn btn-danger" id="cancel_pnr">Cancel</button>
        </div>
      </div>
      </div>
     <div id="city">
    <form action="">
      <div class="col-md-4">
     
  <blockquote>Enter City Name</blockquote>
      <div class="form-group" id="city_group">
       <input type="text" class="form-control" placeholder="Enter PNR Number" id="city_edit" maxlength="10">
<small class="form-control-feedback" id="city_fb"></small>
       </div>
        <div class="form-group">
          <button type="button" class="btn btn-primary" id="go_city">Go</button>
          <button type="button" class="btn btn-danger" id="cancel_city">Cancel</button>
        </div>
      </div>
      </div>
   <div id="region">
    <div class="row">
      <div class="col-md-4">
        
       <form action="">
         <div class="form-group" id="select_region_group">
           <label for="select_region">Select Railway region</label>
           <select id="select_region" class="form-control">
             <option value="">Select Railway region</option>
          
             <option value="Central_Railway">Central Railway</option>
             <option value="Southern_Railway">Southern Railway</option>
             <option value="Eastern_Railway">Eastern Railway</option>
             <option value="Northern_Railway">Northern Railway</option>
             <option value="Northeast_Frontier_Railway">Northeast Frontier Railway</option>
             <option value="South_Eastern_Railway">South Eastern Railway</option>
             <option value="South_Western_Railway">South Western Railway</option>
             <option value="North_Eastern_Railway">North Eastern Railway</option>
             <option value="Western_Railway">Western Railway</option>
             <option value="South_Central_Railway">South Central Railway</option>
             <option value="North_Western_Railway">North Western Railway</option>
             <option value="West_Central_Railway">West Central Railway</option>
           </select>
           <small class="form-control-feedback" id="select_region_fb"></small>
         </div>
         
         <div class="form-group">
           <button class="btn btn-primary" id="select_region_process" type="button">Proceed</button>
           <button class="btn btn-danger" id="select_region_cancel" type="button">Cancel</button>
         </div>
       </form>
               
      </div>
   
    </div>
   
    </div>
 
      
  
  </div>
 </div>
</div>
</div>

 <div class="conatainer-fluid">
  <div class="jumbotron" id="main_profile">
  <blockquote><h3>Profile</h3></blockquote>
  <br>
  <h5><blockquote><strong>Name</strong> : <?php echo $data->name;?></blockquote></h5><br><h5><blockquote><div id="email_info"><strong>Email</strong> : <?php echo $data->email;?></div>
<div id="email_edit" class="form-group">

<label for="email_edit_t">Email</label>
<input type="text" value="<?php echo $data->email;?>" class="form-control col-md-4" id="email_edit_t">
<input type="hidden" id="update_reference" value="<?php echo $data->emid;?>">
<small class="form-control-feedback" id="email_edit_fb"></small>
</div>
  </blockquote></h5><br><h5><blockquote><div id="mobile_info"><strong>Mobile No.</strong> : <?php echo $data->mobile;?></div>
<div id="mobile_edit" class="form-group">
<label for="mobile_edit_t">Mobile</label>
<input type="text" value="<?php echo $data->mobile;?>" class="form-control col-md-4" id="mobile_edit_t">
<small class="form-control-feedback" id="mobile_edit_fb"></small>
</div>
  </blockquote></h5><br><h5><blockquote><strong>Employee Id</strong> : <?php echo $data->emid;?></blockquote></h5><br>
  <div class="form-group">
  <button class="btn btn-success" id="update_profile">Update Profile</button>
   <button class="btn btn-danger" id="cancel_update_profile">Cancel</button>
 <button class="btn btn-primary" id="edit_profile">Edit Profile</button>
    <button class="btn btn-success" id="chps">Change Password</button></div>
</div>
</div>
<div class="container-fluid" >
  <div class="jumbotron" id="change_password">
  <div class="col-md-4">
    <h5><blockquote>Change Password</blockquote></h5>
     <div class="form-group" id="current_emid_group">
      <label for="current_emid">Enter Employee Id</label>
      <input type="text" class="form-control" id="current_emid" placeholder="Enter Employee Id">
    <small class="form-control-feedback" id="current_emid_fb"></small>
    </div>
    <div class="form-group" id="current_password_group">
      <label for="current_password">Enter Current Password</label>
      <input type="password" class="form-control" id="current_password" placeholder="Enter Current Password">
        <small class="form-control-feedback" id="current_password_fb"></small>
    </div>
     <div class="form-group" id="new_password_group">
      <label for="new_password">Enter New Password</label>
      <input type="password" class="form-control" id="new_password" placeholder="Enter new Password">
        <small class="form-control-feedback" id="new_password_fb"></small>
    </div>
    <div class="form-group" id="Re-Enter_password_group">
      <label for="re_new_password">Re-Enter New Password</label>
      <input type="password" class="form-control" id="re_new_password" placeholder="Re-Enter new Password">
        <small class="form-control-feedback" id="Re-Enter_password_fb"></small>
    </div>
    <div class="form-group">
      <button class="btn btn-primary" id="chps_process">Change Password</button>
        <button class="btn btn-danger" id="cancel_chps">Cancel</button>
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
   <script src="<?php base_url();?>/js/login_home.js"></script>

</body>

</html>