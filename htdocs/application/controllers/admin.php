<?php
defined('BASEPATH') OR exit('No direct script access allowed');
class Admin extends CI_Controller {
public function index(){
    $this->load->view('admin/admin_login');
}
public function login_process(){
    if(isset($_POST['adminid']) && isset($_POST['adminpass'])){
        $adminid=$_POST['adminid'];
        $adminpass=$_POST['adminpass'];
        $this->load->model('admin_model');
        $response=$this->admin_model->login_process($adminid,$adminpass);
        if($response=="failed")
        {
           
            echo "failed";
        }
        else{
             $this->session->set_userdata('admin_sess_id',$response);
           
            echo "success";
           
        }
    }
    else{
        $this->load->view('exceptions/404');
    }
   }
   public function login_home(){
    if($this->session->userdata('admin_sess_id')){

        $this->load->view('admin/admin_home');
    }else
    {
          $this->load->view('exceptions/404');
    }       
}
public function verify_request(){
    if($_POST['select_req_verify']){
       $s=$_POST['select_req_verify'];
         $this->load->model('admin_model');
        $response=$this->admin_model->verify_request($s);
     if($response=="failed")
        {
           
            echo "failed";
        }
        else{
         
           
            echo "success";
           
        }   
    }
}
public function logout(){
 if($this->session->userdata('admin_sess_id')){
    $this->session->unset_userdata('admin_sess_id');
    redirect('admin/');
 }

}

}