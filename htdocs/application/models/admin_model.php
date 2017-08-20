<?php
defined('BASEPATH') OR exit('No direct script access allowed');
class Admin_Model extends CI_Model {
     function __construct()
    {
        parent:: __construct();
        $this->load->database();
        
    }
   function login_process($username,$password)
    {
        $this->db->select('id,adminid,adminpass');
$this->db->where('adminid', $username);
$this->db->where('adminpass', $password);

$query = $this->db->get('admin');
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
function verify_request($s){
    $rows_reg=$this->db->select('*')->from('request_table')->where('reg_no',$s)->get()->row();
    $city=$rows_reg->city;
    $st=$rows_reg->status;
    $st_pass=$rows_reg->ap_pass;
    if($st=='0' || $st=='1'){
        return "failed";
}
     $this->db->select('id');
    
$this->db->where('reg_no', $s);
$this->db->where('city', $city);
$query = $this->db->get('admin_gov_data');
         $data=$query->result_array();
  if(empty($data))
            {
                $data=array('status'=>'0');
      $this->db->where('reg_no',$s);
      $query=$this->db->update('request_table',$data);
      if($query){
        return "success";
      }else{
        return "failed";
      }
            }
            else
            {
               $data=array('status'=>'1');
      $this->db->where('reg_no',$s);
      $query=$this->db->update('request_table',$data);
      $data1=array(
'reg_no'=>$s,
'holiday_home'=>$city." ".'Holiday Home',
'uid'=>$s,
'password'=>$st_pass,
'city'=>$city,
'AL'=>'0',
'AH'=>'0',
'BL'=>'0',
'BH'=>'0',
'CL'=>'0',
'CH'=>'0',
'DL'=>'0',
'DH'=>'0',
'status'=>'Not Verified',
);
            $que=$this->db->insert('reg_holiday_homes',$data1);

            }

}
}
?>