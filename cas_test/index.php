<?php
include('include.php');
?>
<html>
  <head>
    <title>phpCAS simple client</title>
  </head>
  <body>
    <h1>Successfull Authentication!</h1>
    <p>the user's login is <b><?php echo phpCAS::getUser(); ?></b>.</p>
    <p>phpCAS version is <b><?php echo phpCAS::getVersion(); ?></b>.</p>
	<p>Goto page <a href="2.php">2</a></p>
	<p>Goto page <a href="3.php">3</a></p>
    <p><a href="?logout=">Logout</a></p>
  </body>
</html>
