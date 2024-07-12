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
                                </a>
							</header>						

                            <?php  include 'ligacao_base_dados.php';?>
                            <?php

$id = mysqli_real_escape_string($conn, $_REQUEST['id']);

$sql = "SELECT nome, apelido, dataNascimento, nLicencaPilotagem, dataEmissaoLicenca, dataValidadeLicenca FROM Piloto WHERE id=".$id."";
$result = $conn->query($sql);
mysqli_close($conn);
// var_dump($result->fetch_assoc());
$row = $result->fetch_assoc();

// if($row["genero"] === "M"){
//   $form = "formando";
// }else if($row["genero"] === "F"){
//   $form = "formanda";
// }else{
//   $form = "formando/a";
// }
echo "<h3>Tem a certeza que pretende eliminar o piloto: ".$id." - ".$row["nome"]." ".$row["apelido"]."</h3>";

echo "<form method='POST' action='apagar_piloto.php'>";
echo "<input type='hidden' name='id' value='".$id."'>";
echo "<input class='button icon solid' type='submit' name='submit' value='Sim'>";
echo " ";
echo "<input class='button icon solid' type='submit' formaction='pilotos.php' value='Não'>";
echo "</form>";

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