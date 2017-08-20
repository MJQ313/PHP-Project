<?php
defined('BASEPATH') OR exit('No direct script access allowed');
class Owner extends CI_Controller {
    public function index()
    {
        $this->load->view('owner/owner_login');
    }
     public function register()
    {
        $this->load->view('owner/owner_register');
    }
    public function send_reque(){
        if(isset($_POST['or_city'])){
            $city=$_POST['or_city'];
            $reg=$_POST['or_reg'];
            $add=$_POST['or_add'];
            $pass=$_POST['or_pass'];
            $this->load->model('owner_model');
            $res=$this->owner_model->send_req($city,$reg,$add,$pass);
            if($res=="success"){
echo "success";
            }else if($res=="failed"){
echo "failed";
            }

        }else{
            $this->load->view('exceptions/404');
        }
    }
    public function check_approve(){
     $this->load->view('owner/owner_verify');   
    }
  public function check_approve_process(){
    if(isset($_POST['hh_reg'])){
        $hh=$_POST['hh_reg'];
        $appass=$_POST['ap_pass'];
    $this->load->model('owner_model');
            $res=$this->owner_model->check_approval_process($hh,$appass);
            if($res=="success"){
                $this->session->set_userdata('owner_verify_sess_id',$hh);
echo "success";
            }else if($res=="failed"){
echo "failed";
            }
        

    }else{
            $this->load->view('exceptions/404');
    }
  }
  public function owner_verify_home(){
    if($this->session->userdata('owner_verify_sess_id')){
        $this->load->view('owner/owner_verify_home');
    }
  }
  public function owner_verify_logout(){
    if($this->session->userdata('owner_verify_sess_id')){
        $this->session->unset_userdata('owner_verify_sess_id');
        redirect('owner/check_approve');
    }
  }
  public function del_entry_req(){
    if(isset($_POST['del_entry_edit'])){
        $edit=$_POST['del_entry_edit'];
        $this->db->where('reg_no', $edit);
$this->db->delete('request_table');
echo "success";
    }
}
public function ver_entry_req(){
    if(isset($_POST['ver_entry_edit'])){
        $edit=$_POST['ver_entry_edit'];
         $data=array('status'=>'Verified');
      $this->db->where('reg_no',$edit);
      $query=$this->db->update('reg_holiday_homes',$data);
        $this->db->where('reg_no', $edit);
$this->db->delete('request_table');
echo "success";
    }
}
}