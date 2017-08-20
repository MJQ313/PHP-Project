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
  <?php echo $map['js']; ?>
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="stylesheet" href="<?php base_url();?>/css/bootstrap.min.css">
<link rel="stylesheet" href="<?php base_url();?>/css/animate.min.css">
<link rel="stylesheet" href="<?php base_url();?>/css/toastr.min.css">
	<title>VHOMES | PNR Results</title>
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
        <a class="nav-link active" href="user/login_home_">Home</a>
      </li>
    
     
    </ul>
  </div>
</nav>

<div class="container-fluid">
  <div class="jumbotron">
    <div class="row">
    <div id="afterBook" class="col-md-12">
<?php echo $arr;?>
</div>
</div>
</div>
   
  
<nav class="navbar fixed-bo'ttom navbar-light bg-faded">
  <div class="navbar-brand">&copy; Ministry Of Railways , India.</div>
</nav>

	<script src="<?php base_url();?>/js/jquery.js"></script>
	<script src="<?php base_url();?>/js/bootstrap.min.js"></script>
  <script src="<?php base_url();?>/js/toastr.min.js"></script>
  <script> 
$(document).ready(function(){

  
});
  </script>
</body>
</html>