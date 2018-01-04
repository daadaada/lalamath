<?php
 

$con = mysql_connect("localhost","cob","cobbb11");
if (!$con)
  {
  die('Could not connect: ' . mysql_error());
  }




// some code

mysql_select_db("course", $con);





$result = mysql_query("SELECT * FROM mathematics_users where names='".phpCAS::getUser()."'");
$z=0;
while ($e = mysql_fetch_array($result)){

	$z = $z+1;
}
if ($z==0){
	echo "you are not the person in the member";
}
else{
	while (1){
		$o = md5(time() . mt_rand(0,1000));
		$result = mysql_query("SELECT * FROM mathematics_users where token='".$o."'");
		$m = 0;
		while($z=mysql_fetch_array($result)){
			$m = $m + 1;
		}
		if ($m==0){
			break;
		}
	}
	
mysql_query("UPDATE mathematics_users SET login='".date("Y-m-d h:i:s",time())."' ,token= '".$o."' WHERE names='".phpCAS::getUser()."' ");







Header("Location: http://lala.ust.hk:8000/get/api/users/".$o); 
}


mysql_close($con);