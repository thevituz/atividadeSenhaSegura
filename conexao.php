<?php
$hostname = "sql301.infinityfree.com";
$usuario = "if0_39533670";
$senha = "ABfTOY8chEjx";
$bancodedados = "banco_php";

$mysqli = new mysqli($hostname, $usuario, $senha, $bancodedados);

if ($mysqli->connect_errno) {
    echo "Falha ao conectar: (" . $mysqli->connect_errno . ") " . $mysqli->connect_error;
    exit();
}
?>
