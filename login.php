<?php  
	include('conexion.php');
	session_start();
	if(isset($_POST['usuario']) && isset($_POST['pass'])) { 
	    $usuario = $_POST['usuario']; 
	    $pass = $_POST['pass']; 
	    	    
	    $pass = md5($pass);
	
	    $query = "SELECT nombre, id_grupo FROM usuarios WHERE email = '$usuario' AND contrasena = '$pass'";
	    $data = mysql_query($query, $conn);
	    if($data){
	    	while($datos = mysql_fetch_assoc($data)){
		    	$_SESSION['tipo_usuario'] = $datos['id_grupo'];
		    	$_SESSION['nombre'] = $datos['nombre'];
		    	$_SESSION['logged'] = TRUE;
	    	}
		    header('Location: panel.php?id_menu=1');
	    }
	} 
?> 

