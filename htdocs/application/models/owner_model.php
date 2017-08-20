<?php
defined('BASEPATH') OR exit('No direct script access allowed');
class Owner_Model extends CI_Model {
     function __construct()
    {
        parent:: __construct();
        $this->load->database();
        
    }
   function send_req($city,$reg,$add,$pass){
    $data=array(
'reg_no'=>$reg,
'city'=>$city,
'address'=>$add,
'ap_pass'=>$pass,
'status'=>'2'
        );
    $q=$this->db->insert('request_table',$data);
if($q){
    return "success";
   }else{
    return "failed";
   }
}
  function check_approval_process($hh,$appass){
    $this->db->select('id');

$this->db->where('reg_no', $hh);
$this->db->where('ap_pass', $appass);
$query = $this->db->get('request_table');
         $data=$query->result_array();
         if(empty($data)){
            return "failed";
         }else{
            return "success";
         }

  }
}
?>