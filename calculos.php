<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <title>Calculos em PHP</title>
</head>
<body>
    <h2>Calculadora</h2>
    <form method="post">
        <label for="num1">Número 1:</label>
        <input type="number" step="any" name="num1" required><br><br>
        
        <label for="num2">Número 2:</label>
        <input type="number" step="any" name="num2" required><br><br>
        
        <input type="submit" name="calcular" value="Calcular">
    </form>

    <?php
    if (isset($_POST['calcular'])) {
        $num1 = $_POST['num1'];
        $num2 = $_POST['num2'];

        $soma = $num1 + $num2;
        $subtracao = $num1 - $num2;
        $multiplicacao = $num1 * $num2;
        $divisao = $num2 != 0 ? $num1 / $num2 : "Divisão por zero não é permitida";

        echo "<h3>Resultados:</h3>";
        echo "Soma: $soma<br>";
        echo "Subtração: $subtracao<br>";
        echo "Multiplicação: $multiplicacao<br>";
        echo "Divisão: $divisao<br>";
    }
    ?>
</body>
</html>
