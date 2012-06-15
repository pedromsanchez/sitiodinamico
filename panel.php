<?php include_once('conexion.php'); 
	session_start();
	
	include_once('header.php');
	include_once('sidebar.php');
?>

<div id="content">
	<?php
		
		$url_content = (isset($_GET['id_menu'])) ? $_GET['id_menu'] : 1;
				
		//obtener el contenido de la pagina desde la bd utilizando la id del menu
		$resultado = mysql_query("SELECT texto FROM contenido WHERE id_menu =  $url_content");
		while ($fila = mysql_fetch_assoc($resultado)) {
			echo $fila['texto'];
		}
		// liberar la memoria del result set de la bd 
		mysql_free_result($resultado);
	?>		
</div> <!-- content -->

<?php include_once('footer.php'); ?>
