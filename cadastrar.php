<?php
// Incluindo a conexão com o banco de dados
include 'conexao.php';

// Verificando se o formulário foi enviado
if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    // Obtendo os dados do formulário
    $nome_usuario = $_POST['nome_usuario'];
    $contato_usuario = $_POST['contato_usuario'];
    $email_usuario = $_POST['email_usuario'];
    $senha_usuario = $_POST['senha_usuario'];

    // Criptografando a senha para segurança
    $senha_hash = password_hash($senha_usuario, PASSWORD_DEFAULT);

    // Preparando a consulta SQL para inserir os dados
    $sql = "INSERT INTO cadastro (nome_usuario, contato_usuario, email_usuario, senha_usuario) 
            VALUES (?, ?, ?, ?)";

    // Preparando a declaração (prepared statement)
    if ($stmt = $mysqli->prepare($sql)) {
        // Bind os parâmetros da consulta
        $stmt->bind_param("ssss", $nome_usuario, $contato_usuario, $email_usuario, $senha_hash);

        // Executando a consulta
        if ($stmt->execute()) {
            echo "Usuário cadastrado com sucesso!";
        } else {
            echo "Erro ao cadastrar: " . $stmt->error;
        }

        // Fechando a declaração
        $stmt->close();
    } else {
        echo "Erro ao preparar a consulta: " . $mysqli->error;
    }
}

// Fechando a conexão com o banco de dados
$mysqli->close();
?>
