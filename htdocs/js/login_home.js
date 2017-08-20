$(document).ready(function(){
     $("#pnr").hide();
     $("#city").hide();
     $("#main_profile").hide();
     $("#update_profile").hide();
     $("#cancel_update_profile").hide();
     $("#email_edit").hide();
     $("#mobile_edit").hide();
     $("#change_password").hide();
     $("#progress").hide();
     $("#region").hide();
$("#cancel_update_profile").hide();
     $("#process_init").click(function(event){
      event.preventDefault();
      if($("#init_val").val()==""){
         toastr['warning']("Please Select One Way!")
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

      }else
      if($("#init_val").val()==1){
        $("#init").hide("animated");
        $("#pnr").show('animated');
      }else 
      if($("#init_val").val()==2){
           $("#init").hide("animated");
        $("#city").show('animated');
 
      }else if($("#init_val").val()==3){
 $("#init").hide("animated");
        $("#region").show('animated');     
      }
     });
     $("#cancel_city").click(function(event){
      event.preventDefault();
      $("#init").show("animated");
        $("#city").hide('animated');
     });
     $("#cancel_pnr").click(function(event){
      event.preventDefault();
       $("#init").show("animated");
        $("#pnr").hide('animated');
     });
      $("#select_region_cancel").click(function(event){
      event.preventDefault();
       $("#init").show("animated");
        $("#region").hide('animated');
     });
     $("#profile").click(function(event){
      event.preventDefault();
      $("#main_profile").show("animated");
$("#home").removeClass("active");
$("#profile").addClass("active");
$("#main_home").hide("animated");
     });
     $("#home").click(function(event){
      event.preventDefault();
      $("#main_home").show("animated");
      $("#main_profile").hide("animated");
       $("#change_password").hide("animated");
       $("#home").addClass("active");
$("#profile").removeClass("active");

  });
     $("#edit_profile").click(function(event){
      event.preventDefault();
$("#mobile_info").hide("animated");
$("#email_info").hide("animated");
$("#mobile_info").hide("animated");
$("#edit_profile").hide();
$("#chps").hide();


$("#update_profile").show();
$("#cancel_update_profile").show();
$("#email_edit").show("animated");
$("#mobile_edit").show("animated");

     });
     $("#cancel_update_profile").click(function(event){
event.preventDefault();
$("#mobile_info").show("animated");
$("#email_info").show("animated");
$("#mobile_info").show("animated");
$("#edit_profile").show();
$("#chps").show();


$("#update_profile").hide();
$("#cancel_update_profile").hide();
$("#email_edit").hide("animated");
$("#mobile_edit").hide("animated");

     });
     $("#chps").click(function(event){
      event.preventDefault();
$("#main_profile").hide("animated");
$("#change_password").show("animated");
     });
      $("#cancel_chps").click(function(event){
      event.preventDefault();
$("#main_profile").show("animated");
$("#change_password").hide("animated");
     });
      $("#update_profile").click(function(event){
        event.preventDefault();
        if($("#email_edit_t").val()==""){

          $("#mobile_edit").removeClass("has-danger");
          $("#mobile_edit_fb").html("");
          $("#email_edit").addClass("has-danger");
          $("#email_edit_fb").html("Email cannot be empty");

        }else if($("#mobile_edit_t").val()=="")
        {
          $("#email_edit").removeClass("has-danger");
          $("#email_edit_fb").html("");
          $("#mobile_edit").addClass("has-danger");
          $("#mobile_edit_fb").html("Mobile No cannot be empty");

        }else if($("#mobile_edit_t").val().length!=10){
  $("#email_edit").removeClass("has-danger");
          $("#email_edit_fb").html("");
          $("#mobile_edit").addClass("has-danger");
          $("#mobile_edit_fb").html("Enter Valid Mobile Number");
        }else
        {
         $("#email_edit").removeClass("has-danger");
          $("#email_edit_fb").html("");
          $("#mobile_edit").removeClass("has-danger");
          $("#mobile_edit_fb").html("");
              $.ajax({
                        url: "user/update_profile"
                        , type: "POST"
                        , data: {
                            email: $("#email_edit_t").val()
                            , mobile: $("#mobile_edit_t").val(),
                            emid: $("#update_reference").val()
                        },beforeSend:function(){
                     $("#update_profile").html('Updating Profile');
                        }
                        , success: function (data) {
                            if (data == "failed") {
                         toastr['warning']("Unable to update profile !")
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
                         $("#update_profile").html('Update Profile');
                         toastr['success']("Profile Updated !")
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
                      $("#cancel_update_profile").click();
                                
                            }
                        }
                    });
        }
      });
      $("#chps_process").click(function(event){
        event.preventDefault();
        if($("#current_emid").val()==""){
             $("#Re-Enter_password_group").removeClass('has-danger');
           $("#Re-Enter_password_fb").html('');
             $("#new_password_group").removeClass('has-danger');
           $("#new_password_fb").html('');
            $("#current_password_group").removeClass('has-danger');
           $("#current_password_fb").html('');
          $("#current_emid_group").addClass('has-danger');
           $("#current_emid_fb").html('Employee Id can not be empty');
}else 
    if($("#current_password").val()==""){
             $("#Re-Enter_password_group").removeClass('has-danger');
           $("#Re-Enter_password_fb").html('');
             $("#new_password_group").removeClass('has-danger');
           $("#new_password_fb").html('');
            $("#current_password_group").addClass('has-danger');
           $("#current_password_fb").html('Current Password can not be empty');
          $("#current_emid_group").removeClass('has-danger');
           $("#current_emid_fb").html('');
}else 
    if($("#new_password").val()==""){
             $("#Re-Enter_password_group").removeClass('has-danger');
           $("#Re-Enter_password_fb").html('');
             $("#new_password_group").addClass('has-danger');
           $("#new_password_fb").html('Current Password can not be empty');
            $("#current_password_group").removeClass('has-danger');
           $("#current_password_fb").html('');
          $("#current_emid_group").removeClass('has-danger');
           $("#current_emid_fb").html('');
}else 
    if($("#re_new_password").val()==""){
             $("#Re-Enter_password_group").addClass('has-danger');
           $("#Re-Enter_password_fb").html('Re-Entered can not be empty');
             $("#new_password_group").removeClass('has-danger');
           $("#new_password_fb").html('');
            $("#current_password_group").removeClass('has-danger');
           $("#current_password_fb").html('');
          $("#current_emid_group").removeClass('has-danger');
           $("#current_emid_fb").html('');
}else
if($("#re_new_password").val()!=$("#new_password").val()){
    $("#Re-Enter_password_group").addClass('has-danger');
           $("#Re-Enter_password_fb").html('Passwords do not match');
             $("#new_password_group").removeClass('has-danger');
           $("#new_password_fb").html('');
            $("#current_password_group").removeClass('has-danger');
           $("#current_password_fb").html('');
          $("#current_emid_group").removeClass('has-danger');
           $("#current_emid_fb").html('');
}else
{    $("#Re-Enter_password_group").removeClass('has-danger');
           $("#Re-Enter_password_fb").html('');
             $("#new_password_group").removeClass('has-danger');
           $("#new_password_fb").html('');
            $("#current_password_group").removeClass('has-danger');
           $("#current_password_fb").html('');
          $("#current_emid_group").removeClass('has-danger');
           $("#current_emid_fb").html('');
  $.ajax({
                        url: "user/change_password"
                        , type: "POST"
                        , data: {
                            current_emid: $("#current_emid").val()
                            , current: $("#current_password").val(),
                            new:$("#new_password").val()
                        },beforeSend:function(){
                     $("#chps_process").html('Changing Password');
                        }
                        , success: function (data) {
                            if (data == "failed") {
                                  $("#chps_process").html('Change Password');
                         toastr['warning']("Incorrect Credentials Provided !")
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
                        
                         toastr['success']("Password Updated!")
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
                       $("#chps_process").html('Change Password');
                                $("#cancel_chps").click();
                            }
                        }
                    });
}
      });
$("#go_pnr").click(function(event){
  event.preventDefault();
  if($("#pnr_edit").val()==""){
    $("#pnr_group").addClass('has-danger');
    $("#pnr_fb").html('PNR Number can not be empty');

  }else if($("#pnr_edit").val().length!=10){
   $("#pnr_group").addClass('has-danger');
    $("#pnr_fb").html('Enter Valid PNR Number');
  }else{
    $("#pnr_group").removeClass('has-danger');
    $("#pnr_fb").html('');
 $.ajax({
                        url: "user/pnr_process"
                        , type: "POST"
                        , data: {
                            pnr_edit: $("#pnr_edit").val()
                            
                            
                        },beforeSend:function(){
                     $("#go_pnr").html('Checking..');
                      $("#progress").show('animated');
                      $("#pnr").hide('animated');
                        }
                        , success: function (data) {
                            if (data == "failed") {
                         $("#go_pnr").html('Go');
                         toastr['warning']("Incorrect PNR !")
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
                        
                         toastr['success']("Processing PNR data!")
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
                       $("#go_pnr").html('Go');
                                $("#cancel_pnr").click();
                         
                                $("#init_val").val('');
                                window.location.href="user/load_pnr_result/"+$("#pnr_edit").val();
                            }
                        }
                    });   
  }
});
$("#logout").click(function(event){
  event.preventDefault();
  window.location.href="user/logout";
});
$("#select_region_process").click(function(event){
  event.preventDefault();
  if($("#select_region").val()==""){
    $("#select_region_group").addClass('has-danger');
    $("#select_region_fb").html('Please Select a Region');
  }else{
    $("#select_region_group").removeClass('has-danger');
    $("#select_region_fb").html('');
$.ajax({
                        url: "user/region_homes"
                        , type: "POST"
                        , data: {
                            select_region: $("#select_region").val()
                            
                            
                        },beforeSend:function(){
                   $("#select_region_process").html('Checking');
                        }
                        , success: function (data) {
                            if (data == "failed") {
                   $("#select_region_process").html('Proceed');
                         toastr['warning']("Incorrect PNR !")
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
                        $("#select_region_process").html('Proceed');
                         toastr['success']("Processing PNR data!")
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
                       
                                window.location.href="user/get_homes/"+$("#select_region").val();
                            }
                        }
                    });
  }
});
    });