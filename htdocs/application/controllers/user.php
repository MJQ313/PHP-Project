<?php
defined('BASEPATH') OR exit('No direct script access allowed');
class User extends CI_Controller {
    public function index()
    {

        $this->load->view('user/user_home');
    }
   


public function login_home(){
    if($this->session->userdata('sess_id')){
$this->load->library('googlemaps');

$config['center'] = '37.4419, -122.1419';
$config['zoom'] = 'auto';
$config['places'] = TRUE;
$config['placesAutocompleteInputID'] = 'myPlaceTextBox';
$config['placesAutocompleteBoundsMap'] = TRUE; // set results biased towards the maps viewport
$config['placesAutocompleteOnChange'] = 'alert(\'You selected a place\');';
$this->googlemaps->initialize($config);
$data['map'] = $this->googlemaps->create_map();

        $this->load->view('user/user_login_home',$data);
    }else
    {
          $this->load->view('exceptions/404');
    }       
}
public function login_home_(){
    if($this->session->userdata('sess_id')){
$this->load->library('googlemaps');

$config['center'] = '37.4419, -122.1419';
$config['zoom'] = 'auto';
$config['places'] = TRUE;
$config['placesAutocompleteInputID'] = 'myPlaceTextBox';
$config['placesAutocompleteBoundsMap'] = TRUE; // set results biased towards the maps viewport
$config['placesAutocompleteOnChange'] = 'alert(\'You selected a place\');';
$this->googlemaps->initialize($config);
$data['map'] = $this->googlemaps->create_map();
        $this->load->view('user/user_login_home',$data);
    }else
    {
          $this->load->view('exceptions/404');
    }       
}

   public function login_process(){
    if(isset($_POST['emid']) && isset($_POST['pass'])){
        $emid=$_POST['emid'];
        $pass=$_POST['pass'];
        $this->load->model('user_model');
        $response=$this->user_model->login_process($emid,$pass);
        if($response=="failed")
        {
           
            echo "failed";
        }
        else{
             $this->session->set_userdata('sess_id',$response);
           
            echo "success";
           
        }
    }
    else{
        $this->load->view('exceptions/404');
    }
   }
   public function logout(){
    if($this->session->userdata('sess_id')){
       $this->session->unset_userdata('sess_id');
       $this->load->view('user/user_login'); 
    }
   }
 public function login()
    {
        $this->load->view('user/user_login');
    }
    public function register()
    {
        $this->load->view('user/user_register');
    }
 public function update_profile(){
    if(isset($_POST['email']) && isset($_POST['mobile']))
    {
$email=$_POST['email'];
$mobile=$_POST['mobile'];
$ref_emid=$_POST['emid'];
$this->load->model('user_model');
$response=$this->user_model->update_profile($email,$mobile,$ref_emid);
if($response=="failed"){
    echo "failed";
}else if($response=="success"){
    echo "success";
}

    }else {
         $this->load->view('exceptions/404');
    }
 }
 public function change_password(){
    if(isset($_POST['current_emid']) && isset($_POST['current']) && isset($_POST['new'])){
        $current_emid=$_POST['current_emid'];
        $current=$_POST['current'];
        $new=$_POST['new'];
        $this->load->model('user_model');
        $response=$this->user_model->change_password($current_emid,$current,$new);
        if($response=="failed"){
echo "failed";
        }else if($response=="success"){
            echo "success";
        }

    }else{
      $this->load->view('exceptions/404');   
    }
 }
 public function pnr_process(){
if(isset($_POST['pnr_edit'])){
    $pnr=$_POST['pnr_edit'];
    $this->load->model('user_model');
    $response=$this->user_model->pnr_process($pnr);
    if($response=="failed"){
        echo "failed";
    }else if($response=="success"){
         $this->session->set_userdata('pnr_no',$pnr);
        echo "success";

    }
 }else{
      $this->load->view('exceptions/404');
 }
}
public function load_pnr_result($pnr){
    
   if($this->session->userdata('pnr_no')){
      $this->db->select('*');
   

    $this->db->where('pnr',$pnr);
    $query = $this->db->get('pnr');
    $data=$query->row();
    $this->load->view('user/user_pnr_result',$data);
}else{
  $this->load->view('exceptions/404');
}

}
   public function get_availability(){
    if(isset($_POST['holiday_home'])){
$holiday_home=$_POST['holiday_home'];
$this->load->model('user_model');
$response=$this->user_model->get_availability($holiday_home);
if($response=="failed"){
echo "failed";
}else if($response=="success"){
$this->session->set_userdata('HH',$holiday_home);
echo "success";
}
    }else{
   $this->load->view('exceptions/404');       
    }
   }
   public function load_afterBook_form(){
    if($this->session->userdata('HH')){
       
       $this->load->library('googlemaps');

$config['center'] = '37.4419, -122.1419';
$config['zoom'] = 'auto';
$this->googlemaps->initialize($config);

$marker = array();
$marker['position'] = '37.429, -122.1419';
$this->googlemaps->add_marker($marker);
$data['map'] = $this->googlemaps->create_map();

        $this->load->view('user/user_after_book',$data);
    }
   }
 public function check_availability(){
    if($_POST['home_se']){
       $home_se=$_POST['home_se'];
        $people=$_POST['people'];
        $s_date=$_POST['s_date'];
        $e_date=$_POST['e_date'];
        
        $this->session->set_userdata('holi_home',$home_se);
        $this->session->set_userdata('people',$people);
        $this->session->set_userdata('s_date',$s_date);
        $this->session->set_userdata('e_date',$e_date);
        return "success";
    }else{
        $this->load->view('exceptions/404');
    }
 }

public function register_user(){
    if(isset($_POST['em_irc'])){
        $em_irc=$_POST['em_irc'];
        $em_name=$_POST['em_name'];
        $em_adhar=$_POST['em_adhar'];
        $em_id='vhomes@'.$_POST['em_id'];
        $em_mobile=$_POST['em_mobile'];
        $em_pass=$_POST['em_pass'];
        $this->load->model('user_model');
$res_adhar=$this->user_model->check_adhar($em_adhar);
if($res_adhar=="success"){
$res=$this->user_model->check_emid($em_id);
if($res=="success"){
    $res2=$this->user_model->register_user($em_irc,$em_name,$em_adhar,$em_id,$em_mobile,$em_pass);
    if($res2=="success"){
        echo "success";
    }else{
        echo "failed";
    }
}else{
    echo "unv";
}
}else{
 echo "alr";   
}

}else{
        $this->load->view('exceptions/404');
}
}
public function region_homes(){
    if(isset($_POST['select_region'])){
        $select_region=$_POST['select_region'];

    echo "success";
    }else{
    $this->load->view('exceptions/404');
    }
}
public function get_homes($region){
    $rows_reg['hh']=$this->db->select('*')->from('region_table')->where('region_name',$region)->get()->result();
    if($rows_reg){
        $this->load->view('user/user_get_avail',$rows_reg);
    }

}
public function load_avail(){
    if($_POST['home_se']){
$home=$this->session->userdata('holi_home');
$s_date=$this->session->userdata('s_date');
$e_date=$this->session->userdata('e_date');
$people=$this->session->userdata('people');
$grade=$this->session->userdata('grade');
 $rows_reg=$this->db->select('*')->from('available_rooms')->where('holiday_home',$region)->get()->result();
foreach($rows_reg as $row){
    if($row->bsd==$s_date){
$temp_book=$row->booking_id;
    }else if($row->bed==$s_date){
$temp_book=$row->booking_id;
    }else if($row->bsd==$e_date){
$temp_book=$row->booking_id;
    }else if($row->bed==$e_date){
        $temp_book=$row->booking_id;
    }else if($row->bsd<$s_date && $row->bed>$s_date){
        $temp_book=$row->booking_id;
    }else if($row->bsd<$e_date && $row->bed>$e_date){
$temp_book=$row->booking_id;
    }else{
        $temp_book=0;

    }
}$data['arr']=$temp_book;
$this->load->view('user/user_after_book',$data);
    }else{
 $this->load->view('exceptions/404');       
    }
}
}