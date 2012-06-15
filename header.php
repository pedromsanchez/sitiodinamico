<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
		"http://www.w3.org/TR/html4/loose.dtd">
		<html xmlns="http://www.w3.org/1999/xhtml">
			<head>
				<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
				<link rel="stylesheet" type="text/css" href="css/style.css">
				<title>Sitio Dinamico</title>
			</head>
			<body>
				<div id="wrapper">
					<div id="header"> 
					
						<?php
							//asigna el no de la id, si no esta vacia, si esta vacia asigna el no 1 por default (pagina de inicio)
							$url_img = (isset($_GET['id_menu'])) ? $_GET['id_menu'] : 1;
								
							//obtener la imagen del encabezado desde la bd utilizando la id del menu
							$resultado = mysql_query("SELECT foto FROM header WHERE id_menu = $url_img");
							while ($fila = mysql_fetch_assoc($resultado)) {
			    				echo '<img src="img/'.$fila['foto']. '"/>';
							}
							// liberar la memoria del result set de la bd 
							mysql_free_result($resultado);
						?>
		
					</div> <!--  header -->
