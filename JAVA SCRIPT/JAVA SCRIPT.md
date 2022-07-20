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