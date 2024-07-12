<!DOCTYPE HTML>
<!--
	Phantom by HTML5 UP
	html5up.net | @ajlkn
	Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->
<html>
	<head>
		<title>TAP - Transportadora aérea</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="assets/css/main.css" />
		<noscript><link rel="stylesheet" href="assets/css/noscript.css" /></noscript>
	</head>
	<body class="is-preload">
		<!-- Wrapper -->
			<div id="wrapper">

				<!-- Header -->
				<?php  include 'header.php';?>

				<!-- Menu -->
				<?php  include 'menu.php';?>	

				<!-- Main -->
					<div id="main">
						<div class="inner">
							<header>
                                <h1>Apagar Piloto</h1>
                                <a href="pilotos.php">
                                <button class="primary" type="button" name="button">Voltar para a lista de pilotos</button>                                
                                </a>
							</header>						

                            <?php  include 'ligacao_base_dados.php';?>
                            <?php

$id = mysqli_real_escape_string($conn, $_REQUEST['id']);
//var_dump($id);

$sql = "DELETE FROM Piloto
WHERE id = ".$id."";

if (mysqli_query($conn, $sql)) {
    echo "<br><h3>Piloto eliminado com sucesso</h3>";
} else {
    echo "<br><h3>Erro ao eliminar o piloto: </h3>" . mysqli_error($conn);
}

mysqli_close($conn);
?>


							<section>							 
				<!-- Footer -->
				<?php 
				//include 'footer.php';
				 ?>

			    </div>
            </div>
</div>
		<!-- Scripts -->
			<script src="assets/js/jquery.min.js"></script>
			<script src="assets/js/browser.min.js"></script>
			<script src="assets/js/breakpoints.min.js"></script>
			<script src="assets/js/util.js"></script>
			<script src="assets/js/main.js"></script>

	</body>
</html>