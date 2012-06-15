<?php 
	$conn = mysql_connect("localhost", "root", "root") or die ('error de conexion a base de datos'.mysql_error( ) );
	mysql_select_db("sitio_dinamico", $conn) or die ('error al elegir la base de dates'.mysql_error( ) );
?>