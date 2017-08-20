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
   
      <div class="col-md-6 offset-md-2" id="pnr_details">
    <blockquote><h5>PNR Details</h5></blockquote><hr>
     <div class="card">
     
  <ul class="list-group list-group-flush">

    <li class="list-group-item"><strong>PNR No. :</strong>  &nbsp;&nbsp; <?php echo $pnr;?></li>
    <li class="list-group-item"><strong>Train No. :</strong> &nbsp;&nbsp;  <?php echo $train_no;?></li>
    <li class="list-group-item"><strong>Start Date :</strong> &nbsp;&nbsp;  <?php echo $jsd."-".$jsm."-".$jsy;?></li>
    <li class="list-group-item"><strong>End Date :</strong> &nbsp;&nbsp; <?php echo $jed."-".$jem."-".$jey;?></li>

    <li class="list-group-item"><strong>Source :</strong> &nbsp;&nbsp; <?php echo $source;?></li>
    <li class="list-group-item"><strong>Destination :</strong> &nbsp;&nbsp; <?php echo $destination;?></li>

    
    <li class="list-group-item" id="browse"><button type="button" class="btn btn-outline-success" id="get_avail">Browse Holiday Homes</button></li><?php
 $rows=$this->db->select('*')->from('neareststation')->where('nearest_city',$destination)->get()->result();
    ?>
    <li class="list-group-item" id="select_choice"><form action="" class="form-inline">
             <div class="form-group">
               <select id="get_avail_edit" class="form-control">
                 <option value="">Enter Your Choice</option>
                 <?php $j=1; foreach($rows as $row) {?>
                 <option value="<?php echo $row->holiday_home;?>"><?php echo $j;?></option><?php $j++;}?>
               </select>
            &nbsp;
               <button class="btn btn-outline-primary" id="get_availability">Get Availability</button>
           
           </form></li>
  </ul>
</div>
      
    </div>
<div class="col-md-8" id="pnr_get_avail">
<blockquote><h5>Get Availability</h5></blockquote>
<hr>
    <div class="card">
     <table class="table table-striped table-responsive">
       <thead>
         <tr>
         <th>Choice No.</th>
           <th>Nearest Holiday Home</th>
      <th>City</th>
           <th>Distance from <?php echo $destination;?></th>
           
         </tr>
       </thead>
       <tbody>
       <?php
 
$i=1;
        foreach($rows as $row){;?>
         <tr>
         <td><?php echo $i;?></td>
           <td><?php echo $row->holiday_home;?></td>
      <td><?php echo $row->city;?></td>
           <td><?php echo $row->distance;?></td>
         </tr>
         <?php 
$i++;
         }?>
        
       </tbody>
     </table><br>
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
$("#pnr_get_avail").hide();
$('#select_choice').hide();

$("#get_avail").click(function(event){
  event.preventDefault();
$("#pnr_details").removeClass('offset-md-2');
$("#pnr_details").removeClass('col-md-6');
$("#pnr_details").addClass('col-md-4 animated fadeIn');
$("#pnr_get_avail").show('animated');
$("#browse").remove();
$('#select_choice').show('animated');
});

$("#get_availability").click(function(event){
  event.preventDefault();
  if($("#get_avail_edit").val()==""){
     toastr['warning']("Please select a choice!")
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
  }else{
               $.ajax({
                        url: "user/get_availability"
                        , type: "POST"
                        , data: {
                            holiday_home: $("#get_avail_edit").val()
                            
                        },beforeSend:function(){
                     $("#get_availability").html('Checking');
                        }
                        , success: function (data) {
                            if (data == "failed") {
                              $("#get_availability").html('Get Availability');
                         toastr['warning']("No data found for this Holiday Home !")
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
                              $("#pnr_details").hide('animated');
                              $("#pnr_get_avail").hide('animated');
                              $("#afterBook").show('animated');
                             
                         $("#get_availability").html('Processing furthur data');
                         toastr['success']("Processiong Booking Info Form!")
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
                    
                                 window.location.href="user/load_afterBook_form";
                            }
                        }
                    });
  }
});

});
  </script>
</body>
</html>