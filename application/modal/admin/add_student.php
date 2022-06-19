<?php
include('../../../config.php');
$call_config = new config(); 
 $call_config->admin_sess_checker();
 $sess_data_var=$call_config->adm_sess_data_bind();
if (isset($_POST['sname'])) {
$sname=mysqli_escape_string($call_config->con,$_POST['sname']);
$username=mysqli_escape_string($call_config->con,$_POST['username']);
$password=mysqli_escape_string($call_config->con,$_POST['password']);
	if ($sname!=null && $sname!=""&&$password!=null && $password!=""&&$username!=null && $username!="") 
	{
    $sql="INSERT INTO `tbl_students_master`(`sname`, `username`, `password`) VALUES ('".$sname."','".$username."','".md5($password)."')";	
	if ($call_config->IDU($sql)) 
	{
$call_config->msg("Success!!","Added Successfully!!","success","admin/students/","");
	}
	else
	{
$call_config->msg("Failed!!",mysqli_escape_string($call_config->con,mysqli_error($call_config->con)),"error","admin/students/","");
	}
	}
	else
	{
$call_config->msg("Failed!!","Form Validation Failed","error","admin/students/","");		
	}
}
else
{
	$call_config->msg("Failed!!","Invalid action","error","","");	
}

?>