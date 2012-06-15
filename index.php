<?php include_once('conexion.php');
	session_start(); 
	//incluir el encabezado de las paginas
	include_once('header.php');
	
	if(isset($_SESSION['usuario'])){ 
		//si el usuario tiene la session abierta muestra el panel
		include_once('panel.php');
	}else{ 
		//si no tiene sesion abierta mostrar el formulario de registro
	    include_once('registro.php');
	}	
	//incluir el pie de pagina
	include('footer.php');	
	?>
	
	