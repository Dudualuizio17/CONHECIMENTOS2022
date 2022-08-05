# JAVA SCRIPT

## Comands:

***F12***: Abre a ferramenta do desensolvedor, Console.

***Document***: Lista todo o doc html

***document.querySelector( )*** : Lista e busca o seletor desejado.

***querySelector*** : ******para percorrer a árvore do **DOM** e encontrar o elemento que queremos utilizando **JavaScript**

 ***document.getElentById ('id)*** seleciona o elemento pelo `id` passado.

 ***document.getElementsByClassName:* retorna um array dos elementos** pelo nome da classe passada.

***document.getElementsByTagName:*** **retorna um array dos elementos** pelo nome da tag passada

 ***document.querySelectorAll(seletor):*** devolve todos os seletores com o mesmo nome

***const*** : Constante

***var*** : Variável

***template ` conteudo`*** :Utilizamos uma sintaxe nova do Java Script chamada “Template String”, que são os dois acentos gráficos no começo e no fim. O que ele vai fazer para nós é interpolar código HTML com Java Script. Então, eu vou criar um parágrafo `const conteudo =`

Dentro do parágrafo, eu vou passar o valor, mas o valor é uma expressão, o valor é Java Script.

[02:16] Para eu utilizar uma expressão Java Script dentro do “Template String”, eu tenho que utilizar cifrão e chaves, e dentro das chaves eu passo o valor `const conteudo =`

${valor} 

EX: const conteudo = `<p class="content">${valor}</p>`

***innerHTML :*** Então nós conseguimos acessar o conteúdo da `li` e colocar o valor que digitamos no campo do `input`, que é um parágrafo. Como fazemos isso? Com `tarefa.innerHTML = conteudo`

***appendChild :*** Adiciona um nó ao final da lista de filhos de um nó pai especificado. Se o nó já existir no documento, ele é removido de seu nó pai atual antes de ser adicionado ao novo pai.

```
var filho =elemento.appendChild(filho);
```

`elemento` é o [elemento (en-US)](https://developer.mozilla.org/en-US/docs/Web/API/Element) pai.

`filho` é o nó a ser adicionado como filho de `elemento`. Também é devolvido.

 O método `appendChild` devolve uma referência ao nó adicionado.

**Existem outros métodos que podemos utilizar para manipular nós:**

***insertBefore :*** (pai, filho): Coloca um nó antes do outro.

***replaceChild :*** ( elemento1, elemento2): Substitui o nó elemento 1 pelo nó elemento2.

***removeChild :*** (elemento): Remove um nó da árvore.

***parentElement*** : Subir um elemento na árvore do DOM

IIFE : (Immediately Invoked Function Expression) É um Design Pattern também conhecido como Self-Executing Anonymous Function e contém duas partes principais. A primeira é a função anônima cujo escopo léxico é encapsulado entre parênteses. IMPEDE QUE A REGRA DE NEGÓCIO FIQUE A DISPOSIÇÃO/ACESSÍVEL NO DEVTOOLS (F12)



**Palavra-chave**	  **Descrição**
var	                    Declara uma variável
let	                    Declara uma variável de bloco
const	                Declara uma constante de bloco
if	                    Marca um bloco de instruções a serem executadas em uma condição
switch	                Marca um bloco de instruções a serem executadas em diferentes casos
for	                    Marca um bloco de instruções a serem executadas em um loop
function	            Declara uma função
return	                Sai de uma função
try	                    Implementa o tratamento de erros para um bloco de instruções


**Números JavaScript**
JavaScript tem apenas um tipo de números.

Os números podem ser escritos com ou sem decimais:

Exemplo
let x1 = 34.00;     // Written with decimals
let x2 = 34;        // Written without decimals

**Booleanos JavaScript**
Booleanos podem ter apenas dois valores: trueou false.

Exemplo
let x = 5;
let y = 5;
let z = 6;
(x == y)       // Returns true
(x == z)       // Returns false

**Matrizes JavaScript**
Matrizes JavaScript são escritas com colchetes.

Os itens da matriz são separados por vírgulas.

O código a seguir declara (cria) um array chamado cars, contendo três itens (nomes dos carros):

Exemplo
const cars = ["Saab", "Volvo", "BMW"];

**Objetos JavaScript**
Objetos JavaScript são escritos com chaves {}.

As propriedades do objeto são escritas como pares nome:valor, separados por vírgulas.

Exemplo
const person = {firstName:"John", lastName:"Doe", age:50, eyeColor:"blue"};

**Eventos JavaScript**

Eventos HTML são "coisas" que acontecem com elementos HTML.

Quando o JavaScript é usado em páginas HTML, o JavaScript pode "reagir" a esses eventos.

Eventos HTML
Um evento HTML pode ser algo que o navegador faz ou algo que um usuário faz.

Aqui estão alguns exemplos de eventos HTML:

Uma página da Web HTML terminou de carregar
Um campo de entrada HTML foi alterado
Um botão HTML foi clicado
Muitas vezes, quando os eventos acontecem, você pode querer fazer alguma coisa.

JavaScript permite que você execute código quando os eventos são detectados.

HTML permite que atributos do manipulador de eventos, com código JavaScript , sejam adicionados aos elementos HTML.

Com aspas simples:

<element event='some JavaScript'>
Com aspas duplas:

<element event="some JavaScript">
No exemplo a seguir, um onclickatributo (com código) é adicionado a um <button>elemento:

Exemplo
<button onclick="document.getElementById('demo').innerHTML = Date()">The time is?</button>

**Eventos HTML comuns**
Aqui está uma lista de alguns eventos HTML comuns:

Event	                       Description
**onchange**	                   An HTML element has been changed                 (Elemento html alterado)
**onclick**	                       The user clicks an HTML element                  (clicar em um elemento)
**onmouseover**	                   The user moves the mouse over an HTML element    (ao mover o Mause)
**onmouseout**	                   The user moves the mouse away from an HTML element (Mover o mouse fora)
**onkeydown**	                   The user pushes a keyboard key                     (Pressionando tecla)
**onload**	                       The browser has finished loading the page          (Carregar a página)


**JavaScript Strings**
As strings JavaScript são para armazenar e manipular texto.
Uma string JavaScript é zero ou mais caracteres escritos entre aspas.

Para descobrir o tamanho de uma string, use a ***length*** propriedade interna:

Exemplo
let text = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
let length = text.length;
<p>The length property returns the length of a string:</p>

<p id="demo"></p>

<script>
let text = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
document.getElementById("demo").innerHTML = text.length;
</script>


Code	           Result
\b	               Backspace
\f	               Form Feed
\n	               New Line
\r	               Carriage Return
\t	               Horizontal Tabulator
\v	               Vertical Tabulator


**Métodos e propriedades de string**

Valores primitivos, como "John Doe", não podem ter propriedades ou métodos (porque não são objetos).

Mas com JavaScript, métodos e propriedades também estão disponíveis para valores primitivos, porque JavaScript trata valores primitivos como objetos ao executar métodos e propriedades.

Comprimento da String JavaScript
A length propriedade retorna o comprimento de uma string:

***Exemplo***
let txt = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
let length = txt.length;

<p id="demo"></p>

<script>
let text = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
document.getElementById("demo").innerHTML = text.length;
</script>


**Extraindo Partes de String**
Existem 3 métodos para extrair uma parte de uma string:

slice(start, end)
substring(start, end)
substr(start, length)
Fatia de string JavaScript()
slice()extrai uma parte de uma string e retorna a parte extraída em uma nova string.

O método tem 2 parâmetros: a posição inicial e a posição final (final não incluído).
***Exemplo***
Corte uma parte de uma corda da posição 7 para a posição 13 (13 não incluída):

let str = "Apple, Banana, Kiwi";
let part = str.slice(7, 13);

**Substituindo o conteúdo da string**
O replace()método substitui um valor especificado por outro valor em uma string:

***Exemplo***
let text = "Please visit Microsoft!";
let newText = text.replace("Microsoft", "W3Schools");

***Observação***
O replace()método não altera a string em que é chamado.

O replace()método retorna uma nova string.

O replace()método substitui apenas a primeira correspondência

Se você quiser substituir todas as correspondências, use uma expressão regular com o sinalizador /g definido. Veja exemplos abaixo.

let text = "Please visit Microsoft and Microsoft!";
let newText = text.replace(/Microsoft/g, "W3Schools");

**Convertendo para Maiúsculas e Minúsculas**
Uma string é convertida para maiúscula com toUpperCase():

Uma string é convertida em letras minúsculas com toLowerCase()

**JavaScript String concat()**
concat() joins two or more strings:
Example
let text1 = "Hello";
let text2 = "World";
let text3 = text1.concat(" ", text2);

**JavaScript String trim()**
O trim() método remove os espaços em branco de ambos os lados de uma string:

Exemplo
let text1 = "      Hello World!      ";
let text2 = text1.trim();

**Extraindo caracteres de string**

Existem 3 métodos para extrair caracteres de string:

charAt(position)
charCodeAt(position)
Acesso à propriedade [ ]

**Convertendo uma String em um Array**
Se você quiser trabalhar com uma string como uma matriz, poderá convertê-la em uma matriz.

***JavaScript String split()***
Uma string pode ser convertida em um array com o split()método:

Exemplo
text.split(",")    // Split on commas
text.split(" ")    // Split on spaces
text.split("|")    // Split on pipe

**Pesquisa de String JavaScript**
Métodos de pesquisa JavaScript
String indexOf() ***POSIÇÃO INICIAL DA PRIMEIRA VEZ QUE O TEXTO APARECE***
String lastIndexOf() ***POSIÇÃO INICIAL DA ULTIMA VEZ QUE O TEXTO APARECE***
String startsWith() ***COMEÇA COM UM VALOR ESPECIFICADO***
String endsWith() ***TERMINA COM UM VALOR ESPEIFICADO***

**JavaScript String match()**
O método match() pesquisa uma string em busca de uma correspondência com uma expressão regular e retorna as correspondências como um objeto Array.

**String JavaScript includes()**
O includes()método retorna true se uma string contiver um valor especificado.

**JavaScript String startsWith()**
O startsWith()método retorna true se uma string começa com um valor especificado, caso contrário false.

**JavaScript String endsWith()**
The endsWith() método retorna true se uma string termina com um valor especificado, caso contrário false.

**JavaScript Template Literals**
Synonyms:
Template Literals
Template Strings
String Templates
Back-Tics Syntax

***Citações Dentro de Strings***
Com literais de modelo , você pode usar aspas simples e duplas dentro de uma string:

Exemplo
let text = `He's often called "Johnny"`; result= He's often called "Johnny"

**Convertendo Variáveis ​​em Números**
Existem 3 métodos JavaScript que podem ser usados ​​para converter variáveis ​​em números:

O Number() 
O parseInt() 
O parseFloat() 
Esses métodos não são métodos numéricos , mas métodos JavaScript globais .

**Métodos JavaScript globais**
Os métodos globais JavaScript podem ser usados ​​em todos os tipos de dados JavaScript.

Estes são os métodos mais relevantes, ao trabalhar com números:

Method	             Description
Number()	         Returns a number, converted from its argument.
parseFloat()	     Parses its argument and returns a floating point number
parseInt()	         Parses its argument and returns an integer

***O método toString()***
O toString()método retorna um número como uma string.

***O método toExponential()***
toExponential()retorna uma string, com um número arredondado e escrito usando notação exponencial.

***O método toFixed()***
toFixed()retorna uma string, com o número escrito com um número especificado de decimais
toFixed(2)é perfeito para trabalhar com dinheiro.

***O método toPrecision()***
toPrecision()retorna uma string, com um número escrito com um comprimento especificado

**Propriedades do número**
***Property***             	***Description***
MAX_VALUE	                   Returns the largest number possible in JavaScript
MIN_VALUE	                   Returns the smallest number possible in JavaScript
POSITIVE_INFINITY	           Represents infinity (returned on overflow)
NEGATIVE_INFINITY	           Represents negative infinity (returned on overflow)
NaN	                           Represents a "Not-a-Number" value

**JavaScript Arrays**
Um array é uma variável especial, que pode conter mais de um valor.
EXEMPLO:
const cars = ["Saab", "Volvo", "BMW"];

Você também pode criar uma Array e fornecer os elementos:

Exemplo
const cars = [];
cars[0]= "Saab";
cars[1]= "Volvo";
cars[2]= "BMW";

***Acessando elementos da array***
Você acessa um elemento de array referindo-se ao número do índice :

const cars = ["Saab", "Volvo", "BMW"];
let car = cars[0];

***Alterando um elemento de array***
Esta instrução altera o valor do primeiro elemento em cars:

cars[0] = "Opel";

***Acesse a Array completa***
Com JavaScript, o array completo pode ser acessado consultando o nome do array:

Exemplo
const cars = ["Saab", "Volvo", "BMW"];
document.getElementById("demo").innerHTML = cars

***A propriedade de comprimento***
A lengthpropriedade de um array retorna o comprimento de um array (o número de elementos do array).

Exemplo
const fruits = ["Banana", "Orange", "Apple", "Mango"];
let length = fruits.length;

***Looping Array Elements***

Uma maneira de percorrer um array é usar um for loop:

Exemplo
const fruits = ["Banana", "Orange", "Apple", "Mango"];
let fLen = fruits.length;

let text = "<ul>";
for (let i = 0; i < fLen; i++) {
  text += "<li>" + fruits[i] + "</li>";
}
text += "</ul>";

**Adicionando elementos Array**
A maneira mais fácil de adicionar um novo elemento a um array é usando o push()método:

Exemplo
const fruits = ["Banana", "Orange", "Apple"];
fruits.push("Lemon");  ***Adds a new element (Lemon) to fruits***

**Arrays Associativas**
Muitas linguagens de programação suportam arrays com índices nomeados.

Arrays com índices nomeados são chamados de arrays associativos (ou hashes).

JavaScript não suporta arrays com índices nomeados.

Em JavaScript, arrays sempre usam índices numerados .  

***A diferença entre arrays e objetos***
Em JavaScript, arrays usam índices numerados .  
Em JavaScript, os objetos usam índices nomeados .

***Quando usar arrays. Quando usar objetos.***
JavaScript não suporta arrays associativos.
Você deve usar objetos quando quiser que os nomes dos elementos sejam strings (texto) .
Você deve usar arrays quando quiser que os nomes dos elementos sejam números .

***JavaScript nova array()***
JavaScript tem um construtor de array embutido new Array().

Mas você pode usar com segurança []em vez disso.

Essas duas instruções diferentes criam um novo array vazio chamado points:

const points = new Array();
const points = [];

**Como reconhecer uma matriz**
Uma pergunta comum é: Como saber se uma variável é um array?

O problema é que o operador JavaScript typeofretorna " object":

const fruits = ["Banana", "Orange", "Apple"];
let type = typeof fruits;

O operador typeof retorna objeto porque uma matriz JavaScript é um objeto.

Solução 1:
Para resolver este problema, o ECMAScript 5 (JavaScript 2009) definiu um novo método **Array.isArray():**

Solução 2:
O **instanceof** operador retorna true se um objeto for criado por um determinado construtor:

const fruits = ["Banana", "Orange", "Apple"];

fruits instanceof Array;

**ARRAYS RESUMO**

***sort()***       Organiza em ordem alfabética (Transforma tudo em String)
***reverse()***    Organiza em ordem decrescente (Transforma tudo em String)
***toString()***   Converte um array em uma string de valores de array
***join()***       Também une todos os elementos do array em uma string.
***pop()***        Remove o último elemento de um array
***push()***       Adiciona um novo elemento a um array (no final)
***shift()***      Remove o primeiro elemento da matriz e "desloca" todos os outros elementos para um índice inferior.
***unshift()***    Adiciona um novo elemento a um array (no início) e "desloca" os elementos mais antigos
***concat()***     Cria um novo array mesclando (concatenando) arrays existentes
***delete***       Excluindo a array
***splice()***     Método adiciona novos itens a uma array.
***slice()***      Método fatia um pedaço de uma array.


***Classificação numérica***
Por padrão, a sort()função classifica os valores como strings .

Isso funciona bem para strings ("Apple" vem antes de "Banana").

No entanto, se os números forem classificados como strings, "25" é maior que "100", porque "2" é maior que "1".

Por causa disso, o sort()método produzirá um resultado incorreto ao classificar os números.

Você pode corrigir isso fornecendo uma função de comparação :

Exemplo
***const points = [40, 100, 1, 5, 25, 10];***
***points.sort(function(a, b){return a - b});***

**A função de comparação**
A finalidade da função de comparação é definir uma ordem de classificação alternativa.

A função de comparação deve retornar um valor negativo, zero ou positivo, dependendo dos argumentos:

***function(a, b){return a - b}***

Quando a sort()função compara dois valores, ela envia os valores para a função de comparação e classifica os valores de acordo com o valor retornado (negativo, zero, positivo).

Se o resultado for negativo **a** é classificado antes de **b** .

Se o resultado for positivo **b** é classificado antes de **a** .

Se o resultado for 0, nenhuma alteração será feita com a ordem de classificação dos dois valores.

Exemplo:

A função compare compara todos os valores na matriz, dois valores por vez (a, b).

Ao comparar 40 e 100, o sort()método chama a função de comparação(40, 100).

A função calcula 40 - 100 (a - b)e, como o resultado é negativo (-60), a função de classificação classificará 40 como um valor menor que 100.

Você pode usar este snippet de código para experimentar a classificação numérica e alfabética:

**JavaScript Array delete()**
Aviso !
Os elementos da matriz podem ser excluídos usando o operador JavaScript delete.

Usando delete deixa undefined buracos na matriz.

Use pop() ou shift() em vez disso.

**Automatic toString()**
JavaScript converte automaticamente um array em uma string separada por vírgulas quando um valor primitivo é esperado.
Este é sempre o caso quando você tenta gerar uma matriz.

Esses dois exemplos produzirão o mesmo resultado:
Exemplo
const fruits = ["Banana", "Orange", "Apple", "Mango"];
document.getElementById("demo").innerHTML = fruits.toString();

Exemplo 2
const fruits = ["Banana", "Orange", "Apple", "Mango"];
document.getElementById("demo").innerHTML = fruits;

**Encontrando Max and Min em um Array**
Não há funções internas para localizar o valor mais alto ou mais baixo em uma matriz JavaScript.
Você aprenderá como resolver esse problema no próximo capítulo deste tutorial.


**JavaScript Date Objects**
Por padrão, o JavaScript usará o fuso horário do navegador e exibirá uma data como uma string de texto completo:
Exemplo
const d = new Date();

Seg 01 de agosto de 2022 10:43:22 GMT-0300 (Horário Padrão de Brasília)

***Criando Date objects***
Objetos de data são criados com o new Date()construtor.

Existem 4 maneiras de criar um novo objeto de data:

***new Date()***
***new Date(year, month, day, hours, minutes, seconds, milliseconds)***
***new Date(milliseconds)***
***new Date(date string)***

**Nota:**
JavaScript conta meses de 0 a 11 :
Janeiro = 0 .
Dezembro = 11 .

O JavaScript irá (por padrão) exibir datas no formato de string de texto completo:
Mon Aug 01 2022 11:00:53 GMT-0300 (Horário Padrão de Brasília)

Quando você exibe um objeto de data em HTML, ele é convertido automaticamente em uma string, com o toString()método.

Exemplo
const d = new Date();
d.toString();

O **toDateString()** converte uma data em um formato mais legível:

Exemplo
const d = new Date();
d.toDateString();
***Mon Aug 01 2022***

O **toISOString()** converte um objeto Date em uma string, usando o formato padrão ISO:

Exemplo
const d = new Date();
d.toISOString();

**JavaScript Date Formats**
Geralmente, existem 3 tipos de formatos de entrada de data JavaScript:

***Modelo***	                   ***Exemplo***
ISO DATE	                          "2015-03-25" (O Padrão Internacional)
SHORT DATE	                        "03/25/2015"
LONG DATE	                          "Mar 25 2015" ou "25 Mar 2015"

***ISO DATE JavaScript***
A ISO 8601 é a norma internacional para a representação de datas e horas.

A sintaxe ISO 8601 (AAAA-MM-DD) também é o formato de data JavaScript preferido:

Exemplo (data completa)
const d = new Date("2015-03-25");

***UTC (Universal Time Coordinated) é o mesmo que GMT (Greenwich Mean Time).***

**Fusos horários**
Ao definir uma data, sem especificar o fuso horário, o JavaScript usará o fuso horário do navegador.

Ao obter uma data, sem especificar o fuso horário, o resultado é convertido para o fuso horário do navegador.

Em outras palavras: Se uma data/hora for criada em GMT (Greenwich Mean Time), a data/hora será convertida para CDT (Central US Daylight Time) se um usuário navegar a partir da região central dos EUA.


**Date Input - Parsing Dates**
Se você tiver uma string de data válida, poderá usar o Date.parse()método para convertê-la em milissegundos.

Date.parse()retorna o número de milissegundos entre a data e 1º de janeiro de 1970:

Exemplo
let msec = Date.parse("March 21, 2012");

**JavaScript Get Date Methods**
Esses métodos podem ser usados ​​para obter informações de um objeto de data:

***Method***	               ***Description***
getFullYear()	                  Get the year as a four digit number (yyyy)
getMonth()	                    Get the month as a number (0-11)
getDate()	                      Get the day as a number (1-31)
getHours()	                    Get the hour (0-23)
getMinutes()	                  Get the minute (0-59)
getSeconds()	                  Get the second (0-59)
getMilliseconds()	              Get the millisecond (0-999)
getTime()	                      Get the time (milliseconds since January 1, 1970)
getDay()	                      Get the weekday as a number (0-6)
Date.now()	                    Get the time. ECMAScript 5.

**Métodos de data UTC**
Os métodos de data UTC são usados ​​para trabalhar com datas UTC (datas do fuso horário universal):

***Method***	                ***Description***
getUTCDate()	                   Same as getDate(), but returns the UTC date
getUTCDay()	                     Same as getDay(), but returns the UTC day
getUTCFullYear()	               Same as getFullYear(), but returns the UTC year
getUTCHours()	                   Same as getHours(), but returns the UTC hour
getUTCMilliseconds()	           Same as getMilliseconds(), but returns the UTC milliseconds
getUTCMinutes()	                 Same as getMinutes(), but returns the UTC minutes
getUTCMonth()	                   Same as getMonth(), but returns the UTC month
getUTCSeconds()	                 Same as getSeconds(), but returns the UTC seconds

**JavaScript Set Date Methods**
Os métodos Set Date são usados ​​para definir uma parte de uma data:

***Method***	                 ***Description***
setDate()	                        Set the day as a number (1-31)
setFullYear()	                    Set the year (optionally month and day)
setHours()	                      Set the hour (0-23)
setMilliseconds()	                Set the milliseconds (0-999)
setMinutes()	                    Set the minutes (0-59)
setMonth()	                      Set the month (0-11)
setSeconds()	                    Set the seconds (0-59)
setTime()	                        Set the time (milliseconds since January 1, 1970)

**JavaScript Math Object**
O objeto JavaScript Math permite que você execute tarefas matemáticas em números.

O objeto matemático
Ao contrário de outros objetos, o objeto Math não possui construtor.
O objeto Math é estático.
Todos os métodos e propriedades podem ser usados ​​sem primeiro criar um objeto Math.

Propriedades matemáticas (constantes)
A sintaxe para qualquer propriedade Math é: .Math.property

***JavaScript fornece 8 constantes matemáticas que podem ser acessadas como propriedades matemáticas:***

Exemplo
Math.E        // returns Euler's number
Math.PI       // returns PI
Math.SQRT2    // returns the square root of 2
Math.SQRT1_2  // returns the square root of 1/2
Math.LN2      // returns the natural logarithm of 2
Math.LN10     // returns the natural logarithm of 10
Math.LOG2E    // returns base 2 logarithm of E
Math.LOG10E   // returns base 10 logarithm of E

***Métodos matemáticos***
A sintaxe para qualquer método Math é:Math.method(number)

***Número para inteiro***
Existem 4 métodos comuns para arredondar um número para um inteiro:

Math.round(x)	Retorna x arredondado para o inteiro mais próximo
Math.ceil(x)	Retorna x arredondado para o inteiro mais próximo
Math.floor(x)	Retorna x arredondado para o inteiro mais próximo
Math.trunc(x)	Retorna a parte inteira de x ( novo no ES6 )

***Math.sign()***
Math.sign(x)retorna se x for negativo, nulo ou positivo:

***Math.pow()***
Math.pow(x, y)retorna o valor de x elevado a y:

Exemplo
Math.pow(8, 2);

***Math.sqrt()***
Math.sqrt(x)retorna a raiz quadrada de x:

Exemplo
Math.sqrt(64);

***Math.abs()***
Math.abs(x)retorna o valor absoluto (positivo) de x:

Exemplo
Math.abs(-4.7);

***Math.sin()***
Math.sin(x)retorna o seno (um valor entre -1 e 1) do ângulo x (dado em radianos).

Se você quiser usar graus em vez de radianos, você deve converter graus em radianos:

Ângulo em radianos = Ângulo em graus x PI / 180.

***Math.cos()***
Math.cos(x)retorna o cosseno (um valor entre -1 e 1) do ângulo x (dado em radianos).

Se você quiser usar graus em vez de radianos, você deve converter graus em radianos:

Ângulo em radianos = Ângulo em graus x PI / 180.

***Math.min() e Math.max()***
Math.min()e Math.max()pode ser usado para encontrar o valor mais baixo ou mais alto em uma lista de argumentos:

Exemplo
Math.min(0, 150, 30, 20, -8, -200);
Exemplo
Math.max(0, 150, 30, 20, -8, -200);

***Math.random()***
Math.random()retorna um número aleatório entre 0 (inclusive) e 1 (exclusivo):

**JavaScript Booleans**
Um JavaScript Boolean representa um de dois valores: true ou false .

Valores Booleanos
Muitas vezes, em programação, você precisará de um tipo de dados que só pode ter um de dois valores, como

YES / NO
ON / OFF
TRUE / FALSE
Para isso, o JavaScript possui um tipo de dados booleano . Ele só pode assumir os valores true ou false .

***The Boolean() Function***
Você pode usar a função Boolean() para descobrir se uma expressão (ou uma variável) é verdadeira:

Exemplo
Boolean(10 > 9)

***Comparisons and Conditions***
O capítulo Comparações de JS oferece uma visão geral completa dos operadores de comparação.
O capítulo Condições JS fornece uma visão geral completa das declarações condicionais.

aqui estão alguns exemplos:

**Operator**	          **Description**	             **Example**
==	                      equal to	                   if (day == "Monday")
>	                        greater than	               if (salary > 9000)
<	                        less than	                   if (age < 18)

**Operadores lógicos**
Os operadores lógicos são usados ​​para determinar a lógica entre variáveis ​​ou valores.
Dado que x = 6e y = 3, a tabela abaixo explica os operadores lógicos:

**Operator**	         **Description**	            **Example**
&&	                     and	                        (x < 10 && y > 1) is true	
||	                     or	                          (x == 5 || y == 5) is false	
!	                       not	                        !(x == y) is true

**Operador condicional (ternário)**
JavaScript também contém um operador condicional que atribui um valor a uma variável com base em alguma condição.

Sintaxe
variablename = (condition) ? value1:value2 
***Exemplo***
let voteable = (age < 18) ? "Too young":"Old enough";


**JavaScript if, else, and else if**
As instruções condicionais são usadas para executar diferentes ações com base em diferentes condições.

***Declarações Condicionais***
Muitas vezes, quando você escreve código, deseja executar ações diferentes para decisões diferentes.

Você pode usar instruções condicionais em seu código para fazer isso.

Em JavaScript temos as seguintes declarações condicionais:

Use **if** para especificar um bloco de código a ser executado, se uma condição especificada for verdadeira
Use **else** para especificar um bloco de código a ser executado, se a mesma condição for falsa
Use **else if** para especificar uma nova condição a ser testada, se a primeira condição for falsa
Use **switch** para especificar muitos blocos alternativos de código a serem executados

**A declaração else**
Use a elseinstrução para especificar um bloco de código a ser executado se a condição for falsa.

if (condition) {
    ***block of code to be executed if the condition is true***
} else {
   ***block of code to be executed if the condition is false***
}

***Exemplo***
Se a hora for menor que 18, crie uma saudação "Bom dia", caso contrário, "Boa noite":

if (hour < 18) {
  greeting = "Good day";
} else {
  greeting = "Good evening";
}

***A declaração else if***
Use a else ifinstrução para especificar uma nova condição se a primeira condição for falsa.

Sintaxe
if (condition1) {
  //  block of code to be executed if condition1 is true
} else if (condition2) {
  //  block of code to be executed if the condition1 is false and condition2 is true
} else {
  //  block of code to be executed if the condition1 is false and condition2 is false
}

**JavaScript Switch Statement**
A switch é usada para executar diferentes ações com base em diferentes condições.
Use a switch para selecionar um dos muitos blocos de código a serem executados.

Sintaxe
switch(expression) {
  case x:
    // code block
    break;
  case y:
    // code block
    break;
  default:
    // code block
}