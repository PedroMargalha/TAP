<!DOCTYPE HTML>
<!--
	Phantom by HTML5 UP
	html5up.net | @ajlkn
	Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->
<html>
	<head>
		<title>Generic - Phantom by HTML5 UP</title>
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
<?php					
if(isset($_GET["modelo"]))
  {
      $designacao = $_GET["modelo"];
  }
?>
<?php  include 'ligacao_base_dados.php';?>
<?php 
$sql = "SELECT * FROM modelo WHERE designacao='".$designacao."'";
$result = $conn->query($sql);
if ($result->num_rows > 0){
$row = $result->fetch_assoc();	
// var_dump($row);
echo "<div class='inner'>";
echo "<h1>".$row['designacao']."</h1>";
echo "<h2>".$row['slogan']."</h2>";
echo "<span class='image main'><img src='".$row['imgLinkGeneric']."' alt='".$row['designacao']."' /></span>";
echo "<p>".$row['descricao']."</p>";
// <!-- Table -->
echo "<section>";							
echo "<h3>Especificações</h3>";
echo "<div class='table-wrapper'>";
echo "<table class='alt'>";
	echo "<tbody>";
		echo "<tr>";
			echo "<td>Frota</td>";
			echo "<td>".$row['frota']."</td>";
		echo "</tr>";
		echo "<tr>";
			echo "<td>Comprimento</td>";
			echo "<td>".$row['comprimento']."</td>";
		echo "</tr>";
		echo "<tr>";
			echo "<td>Envergadura</td>";
			echo "<td>".$row['envergadura']."</td>";
		echo "</tr>";
		echo "<tr>";
			echo "<td>Altura</td>";
			echo "<td>".$row['altura']."</td>";
		echo "</tr>";
		echo "<tr>";
			echo "<td>Área das asas</td>";
			echo "<td>".$row['area_das_asas']."</td>";
		echo "</tr>";
		echo "<tr>";
			echo "<td>Velocidade de cruzeiro</td>";
			echo "<td>".$row['velocidade_cruzeiro']."</td>";
		echo "</tr>";
		echo "<tr>";
			echo "<td>Altitude de cruzeiro</td>";
			echo "<td>".$row['altitude_cruzeiro']."</td>";
		echo "</tr>";
		echo "<tr>";
			echo "<td>Alcance</td>";
			echo "<td>".$row['alcance']."</td>";
		echo "</tr>";
		echo "<tr>";
			echo "<td>Capacidade de combustível</td>";
			echo "<td>".$row['capacidade_combustivel']."</td>";
		echo "</tr>";
		echo "<tr>";
			echo "<td>Número de passageiros</td>";
			echo "<td>".$row['numero_passageiros']."</td>";
		echo "</tr>";
	echo "</tbody>";
echo "</table>";
echo "</div>";
echo "</section>";
echo "</div>";
};
?>
<?php  
//include 'footer.php';
?>
			</div>

<!-- Scripts -->
<script src="assets/js/jquery.min.js"></script>
<script src="assets/js/browser.min.js"></script>
<script src="assets/js/breakpoints.min.js"></script>
<script src="assets/js/util.js"></script>
<script src="assets/js/main.js"></script>
</body>
</html>