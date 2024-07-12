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
								<h1>Conhecer a Frota da TAP</h1>
								<h2>Esta é a Família TAP</h2>
							</header>
							<section class="tiles">
							<?php  include 'ligacao_base_dados.php';?>
							<?php
								$sql = "SELECT * FROM modelo";
								$result = $conn->query($sql);
								if ($result->num_rows > 0){
									while($row = $result->fetch_assoc()){										
										if($row['id'] % 2 != 0){
										echo "<article class='style1'>";
										}
										else{
										echo "<article class='style2'>";
										};
										echo "<span class='image'>";
												echo "<img src='".$row['imgLink']."' alt='".$row['designacao']."'/>";
											echo "</span>";
											echo "<a href='modelo-detalhe.php?modelo=".$row['designacao']."'>";						
												echo "<h2>".$row['designacao']."</h2>";
												echo "<div class='content'>";
													echo "<br><br><p>".$row['slogan']."</p>";
												echo "</div>";
											echo "</a>";
										echo "</article>";
									}
								}
# FECHAR A LIGAÇÃO AO SERVIDOR SQL
$conn->close();
?>

							</section>
						</div>
					</div>

				<!-- Footer -->
				<?php 
				  include 'footer.php';
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