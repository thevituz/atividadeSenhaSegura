function validaSenha(){
    let senha = document.getElementById("senha_usuario").value;
    let botao = document.getElementById("bot_cad");

    // Verificações
    const tem8Caracteres = senha.length >= 8;
    const temNumero = /[0-9]/.test(senha);
    const temMaiuscula = /[A-Z]/.test(senha);
    const temMinuscula = /[a-z]/.test(senha);
    const temEspecial = /[!@#\$%\^&\*]/.test(senha);

    // Atualiza cores das mensagens
    document.getElementById("val1").style.color = tem8Caracteres ? "green" : "gray";
    document.getElementById("val2").style.color = temNumero ? "green" : "gray";
    document.getElementById("val3").style.color = temMaiuscula ? "green" : "gray";
    document.getElementById("val4").style.color = temMinuscula ? "green" : "gray";
    document.getElementById("val5").style.color = temEspecial ? "green" : "gray";

    // Habilita botão se todas forem verdadeiras
    if (tem8Caracteres && temNumero && temMaiuscula && temMinuscula && temEspecial) {
        botao.disabled = false;
    } else {
        botao.disabled = true;
    }
}
