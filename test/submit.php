<?php
include('include.php');
?>
<?php
if ($_POST["q1"] == "a")
	$s1="<font color=blue>correct</font>";
else
	$s1="<font color=red>incorrect</font>";

echo 'You answered <font color=green><b>'.$_POST["q1"].'</b></font> which is '.$s1.' for question 1';
?>
<br><br>
<?php
if ($_POST["q2"] == "b")
	$s2="<font color=blue>correct</font>";
else
	$s2="<font color=red>incorrect</font>";

echo 'You answered <font color=green><b>'.$_POST["q2"].'</b></font> which is '.$s2.' for question 2';
?>
<br>
<br>
Go <a href="index.php">back</a> to retry the questions.
<br>
<br>
<p><a href="?logout=">Logout</a></p>
