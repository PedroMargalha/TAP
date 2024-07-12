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
                                <h1>Atualizar Piloto</h1>
                                <a href="pilotos.php">
                                <button class="primary" type="button" name="button">Voltar à lista de pilotos</button>
                                
                                </a>
							</header>						

                            <?php  include 'ligacao_base_dados.php';?>
<?php

# 2. ENVIAR DADOS PARA UMA TABELA
$id = mysqli_real_escape_string($conn, $_REQUEST['id']);
$nome = mysqli_real_escape_string($conn, $_REQUEST['nome-piloto']);
$apelido = mysqli_real_escape_string($conn, $_REQUEST['apelido-piloto']);
$dataNascimento = mysqli_real_escape_string($conn, $_REQUEST['dataNascimento']);
$nLicencaPilotagem = mysqli_real_escape_string($conn, $_REQUEST['nLicencaPilotagem']);
$dataEmissaoLicenca = mysqli_real_escape_string($conn, $_REQUEST['dataEmissao']);
$dataValidadeLicenca = mysqli_real_escape_string($conn, $_REQUEST['dataValidade']);

$sql = "UPDATE Piloto
SET nome='".$nome."',
apelido='".$apelido."',
dataNascimento='".$dataNascimento."',
nLicencaPilotagem='".$nLicencaPilotagem."',
dataEmissaoLicenca='".$dataEmissaoLicenca."',
dataValidadeLicenca='".$dataValidadeLicenca."'
WHERE id ='".$id."'";

if($conn->query($sql) === TRUE){
  echo "<br><h3>Dados gravados com sucesso!<h3>";
}else{
  echo "<br><h3>ERRO: Erro na gravação dos dados: <h3>" . $conn->error;
}
echo "<br>";
# FECHAR A LIGAÇÃO AO SERVIDOR SQL
$conn->close();
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