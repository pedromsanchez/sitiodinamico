<?php 
session_start();

//matar la sesion y redireccionar
session_destroy();
header('Location: index.php');

?>
