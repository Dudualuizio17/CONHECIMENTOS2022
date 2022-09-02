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

**A palavra-chave BREAK**
Quando o JavaScript atinge uma palavra- break , ele sai do bloco switch.
Isso interromperá a execução dentro do bloco switch.
Não é necessário quebrar o último caso em um bloco de comutação. O bloco quebra (termina) lá de qualquer maneira.

**A palavra-chave DEFAULT**
A default palavra-chave especifica o código a ser executado se não houver correspondência entre os cases:

**JavaScript For Loop**
Os loops podem executar um bloco de código várias vezes.
Os loops são úteis, se você quiser executar o mesmo código várias vezes, cada vez com um valor diferente.

Muitas vezes, esse é o caso ao trabalhar com matrizes:
***Em vez de escrever:***
text += cars[0] + "<br>";
text += cars[1] + "<br>";
text += cars[2] + "<br>";
text += cars[3] + "<br>";
text += cars[4] + "<br>";
text += cars[5] + "<br>";

***Você pode escrever:***
for (let i = 0; i < cars.length; i++) {
  text += cars[i] + "<br>";
}

**Diferentes tipos de loops**
JavaScript suporta diferentes tipos de loops:

***for*** -percorre um bloco de código várias vezes
***for/in*** - percorre as propriedades de um objeto
***for/of***- percorre os valores de um objeto iterável
***while***- percorre um bloco de código enquanto uma condição especificada é verdadeira
***do/while***- também percorre um bloco de código enquanto uma condição especificada for verdadeira

**O For Loop** 
O for loop tem a seguinte sintaxe:

for (statement 1; statement 2; statement 3) {
  // code block to be executed
}
A instrução 1 é executada (uma vez) antes da execução do bloco de código.
A instrução 2 define a condição para executar o bloco de código.
A instrução 3 é executada (todas as vezes) após a execução do bloco de código.

Exemplo
for (let i = 0; i < 5; i++) {
  text += "The number is " + i + "<br>";
}
Do exemplo acima, você pode ler:

A instrução 1 define uma variável antes do início do loop (seja i = 0).

A instrução 2 define a condição para a execução do loop (i deve ser menor que 5).

A instrução 3 aumenta um valor (i++) cada vez que o bloco de código no loop é executado.

***Declaração 1***
Normalmente você usará a instrução 1 para inicializar a variável usada no loop (deixe i = 0).
Isso nem sempre é o caso, o JavaScript não se importa. A instrução 1 é opcional.
Você pode iniciar muitos valores na instrução 1 (separados por vírgula):

***Declaração 2***
Freqüentemente, a instrução 2 é usada para avaliar a condição da variável inicial.
Isso nem sempre é o caso, o JavaScript não se importa. A instrução 2 também é opcional.
Se a instrução 2 retornar true, o loop começará novamente, se retornar false, o loop terminará.

***Declaração 3***
Freqüentemente, a instrução 3 incrementa o valor da variável inicial.
Isso nem sempre é o caso, o JavaScript não se importa e a instrução 3 é opcional.
A instrução 3 pode fazer qualquer coisa como incremento negativo (i--), incremento positivo (i = i + 15) ou qualquer outra coisa.
A instrução 3 também pode ser omitida (como quando você incrementa seus valores dentro do loop):

**Escopo de loop**
Usando varem um loop:

Exemplo
var i = 5;

for (var i = 0; i < 10; i++) {
  // some code
}
// Here i is 10

**For/Of and For/In Loops**
A instrução JavaScript for inpercorre as propriedades de um objeto:
Sintaxe
for (key in object) {
  Código a ser executado
}
***Exemplo***
const person = {fname:"John", lname:"Doe", age:25};

let text = "";
for (let x in person) {
  text += person[x];
}

**For In Over Arrays**
A instrução JavaScript for intambém pode fazer um loop sobre as propriedades de um Array:

Sintaxe
for (variable in array) {
  code
}

Exemplo
const numbers = [45, 4, 9, 16, 25];

let txt = "";
for (let x in numbers) {
  txt += numbers[x];
}

**Array.forEach()**
O forEach() chama uma função (uma função de retorno de chamada) uma vez para cada elemento da matriz.

Exemplo
const numbers = [45, 4, 9, 16, 25];

let txt = "";
numbers.forEach(myFunction);

function myFunction(value, index, array) {
  txt += value;
}

**JavaScript For Of**
O For Of Loop
A instrução JavaScript for ofpercorre os valores de um objeto iterável.

Ele permite que você faça um loop sobre estruturas de dados iteráveis, como Arrays, Strings, Maps, NodeLists e muito mais:

Sintaxe
for (variable of iterable) {
  // code block to be executed
}

**Loop sobre uma matriz**
Exemplo
const cars = ["BMW", "Volvo", "Mini"];

let text = "";
for (let x of cars) {
  text += x;
}

**Loop sobre uma String**
Exemplo
let language = "JavaScript";

let text = "";
for (let x of language) {
text += x;
}

**While Loops**
Os loops podem executar um bloco de código desde que uma condição especificada seja verdadeira.

O while loop percorre um bloco de código enquanto uma condição especificada for verdadeira.

Sintaxe
while (condition) {
  // code block to be executed
}
Exemplo
No exemplo a seguir, o código no loop será executado repetidamente, desde que uma variável (i) seja menor que 10:

while (i < 10) {
  text += "The number is " + i;
  i++;
}

O ***do while***  é uma variante do loop while. Este loop executará o bloco de código uma vez, antes de verificar se a condição é verdadeira, então repetirá o loop enquanto a condição for verdadeira.

Sintaxe
do {
  // code block to be executed
}
while (condition);
Exemplo
O exemplo abaixo usa um do while . O loop sempre será executado pelo menos uma vez, mesmo que a condição seja falsa, pois o bloco de código é executado antes que a condição seja testada:

Exemplo
do {
  text += "The number is " + i;
  i++;
}
while (i < 10);

**JavaScript Break and Continue**
A instrução break "salta para fora" de um loop.

A instrução continue "salta sobre" uma iteração no loop.

**A declaração de BREAK**
Você já viu a break usada em um capítulo anterior deste tutorial. Foi usado para "saltar" de uma switch().

A break também pode ser usada para sair de um loop:

Exemplo
for (let i = 0; i < 10; i++) {
  if (i === 3) { break; }
  text += "The number is " + i + "<br>";
}
No exemplo acima, a instrução break termina o loop ("quebra" o loop) quando o contador de loop (i) é 3.

**A Declaração Continue**
A continue interrompe uma iteração (no loop), se ocorrer uma condição especificada, e continua com a próxima iteração no loop.

Este exemplo ignora o valor de 3:

Exemplo
for (let i = 0; i < 10; i++) {
  if (i === 3) { continue; }
  text += "The number is " + i + "<br>";
}

**JavaScript Labels**
Para rotular as instruções JavaScript, você precede as instruções com um nome de rótulo e dois pontos:
label:
statements

As instruções breake as continuesão as únicas instruções JavaScript que podem "saltar" de um bloco de código.
Sintaxe:

break labelname;

continue labelname;

A continue instrução (com ou sem uma referência de rótulo) só pode ser usada para pular uma iteração de loop .
A breakinstrução, sem uma referência de rótulo, só pode ser usada para sair de um loop ou de um switch .
Com uma referência de rótulo, a instrução break pode ser usada para saltar de qualquer bloco de código :

Exemplo
const cars = ["BMW", "Volvo", "Saab", "Ford"];
list: {
  text += cars[0] + "<br>";
  text += cars[1] + "<br>";
  break list;
  text += cars[2] + "<br>";
  text += cars[3] + "<br>";
}

**JavaScript Iterables**
Iterables são objetos iteráveis ​​(como Arrays).

Iterables podem ser acessados ​​com código simples e eficiente.

Iterables podem ser iterados com for..of loops

***O For Of Loop***
A instrução JavaScript for..of percorre os elementos de um objeto iterável.

Sintaxe
for (variable of iterable) {
  // code block to be executed
}

***Iterando***
Iterar é fácil de entender.
Significa simplesmente fazer um loop sobre uma sequência de elementos.

Aqui estão alguns exemplos fáceis:

Iterando sobre uma String
Iterando sobre um Array

***Iterando sobre uma String***
Você pode usar um for..of loop para iterar sobre os elementos de uma string:

Exemplo
const name = "W3Schools";

for (const x of name) {
  // code block to be executed
}

***Iterando sobre um array***
Você pode usar um for..of loop para iterar sobre os elementos de um Array:

Exemplo
const letters = ["a","b","c"];

for (const x of letters) {
  // code block to be executed
}

**JavaScript Sets**
Um SET JavaScript é uma coleção de valores exclusivos.

Cada valor só pode ocorrer uma vez em um Set.

**Métodos de Conjuntos Essenciais**

***Método	                        Descrição***
new Set()	                        Cria um novo conjunto
add()		                          Adiciona um novo elemento ao conjunto
delete()		                      Remove um elemento de um Set
has()		                          Retorna true se existir um valor no Set
forEach()		                      Invoca um retorno de chamada para cada elemento no conjunto
values()	                        Retorna um iterador com todos os valores em um Set

***Propriedade	                  Descrição***
Size	                            Retorna o número de elementos em um Set

**Como criar um conjunto**
Você pode criar um conjunto de JavaScript por:

Passando um array para new Set()
Crie um novo Set e use add()para adicionar valores
Crie um novo Set e use add()para adicionar variáveis

**O New Set()**
Passe um Array para o new Set()construtor:

Exemplo
// Create a Set
const letters = new Set(["a","b","c"]);

***Crie um Set e adicione valores:***
Exemplo
// Create a Set
const letters = new Set();

// Add Values to the Set
letters.add("a");
letters.add("b");
letters.add("c");

***Crie um Set e adicione variáveis:***

Exemplo
// Create a Set
const letters = new Set();

// Create Variables
const a = "a";
const b = "b";
const c = "c";

// Add Variables to the Set
letters.add(a);
letters.add(b);
letters.add(c);

**O método add()**
Exemplo
letters.add("d");
letters.add("e");

**O método forEach()**
O forEach()método invoca (chama) uma função para cada elemento Set:

Exemplo
// Create a Set
const letters = new Set(["a","b","c"]);

// List all Elements
let text = "";
letters.forEach (function(value) {
  text += value;
})

**O método values()**
O values()método retorna um novo objeto iterador contendo todos os valores em um Set:

Exemplo
letters.values()   // Returns [object Set Iterator]

***Agora você pode usar o objeto Iterator para acessar os elementos:***

Exemplo
// List all Elements
let text = "";
for (const x of letters.values()) {
  text += x;
}

**JavaScript Maps**
Um Map contém pares de chave-valor em que as chaves podem ser de qualquer tipo de dados.
Um mapa lembra a ordem de inserção original das chaves.

**Essential Map Methods**

***Method	              Description***
   new Map()	          Cria um novo mapa
   set()	              Define o valor de uma chave em um mapa
   get()	              Obtém o valor de uma chave em um mapa
   delete()	            Remove um elemento Map especificado pela chave
   has()	              Retorna verdadeiro se existir uma chave em um mapa
   forEach()	          Chama uma função para cada par chave/valor em um mapa
   entries()	          Retorna um iterador com os pares [chave, valor] em um mapa

***Property	            Description***
   size	                  Returns the number of elements in a Map


**Como criar um mapa**
Você pode criar um mapa JavaScript por:

Passando um array paranew Map()
Crie um mapa e useMap.set()

O novo método Map()
Você pode criar um Map passando um Array para o new Map()construtor:

Exemplo
// Create a Map
const fruits = new Map([
  ["apples", 500],
  ["bananas", 300],
  ["oranges", 200]
]);

**O método set()**
Você pode adicionar elementos a um Map com o set()método:

Exemplo
// Create a Map
const fruits = new Map();

// Set Map Values
fruits.set("apples", 500);
fruits.set("bananas", 300);
fruits.set("oranges", 200);

***O set()método também pode ser usado para alterar os valores de Mapa existentes:***

Exemplo
fruits.set("apples", 200);

**A propriedade size**
A size propriedade retorna o número de elementos em um Map:

Exemplo
fruits.size;

**O método delete()**
O delete()método remove um elemento Map:

Exemplo
fruits.delete("apples");

**O método has()**
O has()método retorna true se existir uma chave em um Map:

Exemplo
fruits.has("apples");

Objetos JavaScript vs Mapas
Diferenças entre objetos JavaScript e mapas:


                 **Objeto**	                                    **Mapa**
Iterável	         Não diretamente iterável	                      Diretamente iterável
Tamanho	           Não tem uma propriedade de tamanho	            Tenha uma propriedade de tamanho
Tipos de chave	   As chaves devem ser Strings (ou Símbolos)      As chaves podem ser qualquer tipo de dados
Pedido de chave	   As chaves não estão bem ordenadas	            As chaves são ordenadas por inserção
Padrões	           Tem chaves padrão	                            Não tem chaves padrão

**O método forEach()**
O forEach()método chama uma função para cada par chave/valor em um Map:

Exemplo
// List all entries
let text = "";
fruits.forEach (function(value, key) {
  text += key + ' = ' + value;
})

**O método entries()**
O entries()método retorna um objeto iterador com a [chave, valores] em um Mapa:

Exemplo
// List all entries
let text = "";
for (const x of fruits.entries()) {
  text += x;
}

**JavaScript typeof**

***Em JavaScript existem 5 tipos de dados diferentes que podem conter valores:***
string
number
boolean
object
function

***Existem 6 tipos de objetos:***
Object
Date
Array
String
Number
Boolean

***E 2 tipos de dados que não podem conter valores:***
null
undefined


**The typeof Operator**
Você pode usar o typeofoperador para localizar o tipo de dados de uma variável JavaScript.

Exemplo
typeof "John"                 // Returns "string"
typeof 3.14                   // Returns "number"
typeof NaN                    // Returns "number"
typeof false                  // Returns "boolean"
typeof [1,2,3,4]              // Returns "object"
typeof {name:'John', age:34}  // Returns "object"
typeof new Date()             // Returns "object"
typeof function () {}         // Returns "function"
typeof myCar                  // Returns "undefined" *
typeof null                   // Returns "object"

**Por favor, observe:**

O tipo de dados de NaN é número
O tipo de dados de uma matriz é objeto
O tipo de dados de uma data é objeto
O tipo de dados de null é objeto
O tipo de dados de uma variável indefinida é indefinido *
O tipo de dados de uma variável que não recebeu um valor também é indefinido *
Você não pode usar typeof para determinar se um objeto JavaScript é um array (ou uma data).

**Dados primitivos**
Um valor de dados primitivo é um único valor de dados simples sem propriedades e métodos adicionais.

O typeof pode retornar um destes tipos primitivos:

*string
*number
*boolean
*undefined

Exemplo
typeof "John"              // Returns "string"
typeof 3.14                // Returns "number"
typeof true                // Returns "boolean"
typeof false               // Returns "boolean"
typeof x                   // Returns "undefined" (if x has no value)

**Dados Complexos**
O typeof pode retornar um dos dois tipos complexos:

**function**
**object**
O typeof retorna "objeto" para objetos, arrays e nulo.

O typeof não retorna "objeto" para funções.

***O typeof retorna " object" para arrays porque em arrays JavaScript são objetos.***


**O tipo de dados de typeof**
O typeof não é uma variável. É um operador. Os operadores ( + - * / ) não possuem nenhum tipo de dado.

Mas, o typeof sempre retorna uma string (contendo o tipo do operando).

***The constructor Property***
A constructorpropriedade retorna a função construtora para todas as variáveis ​​JavaScript.

Exemplo
"John".constructor                // Returns function String()  {[native code]}
(3.14).constructor                // Returns function Number()  {[native code]}
false.constructor                 // Returns function Boolean() {[native code]}
[1,2,3,4].constructor             // Returns function Array()   {[native code]}
{name:'John',age:34}.constructor  // Returns function Object()  {[native code]}
new Date().constructor            // Returns function Date()    {[native code]}
function () {}.constructor        // Returns function Function(){[native code]}

**Null**
Em JavaScript nullé "nada". É suposto ser algo que não existe.
Infelizmente, em JavaScript, o tipo de dados de nullé um objeto.
Você pode considerar um bug no JavaScript que typeof nullé um objeto. Deve ser null.

***Você pode esvaziar um objeto configurando-o para null:***

Exemplo
let person = {firstName:"John", lastName:"Doe", age:50, eyeColor:"blue"};
person = null;    // Now value is null, but type is still an object

***Você também pode esvaziar um objeto definindo-o como undefined:***

Exemplo
let person = {firstName:"John", lastName:"Doe", age:50, eyeColor:"blue"};
person = undefined;   // Now both value and type is undefined

**Diferença entre undefined e null**
undefinede nullsão iguais em valor, mas diferentes em tipo:

typeof undefined           // undefined
typeof null                // object

null === undefined         // false
null == undefined          // true

**JavaScript Type Conversion**

*Converting Strings to Numbers
*Converting Numbers to Strings
*Converting Dates to Numbers
*Converting Numbers to Dates
*Converting Booleans to Numbers
*Converting Numbers to Booleans

**JavaScript Type Conversion**
As variáveis ​​JavaScript podem ser convertidas em uma nova variável e outro tipo de dados:

Pelo uso de uma função JavaScript
Automaticamente pelo próprio JavaScript

**Convertendo Strings em Números**
O método global Number()pode converter strings em números.

Strings contendo números (como "3.14") são convertidas em números (como 3.14).

Strings vazias são convertidas em 0.

Qualquer outra coisa se converte em NaN(Não é um número).

*Number("3.14")    // returns 3.14
*Number(" ")       // returns 0
*Number("")        // returns 0
*Number("99 88")   // returns NaN

**Métodos numéricos**
No capítulo Métodos numéricos , você encontrará mais métodos que podem ser usados ​​para converter strings em números:

***Method	             Description***
   Number()	           Returns a number, converted from its argument
   parseFloat()	       Parses a string and returns a floating point number
   parseInt()	         Parses a string and returns an integer

   
**O Unary + Operator**
O Unary + Operator pode ser usado para converter uma variável em um número:

Exemplo
let y = "5";      // y is a string
let x = + y;      // x is a number

Se a variável não puder ser convertida, ela ainda se tornará um número, mas com o valor NaN (Not a Number):

Exemplo
let y = "John";   // y is a string
let x = + y;      // x is a number (NaN)

L**Convertendo números em strings**
O método global String()pode converter números em strings.

Pode ser usado em qualquer tipo de números, literais, variáveis ​​ou expressões:

Exemplo
String(x)         // returns a string from a number variable x
String(123)       // returns a string from a number literal 123
String(100 + 23)  // returns a string from a number from an expression

O método Number toString()faz o mesmo.


**Convertendo datas em números**
O método global Number()pode ser usado para converter datas em números.

d = new Date();
Number(d)          // returns 1404568027739
O método de data getTime() faz o mesmo.

d = new Date();
d.getTime()        // returns 1404568027739

**Convertendo datas em strings**
O método global String()pode converter datas em strings.

String(Date())  // returns "Thu Jul 17 2014 15:38:19 GMT+0200 (W. Europe Daylight Time)"
O método Date toString()faz o mesmo.

Exemplo
Date().toString()  // returns "Thu Jul 17 2014 15:38:19 GMT+0200 (W. Europe Daylight Time)"


**JavaScript Regular Expressions**
Uma expressão regular é uma sequência de caracteres que forma um padrão de pesquisa.
O padrão de pesquisa pode ser usado para operações de pesquisa e substituição de texto.

***O que é uma expressão regular?***
Uma expressão regular é uma seqüência de caracteres que forma um padrão de pesquisa .

Ao pesquisar dados em um texto, você pode usar esse padrão de pesquisa para descrever o que está procurando.

Uma expressão regular pode ser um único caractere ou um padrão mais complicado.

As expressões regulares podem ser usadas para executar todos os tipos de pesquisa de texto e operações de substituição de texto .

Sintaxe
/pattern/modifiers;

Exemplo
/w3schools/i;

***Exemplo explicado:***

/w3schools/i   é uma expressão regular.

w3schools   é um padrão (para ser usado em uma pesquisa).

i   é um modificador (modifica a pesquisa para não diferenciar maiúsculas de minúsculas).

**Usando métodos de string**
Em JavaScript, expressões regulares são frequentemente usadas com os dois métodos de string : search()e replace().

O search()método usa uma expressão para procurar uma correspondência e retorna a posição da correspondência.

O replace()método retorna uma string modificada onde o padrão é substituído.

**Usando String search() com uma string**
O search()método pesquisa uma string por um valor especificado e retorna a posição da correspondência:

Exemplo
Use uma string para fazer uma busca por "W3schools" em uma string:

let text = "Visit W3Schools!";
let n = text.search("W3Schools");

O resultado em n será:
6

**Usando String replace() com uma String**
O replace()método substitui um valor especificado por outro valor em uma string:

let text = "Visit Microsoft!";
let result = text.replace("Microsoft", "W3Schools");



**Modificadores de Expressão Regular**
Os modificadores podem ser usados ​​para realizar pesquisas mais globais que não diferenciam maiúsculas de minúsculas:

***Modifier	            Description***	
   i	                  Perform case-insensitive matching	
   g	                  Perform a global match (find all matches rather than stopping after the first match)	
   m	                  multiline matching


**Padrões de Expressão Regular**
Colchetes são usados ​​para encontrar um intervalo de caracteres:

***Expression         	Description***
   [abc]	              Find any of the characters between the brackets	
   [0-9]	              Find any of the digits between the brackets	
   (x|y)	              Find any of the alternatives separated with |

**Metacaracteres** são caracteres com um significado especial:

***Metacharacter	   Description***
   \d	               Find a digit	
   \s	               Find a whitespace character	
   \b	   Find a match at the beginning of a word like this: \bWORD, or at the end of a word like this: WORD\b	
   \uxxxx	           Find the Unicode character specified by the hexadecimal number xxxx	


**Quantificadores** definem quantidades:

***Quantifier	      Description***
   n+	              Matches any string that contains at least one n
   n*	              Matches any string that contains zero or more occurrences of n
   n?	              Matches any string that contains zero or one occurrences of n


**Usando o objeto RegExp**
Em JavaScript, o objeto RegExp é um objeto de expressão regular com propriedades e métodos predefinidos.

Usando teste()
O test()método é um método de expressão RegExp.

Ele procura um padrão em uma string e retorna verdadeiro ou falso, dependendo do resultado.

O exemplo a seguir pesquisa uma string pelo caractere "e":

Exemplo
const pattern = /e/;
pattern.test("The best things in life are free!");
Como há um "e" na string, a saída do código acima será:
true

Você não precisa colocar a expressão regular em uma variável primeiro. As duas linhas acima podem ser reduzidas para uma:

/e/.test("The best things in life are free!");


**Usando exec()**
O exec()método é um método de expressão RegExp.

Ele procura uma string por um padrão especificado e retorna o texto encontrado como um objeto.

Se nenhuma correspondência for encontrada, ele retornará um objeto vazio (nulo) .

O exemplo a seguir pesquisa uma string pelo caractere "e":

Exemplo
/e/.exec("The best things in life are free!");

**JavaScript Errors**
Throw, and Try...Catch...Finally

A **try** instrução define um bloco de código para ser executado (para tentar).

A **catch** instrução define um bloco de código para lidar com qualquer erro.

A **finally** instrução define um bloco de código para ser executado independentemente do resultado.

A **throw** instrução define um erro personalizado.


**Erros vão acontecer!**
Ao executar o código JavaScript, diferentes erros podem ocorrer.

Erros podem ser erros de codificação feitos pelo programador, erros devido a entrada errada e outras coisas imprevisíveis.

**JavaScript try e catch**
A try  permite que você defina um bloco de código para ser testado quanto a erros enquanto está sendo executado.

A catch  permite definir um bloco de código a ser executado, caso ocorra um erro no bloco try.

As instruções JavaScript trye catch vêm em pares:

try {
  Block of code to try
}
catch(err) {
  Block of code to handle errors
}

**JavaScript Throws Errors**
Quando ocorre um erro, o JavaScript normalmente para e gera uma mensagem de erro.

O termo técnico para isso é: JavaScript lançará uma exceção (lançará um erro) .
Na verdade, o JavaScript criará um objeto Error com duas propriedades: name e message .

**A declaração throw**
A throw permite que você crie um erro personalizado.
Tecnicamente, você pode lançar uma exceção (lançar um erro) .
A exceção pode ser um JavaScript String, a Number, a Booleanou an Object:

throw "Too big";    // throw a text
throw 500;          // throw a number

Se você usar throwjunto com trye catch, poderá controlar o fluxo do programa e gerar mensagens de erro personalizadas.

**The finally Statement**
A finally permite executar o código, depois de try e catch, independentemente do resultado:

Sintaxe
try {
  Block of code to try
}
catch(err) {
  Block of code to handle errors
}
finally {
  Block of code to be executed regardless of the try / catch result
}

**The Error Object**
JavaScript tem um objeto de erro integrado que fornece informações de erro quando ocorre um erro.

O objeto de erro fornece duas propriedades úteis: nome e mensagem.

Propriedades do objeto de erro

***Propriedade	      Descrição***
   nome	              Define ou retorna um nome de erro
   mensagem	          Define ou retorna uma mensagem de erro (uma string)

**Valores de nome de erro**
Seis valores diferentes podem ser retornados pela propriedade error name:

***Nome do erro	       Descrição***
   EvalError	         Ocorreu um erro na função eval()
   RangeError	         Ocorreu um número "fora do intervalo"
   ReferenceError	     Ocorreu uma referência ilegal
   SyntaxError	       Ocorreu um erro de sintaxe
   TypeError	         Ocorreu um erro de tipo
   URIError	           Ocorreu um erro no encodeURI()
 


**JavaScript Scope**
O escopo determina a acessibilidade (visibilidade) das variáveis.

JavaScript tem 3 tipos de escopo:

Escopo do bloco
Escopo da função
Âmbito global

**Escopo Local**
Variáveis ​​declaradas dentro de uma função JavaScript tornam-se LOCAL para a função.

Exemplo
// code here can NOT use carName

function myFunction() {
  let carName = "Volvo";
  // code here CAN use carName
}

**Variáveis ​​JavaScript globais**
Uma variável declarada fora de uma função torna-se GLOBAL .

Exemplo
let carName = "Volvo";
// code here can use carName

function myFunction() {
// code here can also use carName
}
***Âmbito global***
Variáveis ​​declaradas Globalmente (fora de qualquer função) possuem Escopo Global .
As variáveis ​​globais podem ser acessadas de qualquer lugar em um programa JavaScript.
Variáveis ​​declaradas com var, let e constsão bastante semelhantes quando declaradas fora de um bloco.

Todos eles têm Escopo Global.

***Variáveis ​​JavaScript***
Em JavaScript, objetos e funções também são variáveis.

O escopo determina a acessibilidade de variáveis, objetos e funções de diferentes partes do código.

***Declare suas variáveis ​​no topo!***
O içamento é (para muitos desenvolvedores) um comportamento desconhecido ou negligenciado do JavaScript.

Se um desenvolvedor não entende de içamento, os programas podem conter bugs (erros).

Para evitar bugs, sempre declare todas as variáveis ​​no início de cada escopo.

Como é assim que o JavaScript interpreta o código, é sempre uma boa regra.

**JavaScript Use Strict**
"use strict";Define que o código JavaScript deve ser executado em "modo estrito".
De maneira mais exigente, declarando as variáveis e etc, Torna o javascript mais "seguro".


**The JavaScript this Keyword**

Example
const person = {
  firstName: "John",
  lastName : "Doe",
  id       : 5566,
  fullName : function() {
    return this.firstName + " " + this.lastName;
  }
};

***O que é this ?***
Em JavaScript, a palavra- this  se refere a um objeto .

Qual objeto depende de como this sendo invocado (usado ou chamado).

A this se refere a objetos diferentes dependendo de como é usada:

Em um método de objeto, this refere-se ao objeto .
Sozinho, this refere-se ao objeto global .
Em uma função, this refere-se ao objeto global .
Em uma função, no modo estrito, this é undefined.
Em um evento, this refere-se ao elemento que recebeu o evento.

Métodos como call(), apply()e bind()podem  referir this a qualquer objeto .

Observação
this não é uma variável. É uma palavra-chave. Você não pode alterar o valor de this.

**this em um método**
Quando usado em um método de objeto, this refere-se ao objeto .
No exemplo no topo desta página, this refere-se ao objeto pessoa .
Porque o método fullName é um método do objeto pessoa .

fullName : function() {
  return this.firstName + " " + this.lastName;
}


**JavaScript Arrow Function**
As funções de seta foram introduzidas no ES6.

As funções de seta nos permitem escrever uma sintaxe de função mais curta:

let myFunction = (a, b) => a * b;

Antes :
hello = function() {
  return "Hello World!";
}

Com função Arrow:
hello = () => {
  return "Hello World!";
}


**JavaScript Classes**
Sintaxe da classe JavaScript
Use a palavra-chave class para criar uma classe.

Sempre adicione um método chamado constructor():

Sintaxe
class ClassName {
  constructor() { ... }
}

***Exemplo***
class Car {
  constructor(name, year) {
    this.name = name;
    this.year = year;
  }
}
O exemplo acima cria uma classe chamada "Car".

A classe tem duas propriedades iniciais: "nome" e "ano".

Uma classe JavaScript não é um objeto.
É um modelo para objetos JavaScript.

**JavaScript Modules**
Módulos
Os módulos JavaScript permitem que você divida seu código em arquivos separados.

Isso facilita a manutenção da base de código.

Os módulos JavaScript dependem das instruções **import** e **export**.

**Export**
Você pode exportar uma função ou variável de qualquer arquivo.

Vamos criar um arquivo chamado person.js, e preenchê-lo com as coisas que queremos exportar.

Existem dois tipos de exportação: Named e Default.

**Exportações nomeadas**
Você pode criar exportações nomeadas de duas maneiras. In-line individualmente, ou todos de uma vez na parte inferior.

***Em linha individualmente***:

person.js

export const name = "Jesse";
export const age = 40;

***Tudo de uma vez na parte inferior***:
person.js


const name = "Jesse";
const age = 40;

export {name, age};

**Exportações padrão**
Vamos criar outro arquivo, chamado message.js, e usá-lo para demonstrar a exportação padrão.

Você só pode ter uma exportação padrão em um arquivo.

***Exemplo***
message.js

const message = () => {
const name = "Jesse";
const age = 40;
return name + ' is ' + age + 'years old.';
};

export default message;

**Import**
Você pode importar módulos para um arquivo de duas maneiras, com base no nome de exportação ou exportação padrão.
As exportações nomeadas são construídas usando chaves. As exportações padrão não são.

Importar de exportações nomeadas
Importe exportações nomeadas do arquivo person.js:

import { name, age } from "./person.js";

Importar de exportações default
Importe uma exportação padrão do arquivo message.js:

import message from "./message.js";

**JavaScript JSON**
JSON é um formato para armazenar e transportar dados.
JSON é frequentemente usado quando os dados são enviados de um servidor para uma página da web.

***O que é JSON?***
JSON significa Java S cript O bject N otation
JSON é um formato de intercâmbio de dados leve
JSON é independente de idioma *
JSON é "autodescritivo" e fácil de entender

* A sintaxe JSON é derivada da sintaxe de notação de objeto JavaScript, mas o formato JSON é somente texto. O código para leitura e geração de dados JSON pode ser escrito em qualquer linguagem de programação.

**Exemplo de JSON**
Esta sintaxe JSON define um objeto de funcionários: uma matriz de 3 registros de funcionários (objetos):

Exemplo de JSON
{
"employees":[
  {"firstName":"John", "lastName":"Doe"},
  {"firstName":"Anna", "lastName":"Smith"},
  {"firstName":"Peter", "lastName":"Jones"}
]
}

O formato JSON avalia objetos JavaScript
O formato JSON é sintaticamente idêntico ao código para criar objetos JavaScript.

Devido a essa semelhança, um programa JavaScript pode facilmente converter dados JSON em objetos JavaScript nativos.

Regras de sintaxe JSON
Os dados estão em pares nome/valor
Os dados são separados por vírgulas
Chaves encaracoladas seguram objetos
Os colchetes mantêm matrizes

***Dados JSON - um nome e um valor** ( Chave e Valor)
Os dados JSON são escritos como pares nome/valor, assim como as propriedades do objeto JavaScript.

Um par nome/valor consiste em um nome de campo (entre aspas duplas), seguido por dois pontos, seguido por um valor:

"firstName":"John"

**Matrizes JSON**
As matrizes JSON são escritas entre colchetes.

Assim como em JavaScript, um array pode conter objetos:

"employees":[
  {"firstName":"John", "lastName":"Doe"},
  {"firstName":"Anna", "lastName":"Smith"},
  {"firstName":"Peter", "lastName":"Jones"}
]
No exemplo acima, o objeto "employees" é um array. Ele contém três objetos.

Cada objeto é um registro de uma pessoa (com um nome e um sobrenome).

**JavaScript Debugging**

***Code Debugging***
O código de programação pode conter erros de sintaxe ou erros lógicos.
Muitos desses erros são difíceis de diagnosticar.
Muitas vezes, quando o código de programação contém erros, nada acontece. Não há mensagens de erro e você não receberá indicações de onde procurar por erros.
Procurar (e corrigir) erros no código de programação é chamado de depuração de código.

***JavaScript Debugging***
A depuração não é fácil. Mas, felizmente, todos os navegadores modernos têm um depurador JavaScript embutido.
Os depuradores integrados podem ser ativados e desativados, forçando os erros a serem relatados ao usuário.
Com um depurador, você também pode definir pontos de interrupção (locais onde a execução do código pode ser interrompida) e examinar variáveis ​​enquanto o código está sendo executado.
Normalmente, caso contrário, siga as etapas na parte inferior desta página, você ativa a depuração em seu navegador com a tecla F12 e seleciona "Console" no menu do depurador.

***Definir pontos de interrupção***
Na janela do depurador, você pode definir pontos de interrupção no código JavaScript.
Em cada ponto de interrupção, o JavaScript interromperá a execução e permitirá que você examine os valores do JavaScript.
Depois de examinar os valores, você pode retomar a execução do código (normalmente com um botão de reprodução).

***A palavra-chave do depurador***
A palavra- debugger interrompe a execução do JavaScript e chama (se disponível) a função de depuração.
Isso tem a mesma função que definir um ponto de interrupção no depurador.
Se nenhuma depuração estiver disponível, a instrução do depurador não terá efeito.
Com o depurador ativado, esse código parará de ser executado antes de executar a terceira linha.
Exemplo
let x = 15 * 5;
debugger;
document.getElementById("demo").innerHTML = x;

**Palavras reservadas JavaScript**
Em JavaScript, você não pode usar essas palavras reservadas como variáveis, rótulos ou nomes de funções:

abstract	                     arguments	               await*                	boolean
break	                         byte	                     case	                  catch
char	                         class*	                   const	                continue
debugger	                     default	                 delete	                do
double	                       else	                     enum*	                eval
export*	                       extends*	                 false	                final
finally	                       float	                   for	                  function
goto	                         if	                       implements	            import*
in	                           instanceof	               int	                  interface
let*	                         long	                     native	                new
null	                         package	                 private	              protected
public	                       return	                   short	                static
super*	                       switch	                   synchronized	          this
throw	                         throws	                   transient	            true
try	                           typeof	                   var	                  void
volatile	                     while	                   with	                  yield

As palavras marcadas com * são novas no ECMAScript 5 e 6.
Você pode ler mais sobre as diferentes versões do JavaScript no capítulo JS Versions .

Palavras reservadas removidas
As seguintes palavras reservadas foram removidas do padrão ECMAScript 5/6:

abstract	         boolean	    byte	        char
double	           final	      float	        goto
int	               long	        native	      short
synchronized	     throws	      transient	    volatile

**JS Async**

***JavaScript Callbacks***

"Eu vou ligar de volta mais tarde!"
Um retorno de chamada é uma função passada como argumento para outra função
Esta técnica permite que uma função chame outra função
Uma função de retorno de chamada pode ser executada após a conclusão de outra função

***Sequência de funções***
As funções JavaScript são executadas na sequência em que são chamadas. Não na sequência em que são definidos.
Este exemplo acabará exibindo "Goodbye":

Exemplo
function myFirst() {
  myDisplayer("Hello");
}

function mySecond() {
  myDisplayer("Goodbye");
}

myFirst();
mySecond();

Este exemplo acabará exibindo "Hello":

Exemplo
function myFirst() {
  myDisplayer("Hello");
}

function mySecond() {
  myDisplayer("Goodbye");
}

mySecond();
myFirst();

**Controle de Sequência**
Às vezes você gostaria de ter um melhor controle sobre quando executar uma função.
Suponha que você queira fazer um cálculo e, em seguida, exibir o resultado.
Você pode chamar uma função de calculadora ( myCalculator), salvar o resultado e depois chamar outra função ( myDisplayer) para exibir o resultado:
Exemplo
function myDisplayer(some) {
  document.getElementById("demo").innerHTML = some;
}

function myCalculator(num1, num2) {
  let sum = num1 + num2;
  return sum;
}

let result = myCalculator(5, 5);
myDisplayer(result);

Ou você pode chamar uma função de calculadora ( myCalculator) e deixar a função de calculadora chamar a função de exibição ( myDisplayer):

Exemplo
function myDisplayer(some) {
  document.getElementById("demo").innerHTML = some;
}

function myCalculator(num1, num2) {
  let sum = num1 + num2;
  myDisplayer(sum);
}

myCalculator(5, 5);
O problema com o primeiro exemplo acima é que você precisa chamar duas funções para exibir o resultado.
O problema com o segundo exemplo é que você não pode impedir que a função calculadora exiba o resultado.
Agora é hora de trazer um retorno de chamada.

***Retornos de chamada JavaScript***
Um retorno de chamada é uma função passada como um argumento para outra função.

Usando um retorno de chamada, você pode chamar a função de calculadora ( myCalculator) com um retorno de chamada e deixar a função de calculadora executar o retorno de chamada após o término do cálculo:

Exemplo
function myDisplayer(some) {
  document.getElementById("demo").innerHTML = some;
}

function myCalculator(num1, num2, myCallback) {
  let sum = num1 + num2;
  myCallback(sum);
}

myCalculator(5, 5, myDisplayer);

No exemplo acima, myDisplayeré o nome de uma função.
Ele é passado para myCalculator()como um argumento.

Ao passar uma função como argumento, lembre-se de não usar parênteses.
Certo: myCalculator(5, 5, myDisplayer);
Errado:myCalculator(5, 5, myDisplayer());


**Asynchronous JavaScript**
"Eu vou terminar mais tarde!"

Funções executadas em paralelo com outras funções são chamadas de assíncronas
Um bom exemplo é JavaScript setTimeout()

***Esperando um tempo limite***
Ao usar a função JavaScript setTimeout(), você pode especificar uma função de retorno de chamada a ser executada no tempo limite:

Exemplo
setTimeout(myFunction, 3000);

function myFunction() {
  document.getElementById("demo").innerHTML = "I love You !!";
}

No exemplo acima, myFunction é usado como callback.
myFunction é passado setTimeout() como argumento.
3000 é o número de milissegundos antes do tempo limite, então myFunction() será chamado após 3 segundos.

***Em vez de passar o nome de uma função como argumento para outra função, você sempre pode passar uma função inteira:

Exemplo
setTimeout(function() { myFunction("I love You !!!"); }, 3000);

function myFunction(value) {
  document.getElementById("demo").innerHTML = value;
}

No exemplo acima, function(){ myFunction("I love You !!!"); } é usado como callback. É uma função completa. 
A função completa é passada para setTimeout() como um argumento.
3000 é o número de milissegundos antes do tempo limite, então myFunction()será chamado após 3 segundos.

**Aguardando Intervalos:**
Ao usar a função JavaScript setInterval(), você pode especificar uma função de retorno de chamada a ser executada para cada intervalo:

Exemplo
setInterval(myFunction, 1000);

function myFunction() {
  let d = new Date();
  document.getElementById("demo").innerHTML=
  d.getHours() + ":" +
  d.getMinutes() + ":" +
  d.getSeconds();
}

No exemplo acima, myFunction é usado como callback.
myFunction é passado setInterval()como argumento.
1000 é o número de milissegundos entre os intervalos, então myFunction()será chamado a cada segundo.


**Aguardando arquivos**
Se você criar uma função para carregar um recurso externo (como um script ou um arquivo), não poderá usar o conteúdo antes que ele seja totalmente carregado.

Este é o momento perfeito para usar um retorno de chamada.

Este exemplo carrega um arquivo HTML ( mycar.html) e exibe o arquivo HTML em uma página da Web, após o arquivo ser totalmente carregado:

Aguardando um arquivo:
function myDisplayer(some) {
  document.getElementById("demo").innerHTML = some;
}

function getFile(myCallback) {
  let req = new XMLHttpRequest();
  req.open('GET', "mycar.html");
  req.onload = function() {
    if (req.status == 200) {
      myCallback(this.responseText);
    } else {
      myCallback("Error: " + req.status);
    }
  }
  req.send();
}

getFile(myDisplayer);

No exemplo acima, myDisplayer é usado como callback.
myDisplayer é passado getFile()como argumento.

**JavaScript Promises**
"Eu prometo um resultado!"

"Produzir código" é um código que pode levar algum tempo

"Consumindo código" é o código que deve aguardar o resultado

Uma promessa é um objeto JavaScript que vincula a produção de código e o código de consumo

**JavaScript Promise Object**
Um objeto JavaScript Promise contém o código de produção e as chamadas para o código de consumo:

Sintaxe da promessa
let myPromise = new Promise(function(myResolve, myReject) {
// "Producing Code" (May take some time)

  myResolve(); // when successful
  myReject();  // when error
});

// "Consuming Code" (Must wait for a fulfilled Promise)
myPromise.then(
  function(value) { /* code if successful */ },
  function(error) { /* code if some error */ }
);

Quando o código de produção obtiver o resultado, ele deverá chamar um dos dois retornos de chamada:

Resultado	               Ligar
Sucesso	                 myResolve(valor do resultado)
Erro	                   myReject(objeto de erro)

**Propriedades do objeto de promessa**
Um objeto JavaScript Promise pode ser:

*Pendente
*Realizada
*Rejeitado

O objeto Promise oferece suporte a duas propriedades: state e result .

Enquanto um objeto Promise está "pendente" (funcionando), o resultado é indefinido.

Quando um objeto Promise é "cumprido", o resultado é um valor.

Quando um objeto Promise é "rejeitado", o resultado é um objeto de erro.

myPromise.state	          myPromise.result
"pendente"	              Indefinido
"realizada"	              um valor de resultado
"rejeitado"	              um objeto de erro


**Promise**
Aqui está como usar uma promessa:

myPromise.then(
  function(value) { /* code if successful */ },
  function(error) { /* code if some error */ }
);
Promise.then() recebe dois argumentos, um callback para sucesso e outro para falha.
Ambos são opcionais, portanto, você pode adicionar um retorno de chamada apenas para sucesso ou falha.

***Exemplo***
function myDisplayer(some) {
  document.getElementById("demo").innerHTML = some;
}

let myPromise = new Promise(function(myResolve, myReject) {
  let x = 0;

//The producing code (this may take some time)

  if (x == 0) {
    myResolve("OK");
  } else {
    myReject("Error");
  }
});

myPromise.then(
  function(value) {myDisplayer(value);},
  function(error) {myDisplayer(error);}
);


**JS Async**
"async e await tornam as promessas mais fáceis de escrever"

***async*** faz uma função retornar uma promessa

***await*** faz uma função esperar por uma promessa

***Sintaxe assíncrona***
A palavra-chave async antes de uma função faz com que a função retorne uma promessa:

Exemplo
async function myFunction() {
  return "Hello";
}
É o mesmo que:

function myFunction() {
  return Promise.resolve("Hello");
}

***Aqui está como usar a Promessa:***

myFunction().then(
  function(value) { /* code if successful */ },
  function(error) { /* code if some error */ }
);

***Exemplo***
async function myFunction() {
  return "Hello";
}
myFunction().then(
  function(value) {myDisplayer(value);},
  function(error) {myDisplayer(error);}
);

**Await Sintaxe**
A palavra-chave await antes de uma função faz com que a função espere por uma promessa:

let value = await promise;
A await  só pode ser usada dentro de uma async função.

***Exemplo***
Vamos devagar e aprender a usá-lo.

**Sintaxe Básica**
async function myDisplay() {
  let myPromise = new Promise(function(resolve, reject) {
    resolve("I love You !!");
  });
  document.getElementById("demo").innerHTML = await myPromise;
}

myDisplay();

***OBS:***
Os dois argumentos (resolver e rejeitar) são predefinidos pelo JavaScript.
Não vamos criá-los, mas chamar um deles quando a função executora estiver pronta.
Muitas vezes não precisaremos de uma função de rejeição.

***Esperando um tempo limite***
async function myDisplay() {
  let myPromise = new Promise(function(resolve) {
    setTimeout(function() {resolve("I love You !!");}, 3000);
  });
  document.getElementById("demo").innerHTML = await myPromise;
}

myDisplay();

***Aguardando um arquivo***
async function getFile() {
  let myPromise = new Promise(function(resolve) {
    let req = new XMLHttpRequest();
    req.open('GET', "mycar.html");
    req.onload = function() {
      if (req.status == 200) {
        resolve(req.response);
      } else {
        resolve("File not Found");
      }
    };
    req.send();
  });
  document.getElementById("demo").innerHTML = await myPromise;
}

getFile();


**Web APIs - Introduction**
Uma API da Web é o sonho de um desenvolvedor.

*Pode estender a funcionalidade do navegador
*Pode simplificar muito funções complexas
*Ele pode fornecer sintaxe fácil para código complexo

**O que é API Web?**
API significa Interface de Programação de Aplicativos .

Uma API da Web é uma interface de programação de aplicativos para a Web.

Uma API de navegador pode estender a funcionalidade de um navegador da web.

Uma API de servidor pode estender a funcionalidade de um servidor web.

**AJAX Introduction**
AJAX é o sonho de um desenvolvedor, porque você pode:

 *Ler dados de um servidor web - após o carregamento da página
 *Atualizar uma página da Web sem recarregar a página
 *Envie dados para um servidor web - em segundo plano

 **RESUMO:** AJAX é o método para se obter o arquivo JSON!

 ***Exemplo de AJAX explicado***

Página HTML
<!DOCTYPE html>
<html>
<body>

<div id="demo">
  <h2>Let AJAX change this text</h2>
  <button type="button" onclick="loadDoc()">Change Content</button>
</div>

</body>
</html>

A página HTML contém uma seção <div> e um <button>.

A seção <div> é usada para exibir informações de um servidor.

O <button> chama uma função (se for clicado).

A função solicita dados de um servidor web e os exibe:

Função loadDoc()

function loadDoc() {
  const xhttp = new XMLHttpRequest();
  xhttp.onload = function() {
    document.getElementById("demo").innerHTML = this.responseText;
    }
  xhttp.open("GET", "ajax_info.txt", true);
  xhttp.send();
}

**O que é AJAX?**
AJAX = Um JavaScript síncrono e X ML .

AJAX não é uma linguagem de programação.

AJAX apenas usa uma combinação de:
Um objeto interno do navegador XMLHttpRequest(para solicitar dados de um servidor web)
JavaScript e HTML DOM (para exibir ou usar os dados)

***AJAX é um nome enganoso. Os aplicativos AJAX podem usar XML para transportar dados, mas é igualmente comum transportar dados como texto simples ou texto JSON.***

O AJAX permite que as páginas da Web sejam atualizadas de forma assíncrona, trocando dados com um servidor da Web nos bastidores. Isso significa que é possível atualizar partes de uma página web, sem recarregar a página inteira.

1. Um evento ocorre em uma página da web (a página é carregada, um botão é clicado)
2. Um objeto XMLHttpRequest é criado por JavaScript
3. O objeto XMLHttpRequest envia uma solicitação para um servidor web
4. O servidor processa a solicitação
5. O servidor envia uma resposta de volta à página da web
6. A resposta é lida por JavaScript
7. A ação adequada (como atualização de página) é realizada por JavaScript


**AJAX - O objeto XMLHttpRequest**
A pedra angular do AJAX é o objeto XMLHttpRequest.

1. Criar um objeto XMLHttpRequest
2. Definir uma função de retorno de chamada
3. Abra o objeto XMLHttpRequest
4. Enviar uma solicitação para um servidor

***Criar um objeto XMLHttpRequest***
variable = new XMLHttpRequest();

***Define a Callback Function***
Uma Callback Function é uma função passada como parâmetro para outra função.

Nesse caso, a função de retorno de chamada deve conter o código a ser executado quando a resposta estiver pronta.

xhttp.onload = function() {
  // What to do when the response is ready
}

***Send a Request***
Para enviar uma solicitação para um servidor, você pode usar os métodos open() e send() do XMLHttpRequestobjeto:

xhttp.open("GET", "ajax_info.txt");
xhttp.send();

**Métodos de objeto XMLHttpRequest**
Method	                                        Description
new XMLHttpRequest()	                          Creates a new XMLHttpRequest object
abort()	                                        Cancels the current request
getAllResponseHeaders()	                        Returns header information
getResponseHeader()	                            Returns specific header information
open(method, url, async, user, psw)	            Specifies the request
                                                method: the request type GET or POST
                                                url: the file location
                                                async: true (asynchronous) or false (synchronous)
                                                user: optional user name
                                                psw: optional password
send()	                                        Sends the request to the server Used for GET requests
send(string)	                                  Sends the request to the server.Used for POST requests
setRequestHeader()	                            Adds a label/value pair to the header to be sent

**Propriedades do objeto XMLHttpRequest**

onload - Define a função a ser chamada quando a request for recebida.

onreadystatechange - Define a função a ser chamada quando a propriedade readyState muda.

readyState - 0: Request não inicializada, 1:Conexão com Servidor Estabelecida
             2: Request Recebida , 3: Processando Request, 4:Request Finalizada, resposta pronta.

responseText - Retorna os dados como uma string.

responseXML - Retorna os dados como um XML.

status - Retorna o numero do status de uma request 
200: "OK" 
403: "Forbidden"
404: "Not Found"

statusText - Retorna o status-text (e.g. "OK" or "Not Found")


**A propriedade onload**
Com o XMLHttpRequestobjeto você pode definir uma função de callback para ser executada quando a requisição receber uma resposta.

A função é definida na onloadpropriedade do XMLHttpRequestobjeto:

Exemplo
xhttp.onload = function() {
  document.getElementById("demo").innerHTML = this.responseText;
}
xhttp.open("GET", "ajax_info.txt");
xhttp.send();

**Várias funções de retorno de chamada**
Se você tiver mais de uma tarefa AJAX em um site, deverá criar uma função para executar o XMLHttpRequestobjeto e uma função de retorno de chamada para cada tarefa AJAX.

A chamada de função deve conter a URL e qual função chamar quando a resposta estiver pronta.

Exemplo
loadDoc("url-1", myFunction1);

loadDoc("url-2", myFunction2);

function loadDoc(url, cFunction) {
  const xhttp = new XMLHttpRequest();
  xhttp.onload = function() {cFunction(this);}
  xhttp.open("GET", url);
  xhttp.send();
}

function myFunction1(xhttp) {
  // action goes here
}
function myFunction2(xhttp) {
  // action goes here
}

**AJAX - XMLHttpRequest**
O objeto XMLHttpRequest é usado para solicitar dados de um servidor.

Para enviar uma requisição para um servidor, usamos os métodos open() e send() do XMLHttpRequestobjeto:

xhttp.open("GET", "ajax_info.txt", true);
xhttp.send();

Method	                         Description
open(method, url, async)	       Specifies the type of request
                                 method: the type of request: GET or POST
                                 url: the server (file) location
                                 async: true (asynchronous) or false (synchronous)

send()	                         Sends the request to the server (used for GET)
send(string)	                   Sends the request to the server (used for POST)


**The url - A File On a Server**
O parâmetro url do open()método é um endereço para um arquivo em um servidor:
xhttp.open("GET", "ajax_test.asp", true);

O arquivo pode ser qualquer tipo de arquivo, como .txt e .xml, ou arquivos de script de servidor como .asp e .php (que podem executar ações no servidor antes de enviar a resposta de volta).


**Assíncrono - Verdadeiro ou Falso?**
As solicitações do servidor devem ser enviadas de forma assíncrona.
O parâmetro assíncrono do método open() deve ser definido como true:

xhttp.open("GET", "ajax_test.asp", true);

Ao enviar de forma assíncrona, o JavaScript não precisa esperar pela resposta do servidor, mas pode:

*executar outros scripts enquanto aguarda a resposta do servidor
*lidar com a resposta depois que a resposta estiver pronta

O valor padrão para o parâmetro async é async = true.
Você pode remover com segurança o terceiro parâmetro do seu código.
O XMLHttpRequest síncrono (async = false) não é recomendado porque o JavaScript parará de ser executado até que a resposta do servidor esteja pronta. Se o servidor estiver ocupado ou lento, o aplicativo irá travar ou parar.

**GET or POST?**
GET é mais simples e rápido que POST, e pode ser usado na maioria dos casos.
No entanto, sempre use solicitações POST quando:

*Um arquivo em cache não é uma opção (atualize um arquivo ou banco de dados no servidor).
*Enviando uma grande quantidade de dados para o servidor (POST não tem limitações de tamanho).
*Enviando a entrada do usuário (que pode conter caracteres desconhecidos), POST é mais robusto e seguro que GET.

**GET REQUESTS**
Um simples GET request:

Exemplo
xhttp.open("GET", "demo_get.asp");
xhttp.send();

No exemplo acima, você pode obter um resultado em cache. Para evitar isso, adicione um ID exclusivo ao URL:

Exemplo
xhttp.open("GET", "demo_get.asp?t=" + Math.random());
xhttp.send();

Se você deseja enviar informações com o GETmétodo, adicione as informações à URL:

Exemplo
xhttp.open("GET", "demo_get2.asp?fname=Henry&lname=Ford");
xhttp.send();

**Post Request**
Um simples POSTpedido:

Exemplo
xhttp.open("POST", "demo_post.asp");
xhttp.send();

Para enviar dados como um formulário HTML, adicione um cabeçalho HTTP com setRequestHeader(). Especifique os dados que deseja enviar no send()método:

Exemplo
xhttp.open("POST", "ajax_test.asp");
xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
xhttp.send("fname=Henry&lname=Ford");

**Synchronous Request**
Para executar uma solicitação síncrona, altere o terceiro parâmetro no open()método para false:

xhttp.open("GET", "ajax_info.txt", false);

Às vezes, async = false é usado para testes rápidos. Você também encontrará solicitações síncronas em códigos JavaScript mais antigos.

Exemplo
xhttp.open("GET", "ajax_info.txt", false);
xhttp.send();
document.getElementById("demo").innerHTML = xhttp.responseText;

**AJAX - SERVER RESPONSE**
Propriedades de resposta do servidor 

Property	              Description
responseText	          get the response data as a string
responseXML	            get the response data as XML data

***A propriedade responseText***
A responseText  retorna a resposta do servidor como uma string JavaScript e você pode usá-la adequadamente:

Exemplo
document.getElementById("demo").innerHTML = xhttp.responseText;

**O método getAllResponseHeaders()**
O getAllResponseHeaders()método retorna todas as informações de cabeçalho da resposta do servidor.

**O método getResponseHeader()**
O getResponseHeader()método retorna informações de cabeçalho específicas da resposta do servidor.

**AJAX XML Example**
AJAX pode ser usado para comunicação interativa com um arquivo XML.

***Exemplo explicado***
Quando um usuário clica no botão "Obter informações do CD" acima, a loadDoc() função é executada.

A loadDoc()função cria um XMLHttpRequestobjeto, adiciona a função a ser executada quando a resposta do servidor estiver pronta e envia a solicitação para o servidor.

Quando a resposta do servidor está pronta, uma tabela HTML é construída, nós (elementos) são extraídos do arquivo XML e, finalmente, ele atualiza o elemento "demo" com a tabela HTML preenchida com dados XML:

function loadDoc() {
  const xhttp = new XMLHttpRequest();
  xhttp.onload = function() {myFunction(this);}
  xhttp.open("GET", "cd_catalog.xml");
  xhttp.send();
}
function myFunction(xml) {
  const xmlDoc = xml.responseXML;
  const x = xmlDoc.getElementsByTagName("CD");
  let table="<tr><th>Artist</th><th>Title</th></tr>";
  for (let i = 0; i <x.length; i++) {
    table += "<tr><td>" +
    x[i].getElementsByTagName("ARTIST")[0].childNodes[0].nodeValue +
    "</td><td>" +
    x[i].getElementsByTagName("TITLE")[0].childNodes[0].nodeValue +
    "</td></tr>";
  }
  document.getElementById("demo").innerHTML = table;
}


**AJAX PHP Example**
AJAX é usado para criar aplicativos mais interativos.

Exemplo explicado
No exemplo acima, quando um usuário digita um caractere no campo de entrada, uma função chamada showHint()é executada.

A função é acionada pelo onkeyupevento.

Aqui está o código:

Exemplo
<p>Start typing a name in the input field below:</p>
<p>Suggestions: <span id="txtHint"></span></p>

<form>
First name: <input type="text" onkeyup="showHint(this.value)">
</form>

<script>
function showHint(str) {
  if (str.length == 0) {
    document.getElementById("txtHint").innerHTML = "";
    return;
  } else {
    const xmlhttp = new XMLHttpRequest();
    xmlhttp.onload = function() {
      document.getElementById("txtHint").innerHTML = this.responseText;
    }
  xmlhttp.open("GET", "gethint.php?q=" + str);
  xmlhttp.send();
  }
}
</script>
Explicação do código:

Primeiro, verifique se o campo de entrada está vazio (str.length == 0). Se estiver, limpe o conteúdo do espaço reservado txtHint e saia da função.

No entanto, se o campo de entrada não estiver vazio, faça o seguinte:

Criar um objeto XMLHttpRequest
Crie a função a ser executada quando a resposta do servidor estiver pronta
Envie a solicitação para um arquivo PHP (gethint.php) no servidor
Observe que o parâmetro q é adicionado gethint.php?q="+str
A variável str contém o conteúdo do campo de entrada


**O arquivo PHP - "gethint.php"**
O arquivo PHP verifica uma matriz de nomes e retorna o(s) nome(s) correspondente(s) ao navegador:

<?php
// Array with names
$a[] = "Anna";
$a[] = "Brittany";
$a[] = "Cinderella";
$a[] = "Diana";
$a[] = "Eva";
$a[] = "Fiona";
$a[] = "Gunda";
$a[] = "Hege";
$a[] = "Inga";
$a[] = "Johanna";
$a[] = "Kitty";
$a[] = "Linda";
$a[] = "Nina";
$a[] = "Ophelia";
$a[] = "Petunia";
$a[] = "Amanda";
$a[] = "Raquel";
$a[] = "Cindy";
$a[] = "Doris";
$a[] = "Eve";
$a[] = "Evita";
$a[] = "Sunniva";
$a[] = "Tove";
$a[] = "Unni";
$a[] = "Violet";
$a[] = "Liza";
$a[] = "Elizabeth";
$a[] = "Ellen";
$a[] = "Wenche";
$a[] = "Vicky";

// get the q parameter from URL
$q = $_REQUEST["q"];

$hint = "";

// lookup all hints from array if $q is different from ""
if ($q !== "") {
  $q = strtolower($q);
  $len=strlen($q);
  foreach($a as $name) {
    if (stristr($q, substr($name, 0, $len))) {
      if ($hint === "") {
        $hint = $name;
      } else {
        $hint .= ", $name";
      }
    }
  }
}

// Output "no suggestion" if no hint was found or output correct values
echo $hint === "" ? "no suggestion" : $hint;
?>

**ASP AJAX**
Exemplo de ASP AJAX
O exemplo a seguir demonstrará como uma página da Web pode se comunicar com um servidor da Web enquanto um usuário digita caracteres em um campo de entrada:
Exemplo
Start typing a name in the input field below:

Suggestions: Anna , Amanda

First name: A

***Exemplo explicado***
No exemplo acima, quando um usuário digita um caractere no campo de entrada, uma função chamada showHint()é executada.

A função é acionada pelo ***onkeyup*** .

Aqui está o código:

Exemplo

<p>Start typing a name in the input field below:</p>
<p>Suggestions: <span id="txtHint"></span></p>

<form>
First name: <input type="text" onkeyup="showHint(this.value)">
</form>

<script>
function showHint(str) {
  if (str.length == 0) {
    document.getElementById("txtHint").innerHTML = "";
    return;
  } else {
    const xmlhttp = new XMLHttpRequest();
    xmlhttp.onload = function() {
      document.getElementById("txtHint").innerHTML = this.responseText;
    }
  xmlhttp.open("GET", "gethint.asp?q=" + str);
  xmlhttp.send();
  }
}
</script>
Explicação do código:

Primeiro, verifique se o campo de entrada está vazio (str.length == 0). Se estiver, limpe o conteúdo do espaço reservado txtHint e saia da função.

No entanto, se o campo de entrada não estiver vazio, faça o seguinte:

Criar um objeto XMLHttpRequest
Crie a função a ser executada quando a resposta do servidor estiver pronta
Envie a solicitação para um arquivo ASP (gethint.asp) no servidor
Observe que o parâmetro q é adicionado gethint.asp?q="+str
A variável str contém o conteúdo do campo de entrada

**AJAX Database Example**
AJAX pode ser usado para comunicação interativa com um banco de dados.

A função showCustomer()
Quando um usuário seleciona um cliente na lista suspensa acima, uma função chamada showCustomer()é executada. A função é acionada pelo onchange:

mostrarCliente
function showCustomer(str) {
  if (str == "") {
    document.getElementById("txtHint").innerHTML = "";
    return;
  }
  const xhttp = new XMLHttpRequest();
  xhttp.onload = function() {
    document.getElementById("txtHint").innerHTML = this.responseText;
  }
  xhttp.open("GET", "getcustomer.php?q="+str);
  xhttp.send();
}

A showCustomer()função faz o seguinte:

Verifique se um cliente está selecionado
Criar um objeto XMLHttpRequest
Crie a função a ser executada quando a resposta do servidor estiver pronta
Envie a solicitação para um arquivo no servidor
Observe que um parâmetro (q) é adicionado à URL (com o conteúdo da lista suspensa)

**Exemplos AJAX**
The XMLHttpRequest Object
<html>
<body>

<div id="demo">
<h2>The XMLHttpRequest Object</h2>
<button type="button" onclick="loadDoc()">Change Content</button>
</div>

<script>
function loadDoc() {
  const xhttp = new XMLHttpRequest();
  xhttp.onload = function() {
    document.getElementById("demo").innerHTML =
    this.responseText;
  }
  xhttp.open("GET", "ajax_info.txt");
  xhttp.send();
}
</script>

</body>
</html>

FUNÇÃO PARA ERRO DE **(Cross-Origin Resource Sharing - CORS)**

chrome.exe --user-data-dir="C:/Chrome dev session" --disable-web-security