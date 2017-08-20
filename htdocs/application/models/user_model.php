<?php
defined('BASEPATH') OR exit('No direct script access allowed');
class User_Model extends CI_Model {
     function __construct()
    {
        parent:: __construct();
        $this->load->database();
        
    }
    function update_profile($email,$mobile,$ref_emid){
      $data=array('email'=>$email,'mobile'=>$mobile);
      $this->db->where('emid',$ref_emid);
      $query=$this->db->update('employees',$data);
      if($query){
        $res="success";
        return $res;
      }else{
 $res="failed";
        return $res;
      }
    }
    function login_process($username,$password)
    {
        $this->db->select('id,emid,pass');
$this->db->where('emid', $username);
$this->db->where('pass', $password);

$query = $this->db->get('employees');
         $data=$query->result_array();
         if(empty($data))
            {
                $res="failed";
                return $res;
            }
            else
            {
              
    
                 return $username;
           
            }
    }
    function change_password($current_emid,$current,$new){
  $this->db->select('id,emid,pass');
$this->db->where('emid', $current_emid);
$this->db->where('pass', $current);

$query = $this->db->get('employees');
         $data=$query->result_array();
          if(empty($data))
            {
                $res="failed";
                return $res;
            }
            else
            {
             
            $data=array('pass'=>$new);
      $this->db->where('emid',$current_emid);
      $query=$this->db->update('employees',$data);
      if($query){
          $res="success";
                return $res;
            
      }else
      {
          $res="failed";
                return $res;
      }
            }
    }
    function pnr_process($pnr){
       $this->db->select('id,source,destination');
$this->db->where('pnr', $pnr);
$query = $this->db->get('pnr');
         $data=$query->result_array();
         if(empty($data))
            {
                $res="failed";
                return $res;
            }else{
              $res="success";
              return $res;
            }
    }
    function get_availability($holiday_home){
     $this->db->select('id,reg_no,holiday_home');
$this->db->where('holiday_home', $holiday_home);
$query = $this->db->get('total_rooms');
         $data=$query->result_array();
if(empty($data)){
  $res="failed";
  return $res;
}else{
  $res="success";
  return $res;
}
    }
    function check_availabilty($bsd,$bsm,$bsy,$bed,$bem,$bey,$people,$home_holiday,$grade){
        $fetch_bookings=$this->db->select('*')->from('bookings')->where('holiday_home',$home_holiday)->get()->result();


    }
    function check_emid($em_id){
      $this->db->select('id');
$this->db->where('emid', $em_id);

$query = $this->db->get('employees');
         $data=$query->result_array();
         if(empty($data)){
  $res="success";
  return $res;
}else{
  $res="failed";
  return $res;
}
    }
    function check_adhar($em_adhar){
      $this->db->select('id');

$this->db->where('adhar_no', $em_adhar);
$query = $this->db->get('employees');
         $data=$query->result_array();
         if(empty($data)){
  $res="success";
  return $res;
}else{
  $res="failed";
  return $res;
}
    }
    function register_user($em_irc,$em_name,$em_adhar,$em_id,$em_mobile,$em_pass){
          
      $this->db->select('id');
$this->db->where('rail_id', $em_irc);
$this->db->where('em_name', $em_name);
$this->db->where('adhar_no', $em_adhar);
$query = $this->db->get('irctc_employees');
         $data=$query->result_array();
          if(empty($data)){
  $res="failed";
  return $res;
}else{
   $data1=$this->db->select('id,email,grade')->from('irctc_employees')->where('rail_id',$em_irc)->get()->row();
   $ins=array(
'emid'=>$em_id,
'pass'=>$em_pass,
'email'=>$data1->email,
'name'=>$em_name,
'mobile'=>$em_mobile,
'grade'=>$data1->grade,
'adhar_no'=>$em_adhar
    );
   $final_ins=$this->db->insert('employees',$ins);
   if($final_ins){
    $res="success";
    return $res;
   }else{
    $res="failed";
    return $res;
   }

}

         
    }
}
?>