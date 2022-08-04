console.log(
    sNotes(10, 6, 6)


);

//CRIE UMA FUNÇÃO CONCATENANDO O RESULTADO, Farenheit p/ Celsius"
function toCelsius(Farenheit) {
    var sTemp = (5 / 9) * (Farenheit - 32);

    var text = "A temperatura é: " + sTemp + " Celsius";

    return text;


}

//CRIANDO UMA FUNÇÃO E APRESENTANDO O RESULTADO EM UM OBJETO
function sColors(sCor1, sCor2, sCor3) {

    var oCars = {
        carro1: "Fusca",
        carro2: "Chevete",
        carro3: "monza"
    }

    var result = oCars.carro1 + " " + sCor1 + "," + oCars.carro2 + " " + sCor2 + "," + oCars.carro3 + " " + sCor3;


    return result;
}

// CRIANDO UMA FUNÇÃO E INCLUINDO FUNÇÃO DE MÉDIA (Recebendo nota dos alunos)
function sNotes(sNumber1, sNumber2, sNumber3) {
    var text = "";
    var sum = (sNumber1 + sNumber2 + sNumber3);
    var sMedia = sum / 3;

    if (sMedia < 6) {
        text = "Reprovado";
    }
    if (sMedia > 6) {
        text = "Aprovado";
    }

    return text;
}