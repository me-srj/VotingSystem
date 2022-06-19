<?php
include('../../../config.php');
$call_config = new config(); 
 $call_config->admin_sess_checker();
 $sess_data_var=$call_config->adm_sess_data_bind();
if (isset($_POST['name'])) {
$name=mysqli_escape_string($call_config->con,$_POST['name']);
$description=mysqli_escape_string($call_config->con,$_POST['description']);
$election_for_position=mysqli_escape_string($call_config->con,$_POST['election_for_position']);
	if ($name!=null && $name!=""&&$description!=null && $description!=""&&$election_for_position!=null && $election_for_position!="") 
	{
    $sql="INSERT INTO `tbl_election_master`(`name`, `description`, `election_for_position`) VALUES ('".$name."','".$description."','".$election_for_position."')";	
	if ($call_config->IDU($sql)) 
	{
$call_config->msg("Success!!","Added Successfully!!","success","admin/elections//","");
	}
	else
	{
$call_config->msg("Failed!!",mysqli_escape_string($call_config->con,mysqli_error($call_config->con)),"error","admin/elections/","");
	}
	}
	else
	{
$call_config->msg("Failed!!","Form Validation Failed","error","admin/elections/","");		
	}
}
else
{
	$call_config->msg("Failed!!","Invalid action","error","","");	
}

?>