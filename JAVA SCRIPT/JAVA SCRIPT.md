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