<?php 

if(isset($_SESSION['logged'])){
	$tipo_usuario = $_SESSION['tipo_usuario']; ?>
	
	<div id="navegation">
		<ul>
			<?php
			//obtener los elementos del menu de navegacion
			$elemento = mysql_query("select menu.id_menu, menu.texto from menu, detalle_menus, grupo, usuarios where usuarios.id_grupo = $tipo_usuario and usuarios.id_grupo = grupo.id_grupo and detalle_menus.id_menu = menu.id_menu and detalle_menus.id_grupo = grupo.id_grupo", $conn);
			while($dato = mysql_fetch_assoc($elemento) ) {
				echo '<li><a href="panel.php?id_menu='.$dato['id_menu'].'">'.$dato['texto'].'</a></li>';
				echo '<br/>';
			}
			echo '<li><a href="cerrar_sesion.php">Cerrar Sesion</a></li>';
		 	?>
		 	
		</ul>
	</div><!-- navegation -->
<?php 
}?>