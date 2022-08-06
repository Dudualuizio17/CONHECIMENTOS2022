console.log(
calculator(3, 6)
);

//CRIE UMA FUNÇÃO CALCULO DAS 4 OPERACAOES PRINCIPAIS E ENTREGE TODOS OS RESULTADOS"
function calculator(sNumber1, sNumber2) {
    var oResult = {
        result_soma: 0,
        result_sub: 0,
        result_div: 0,
        result_mult: 0
    };

    oResult.result_soma = sNumber1 + sNumber2;

    oResult.result_sub = sNumber1 - sNumber2;

    if (sNumber2 > 0) {
        oResult.result_div = sNumber1 / sNumber2;
    }

    oResult.result_mult = sNumber1 * sNumber2;

    return oResult;
}

//CRIE UMA FUNÇÃO QUE RETORNE O TEXTO "Olá"
function sayHelloToUser() {
    return "Olá";
}

//CRIE UMA FUNÇÃO QUE SOME DOIS NUMEROS"
function sumNumber(sNumber1, sNumber2) {
    var sResult = sNumber1 + sNumber2;

    return sResult;
}

//CRIE UMA FUNÇÃO QUE SUBTRAIA DOIS NUMEROS"
function subtractNumber(sNumber1, sNumber2) {
    var sResult = sNumber1 - sNumber2;

    return sResult;
}

//CRIE UMA FUNÇÃO QUE DIVIDA DOIS NUMEROS"
function divideNumber(sNumber1, sNumber2) {
    if (sNumber2 > 0) {
        var sResult = sNumber1 / sNumber2;

        return Math.round(sResult);
    }
}

//CRIE UMA FUNÇÃO CALCULO DAS 4 OPERACAOES PRINCIPAISS"
function calculator(sNumber1, sNumber2, sAcao) {
    var sResult;

    switch (sAcao) {
        case 1: //sum
            sResult = sNumber1 + sNumber2;

            break;
        case 2: //subtract
            sResult = sNumber1 - sNumber2;

            break;
        case 3: //divide
            if (sNumber2 > 0) {
                sResult = sNumber1 / sNumber2;
            }

            break;
        case 4://multiple
            sResult = sNumber1 * sNumber2;

            break;
    }

    return sResult;
}

