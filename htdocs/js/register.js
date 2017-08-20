$(document).ready(function(){
$("#register").click(function(event){
	event.preventDefault();
	if($("#em_name").val()==""){
		$("#em_name_group").addClass('has-danger');
		$("#em_name_fb").html('Name can not Empty');
		$("#em_adhar_group").removeClass('has-danger');
		$("#em_adhar_fb").html('');
		$("#em_mobile_group").removeClass('has-danger');
		$("#em_mobile_fb").html('');
		$("#em_id_group").removeClass('has-danger');
		$("#em_id_fb").html('');
		$("#em_pass_group").removeClass('has-danger');
		$("#em_pass_fb").html('');
				$("#em_irc_group").removeClass('has-danger');
		$("#em_irc_fb").html('');


	}else if($("#em_irc").val()==""){
$("#em_irc_group").addClass('has-danger');
		$("#em_irc_fb").html('Enter Valid Railway Employee Id');
		$("#em_name_group").removeClass('has-danger');
		$("#em_name_fb").html('');
		$("#em_adhar_group").removeClass('has-danger');
		$("#em_adhar_fb").html('');
		$("#em_mobile_group").removeClass('has-danger');
		$("#em_mobile_fb").html('');
		$("#em_id_group").removeClass('has-danger');
		$("#em_id_fb").html('');
		
	}else if($("#em_irc").val().length!=10){
$("#em_irc_group").addClass('has-danger');
		$("#em_irc_fb").html('Enter Valid Railway Employee Id');
		$("#em_name_group").removeClass('has-danger');
		$("#em_name_fb").html('');
		$("#em_adhar_group").removeClass('has-danger');
		$("#em_adhar_fb").html('');
		$("#em_mobile_group").removeClass('has-danger');
		$("#em_mobile_fb").html('');
		$("#em_id_group").removeClass('has-danger');
		$("#em_id_fb").html('');
			
	}else if($("#em_adhar").val()==""){
		$("#em_adhar_group").addClass('has-danger');
		$("#em_adhar_fb").html('Aadhar No. can not be Empty');
		$("#em_name_group").removeClass('has-danger');
		$("#em_name_fb").html('');
		$("#em_mobile_group").removeClass('has-danger');
		$("#em_mobile_fb").html('');
		$("#em_id_group").removeClass('has-danger');
		$("#em_id_fb").html('');
		$("#em_pass_group").removeClass('has-danger');
		$("#em_pass_fb").html('');

	}else if($("#em_adhar").val().length!=14){
		$("#em_adhar_group").addClass('has-danger');
		$("#em_adhar_fb").html('Enter valid Adhar No.');
		$("#em_name_group").removeClass('has-danger');
		$("#em_name_fb").html('');
		$("#em_mobile_group").removeClass('has-danger');
		$("#em_mobile_fb").html('');
		$("#em_id_group").removeClass('has-danger');
		$("#em_id_fb").html('');
		$("#em_pass_group").removeClass('has-danger');
		$("#em_pass_fb").html('');

	}else if($("#em_mobile").val()==""){
		$("#em_mobile_group").addClass('has-danger');
		$("#em_mobile_fb").html('Mobile No. can not be Empty');
		$("#em_adhar_group").removeClass('has-danger');
		$("#em_adhar_fb").html('');
		$("#em_name_group").removeClass('has-danger');
		$("#em_name_fb").html('');
		$("#em_id_group").removeClass('has-danger');
		$("#em_id_fb").html('');
		$("#em_pass_group").removeClass('has-danger');
		$("#em_pass_fb").html('');
$("#em_irc_group").removeClass('has-danger');
		$("#em_irc_fb").html('');
	}else if($("#em_mobile").val().length!=10){
		$("#em_mobile_group").addClass('has-danger');
		$("#em_mobile_fb").html('Enter Valid Mobile No');
		$("#em_name_group").removeClass('has-danger');
		$("#em_name_fb").html('');
		$("#em_adhar_group").removeClass('has-danger');
		$("#em_adhar_fb").html('');
		$("#em_id_group").removeClass('has-danger');
		$("#em_id_fb").html('');
		$("#em_pass_group").removeClass('has-danger');
		$("#em_pass_fb").html('');
		$("#em_irc_group").removeClass('has-danger');
		$("#em_irc_fb").html('');

	}else if($("#em_id").val()==""){
		$("#em_id_group").addClass('has-danger');
		$("#em_id_fb").html('Employee Id can not be Empty');
		$("#em_name_group").removeClass('has-danger');
		$("#em_name_fb").html('');
		$("#em_adhar_group").removeClass('has-danger');
		$("#em_adhar_fb").html('');
		$("#em_mobile_group").removeClass('has-danger');
		$("#em_mobile_fb").html('');
		$("#em_pass_group").removeClass('has-danger');
		$("#em_pass_fb").html('');
		$("#em_irc_group").removeClass('has-danger');
		$("#em_irc_fb").html('');

	}else if($("#em_id").val().length<8){
		$("#em_id_group").addClass('has-danger');
		$("#em_id_fb").html('Employee Id Should be more than 8 characters');
		$("#em_name_group").removeClass('has-danger');
		$("#em_name_fb").html('');
		$("#em_adhar_group").removeClass('has-danger');
		$("#em_adhar_fb").html('');
		$("#em_mobile_group").removeClass('has-danger');
		$("#em_mobile_fb").html('');
		$("#em_pass_group").removeClass('has-danger');
		$("#em_pass_fb").html('');
		$("#em_irc_group").removeClass('has-danger');
		$("#em_irc_fb").html('');

	}else if($("#em_pass").val()==""){
$("#em_pass_group").addClass('has-danger');
		$("#em_pass_fb").html('Password can not be Empty');
		$("#em_name_group").removeClass('has-danger');
		$("#em_name_fb").html('');
		$("#em_adhar_group").removeClass('has-danger');
		$("#em_adhar_fb").html('');
		$("#em_mobile_group").removeClass('has-danger');
		$("#em_mobile_fb").html('');
		$("#em_id_group").removeClass('has-danger');
		$("#em_id_fb").html('');
		$("#em_irc_group").removeClass('has-danger');
		$("#em_irc_fb").html('');		
	}else if($("#em_pass").val().length<8){
$("#em_pass_group").addClass('has-danger');
		$("#em_pass_fb").html('Password must be at least 8 characters long');
		$("#em_name_group").removeClass('has-danger');
		$("#em_name_fb").html('');
		$("#em_adhar_group").removeClass('has-danger');
		$("#em_adhar_fb").html('');
		$("#em_mobile_group").removeClass('has-danger');
		$("#em_mobile_fb").html('');
		$("#em_id_group").removeClass('has-danger');
		$("#em_id_fb").html('');
		$("#em_irc_group").removeClass('has-danger');
		$("#em_irc_fb").html('');		
	}else{
$("#em_pass_group").removeClass('has-danger');
		$("#em_pass_fb").html('');
		$("#em_name_group").removeClass('has-danger');
		$("#em_name_fb").html('');
		$("#em_adhar_group").removeClass('has-danger');
		$("#em_adhar_fb").html('');
		$("#em_mobile_group").removeClass('has-danger');
		$("#em_mobile_fb").html('');
		$("#em_id_group").removeClass('has-danger');
		$("#em_id_fb").html('');		
		$("#em_irc_group").removeClass('has-danger');
		$("#em_irc_fb").html('');
  $.ajax({
                        url: "user/register_user"
                        , type: "POST"
                        , data: {
                            em_id: $("#em_id").val(),
                            em_name: $("#em_name").val(),
                            em_adhar: $("#em_adhar").val(),
                            em_irc: $("#em_irc").val(),
                            em_pass: $("#em_pass").val(),
                            em_mobile: $("#em_mobile").val()
                            
                        },beforeSend:function(){
                   $("#register").html('Registering');
                        }
                        , success: function (data) {
                            if (data == "unv") {
                        $("#register").html('Register');
                            toastr['error']("Employee Id Unavailable Please Choose Another One!")
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
                         $("#register").html('Register');
                        toastr['success']("Registered Successfully !")
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
                              window.location.href="user/login";
                            }else if(data == "failed"){
                            	    $("#register").html('Register');
                            	toastr['error']("Incorrect Employee Info!")
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
                            }else if(data == "alr"){
                            	    $("#register").html('Register');
                            	toastr['error']("Account Already Exists with this Aadhar No!")
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