<?php

# 1. LIGAÇÃO AO MEU SERVIDOR SQL
$nomeServidor = "localhost";
$utilizador = "root";
$senha = "";
$basedados = "tap";

// Criar a ligação
$conn = new mysqli($nomeServidor, $utilizador, $senha, $basedados);
//var_dump($ligacao);
if($conn->connect_error){
  die("Ligação falhou" . $conn->connect_error);
}
// echo "Conexão estabelecida com sucesso";
// echo "<br><br><hr>";

?>