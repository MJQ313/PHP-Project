 $(document).ready(function(){
      $("#progress").hide();
      $("#login").click(function(event){
        event.preventDefault();
        if($("#EmployeeId").val()==""){
          $("#pass_group").removeClass('has-danger');
            $("#pass_fb").html('');
          $("#emid_group").addClass('has-danger');
          $("#emid_fb").html('Employee Id cannot be empty');
              }else 
        if($("#Password").val()==""){
           $("#emid_group").removeClass('has-danger');
            $("#emid_fb").html('');
          $("#pass_group").addClass('has-danger');
          $("#pass_fb").html('Password cannot be empty');
          

        }else{
          $("#pass_group").removeClass('has-danger');
            $("#pass_fb").html('');
            $("#emid_group").removeClass('has-danger');
            $("#emid_fb").html('');
           
              $.ajax({
                        url: "user/login_process"
                        , type: "POST"
                        , data: {
                            emid: $("#EmployeeId").val()
                            , pass: $("#Password").val()
                        },beforeSend:function(){
                     $("#login").html('Logging In');
                     $("#login_contain").hide('animated');
                     $("#progress").show('animated');
                        }
                        , success: function (data) {
                            if (data == "failed") {
                         $("#login").html('Login');
                         $("#login_contain").show('animated');
                     $("#progress").hide('animated');
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
                         window.location.href="user/login_home";
                                
                            }
                        }
                    });
        }

      });
    });