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
							</header>						
							<?php  include 'ligacao_base_dados.php';?>
							<section>							 
				<!-- Footer -->
				<?php 
				//include 'footer.php';
				 ?>
	<!-- Form -->
<?php  include 'ligacao_base_dados.php';?>
<?php

$id = mysqli_real_escape_string($conn, $_REQUEST['id']);


$nome = mysqli_real_escape_string($conn, $_REQUEST['nome']);
$apelido = mysqli_real_escape_string($conn, $_REQUEST['apelido']);
$dataNascimento = mysqli_real_escape_string($conn, $_REQUEST['dataNascimento']);
$nLicencaPilotagem = mysqli_real_escape_string($conn, $_REQUEST['nLicencaPilotagem']);
$dataEmissao = mysqli_real_escape_string($conn, $_REQUEST['dataEmissaoLicenca']);
$dataValidade = mysqli_real_escape_string($conn, $_REQUEST['dataValidadeLicenca']);

echo "<section> ".
									"<form method='post' action='atualizar_piloto.php'>" .
										"<div class='row gtr-uniform'>" .
											"<div class='col-6 col-12-xsmall'>" .
												"<input type='text' name='nome-piloto' id='nome-piloto' value='".$nome."' placeholder='Nome' />" .
											"</div>" .
											"<div class='col-6 col-12-xsmall'>" .
												"<input type='text' name='apelido-piloto' id='apelido-piloto' value='".$apelido."' placeholder='Apelido' />" .
                                            "</div>" .
                                            "<div class='col-12'>" .
												"<input type='text' name='nLicencaPilotagem' id='nLicencaPilotagem' value='".$nLicencaPilotagem."' placeholder='Número da licença de pilotagem' />" .
                                            "</div>" .
                                            "<div class='col-6 col-12-xsmall'>" .
											"	Data da Emissão da Licença:<br> <input type='date' name='dataEmissao' id='nome-piloto' value='".$dataEmissao."'/>" .
											"</div>" .
											"<div class='col-6 col-12-xsmall'> " .
											"	Data de Validade da Licença:<br> <input type='date' name='dataValidade' id='dataValidade' value='".$dataValidade."'/>" .
                                            "</div>" .
                                            "<div class='col-6 col-12-xsmall'>" .
											"	Data de Nascimento:<br> <input type='date' name='dataNascimento' id='dataNascimento' value='".$dataNascimento."'/>" .
											"</div>" .				
											"<div class='col-12'>" .
												"<ul class='actions'>" . 
													"<input type='hidden' name='id' value='".$id."'>".
													"<li><input type='submit' value='Atualizar Piloto' class='primary' /></li>" .
													"<li><input type='reset' value='Limpar formulário' /></li>" .
												"</ul>" .
											"</div>" .
										"</div>" .
									"</form>" .
								"</section> " ;?>
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