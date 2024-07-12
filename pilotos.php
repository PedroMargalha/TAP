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
								<h1>Pilotos da TAP</h1>
								
								<h2>Os nossos pilotos</h2>
								<a class="button primary icon solid fa-upload" href="adicionar_piloto_form.php">Adicionar Piloto</a>
							</header>
						
							<?php  include 'ligacao_base_dados.php';?>
							<section>							

 <!-- <div class='table-wrapper'>
<table class='alt'>
<thead>
	<tr>
	<th>Nome</th>
	<th>Data de nascimento</th>
	<th>Número de licença de pilotagem</th>
	<th>Data de emissão da licença</th>
	<th>Data de validade da licença</th>
	</tr>
</thead> -->
							<?php
							
								$sql = "SELECT * FROM piloto";
								$result = $conn->query($sql);
								if ($result->num_rows > 0){
									echo "<section>";							

echo "<div class='table-wrapper'>";
echo "<table class='alt'>";
echo "<thead>";
echo 	"<tr>";
echo	"<th>Nome</th>";
echo	"<th>Apelido</th>";
echo	"<th>Data de nascimento</th>";
echo	"<th>Número de licença de pilotagem</th>";
echo	"<th>Data de emissão da licença</th>";
echo	"<th>Data de validade da licença</th>";
echo	"</tr>";
echo"</thead>";
echo "<tbody>";
while($row = $result->fetch_assoc()){										
// <!-- Table -->
		// var_dump($row);
		echo "<tr>";
			echo "<td>".$row['nome']."</td>";
			echo "<td>".$row['apelido']."</td>";
			echo "<td>".$row['dataNascimento']."</td>";
			echo "<td>".$row['nLicencaPilotagem']."</td>";
			echo "<td>".$row['dataEmissaoLicenca']."</td>";
			echo "<td>".$row['dataValidadeLicenca']."</td>";
			echo	"<form method='POST' action='atualizar_piloto_form.php'>" .
"<input type='hidden' name='id' value='".$row["id"]."'>" .
"<input type='hidden' name='nome' value='".$row["nome"]."'>" .
"<input type='hidden' name='apelido' value='".$row["apelido"]."'>" .
"<input type='hidden' name='dataNascimento' value='".$row["dataNascimento"]."'>" .
"<input type='hidden' name='nLicencaPilotagem' value='".$row["nLicencaPilotagem"]."'>" .
"<input type='hidden' name='dataEmissaoLicenca' value='".$row["dataEmissaoLicenca"]."'>" .
"<input type='hidden' name='dataValidadeLicenca' value='".$row["dataValidadeLicenca"]."'>" .
"<td><input type='submit' value='Atualizar'></td>" .
"<td><input type='submit' name='submit' value='Apagar' formaction='apagar_piloto_pergunta.php'></td>" .
"</form>";
		echo "</tr>";
	
									}
									echo "</tbody>";
									echo "</table>";
									echo "</div>";
									echo "</section>";
								}
# FECHAR A LIGAÇÃO AO SERVIDOR SQL
$conn->close();
?>
						</div>
					</div>
							</section>
						</div>
					</div>

				<!-- Footer -->
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