import UIKit

//MARK: - Tipos Simples
//MARK: - Variaveis e tipos de variaveis
/*
 Variáveis têm esse nome porque seus valores podem mudar ao longo do tempo, e isso geralmente é útil.
 Com a palavra chave "var" voce pode criar variaveis, por exemplo:
 */

//MARK: - String
var str = "Hello, World"
var nome = "Fulano"
var cidade = "Manaus"

//MARK: - String de varias linhas
/*
 As strings começam e terminam com aspas duplas, mas se você quiser que elas passem por várias linhas, você deve usar três conjuntos de aspas duplas.
 */
var apresentacao = """
Meu nome é icaro, \
tenho 22 anos e \
moro em Manaus
"""

/*
 Os Int possuem números inteiros, os Doubles possuem números fracionários e os booleanos são verdadeiros ou falsos.
 */

//MARK: - Int
var idade = 22
var populacao = 8_000_000

//MARK: - Doubles
var pi = 3.141
var altura = 1.77

//MARK: - Booleans
var incrivel = true
var chato = false
/*
 A interpolação de strings permite que você crie strings a partir de outras variáveis e constantes, colocando seus valores dentro de sua string.
 */
//MARK: - Interpolação de strings
var score = 85
var resultado = "Seu score é \(score)" //Seu score é 85

//MARK: - Constantes
/*
 Eu já disse que as variáveis têm esse nome porque seus valores podem mudar ao longo do tempo, e isso geralmente é útil. No entanto, muitas vezes você quer definir um valor uma vez e nunca alterá-lo, e então temos uma alternativa à palavra-chave var chamada let.
 A palavra-chave let cria constantes, que são valores que podem ser definidos uma vez e nunca mais. Por exemplo:
 */
let taylor = "swift"

/*
 O Swift usa inferência de tipo para atribuir um tipo a cada variável ou constante, mas você pode fornecer tipos explícitos, se quiser. Por exemplo:
 */

let album: String = "Reputation"
let year: Int = 1989
let height: Double = 1.78
let taylorRocks: Bool = true

//MARK: - Resumo 1

/*
 1. Você faz variáveis usando var e constantes usando let. É preferível usar constantes com a maior frequência possível.
 2. As strings começam e terminam com aspas duplas, mas se você quiser que elas passem por várias linhas, você deve usar
 três conjuntos de aspas duplas.
 3. Os inteiros possuem números inteiros, os duplos possuem números fracionários e os booleanos possuem verdadeiro ou falso.
 4. A interpolação de string permite que você crie strings a partir de outras variáveis e constantes, colocando seus valores
 dentro de sua string.
 5. O Swift usa inferência de tipo para atribuir a cada variável ou constante um tipo, mas você pode fornecer tipos
 explícitos, se quiser.
 */

//MARK: - Tipos Complexos

//MARK: - Arrays
/*
 Arrays são coleções de valores que são armazenados como um único valor. Por exemplo, John, Paul, George e Ringo são nomes, mas os Arrays permitem que você os agrupe em um único valor chamado The Beatles.
 */

let john = "John Lennon"
let paul = "Paul McCartney"
let george = "George Harrison"
let ringo = "Ringo Starr"

let beatles = [john, paul, george, ringo]
/*
 Você pode ler valores de um Array escrevendo um número dentro de colchetes. As posições de um Array contam a partir de 0, então se você quiser ler “Paul McCartney”, você escreveria isso:
 */
beatles[1] //Paul McCartney
/*
 Tenha cuidado: o Swift trava se você ler um item que não existe. Por exemplo, tentar ler beatles[9] é uma má ideia.
 */

//MARK: - Sets
/*
 Sets são coleções de valores como matrizes, exceto que eles têm duas diferenças:
 Os itens não são armazenados em nenhuma ordem; eles são armazenados no que é efetivamente uma ordem aleatória.
 Nenhum item pode aparecer duas vezes em um Set; todos os itens devem ser únicos.
 Você pode criar conjuntos diretamente de matrizes, assim:
 */
let colors = Set(["red", "green", "blue"])

/*
 Quando você olha para o valor das cores dentro da saída do playground, verá que ela não corresponde à ordem em que usamos para criá-la. Não é realmente um pedido aleatório, é apenas não ordenado - a Swift não faz garantias sobre seu pedido. Como eles não estão ordenados, você não pode ler valores de um conjunto usando posições numéricas como faz com matrizes.
 Se você tentar inserir um item duplicado em um Set, as duplicatas serão ignoradas. Por exemplo:
 */
let colors2 = Set(["red", "green", "blue", "red", "blue"])
//O conjunto final de cores 2 ainda incluirá apenas vermelho, verde e azul uma vez.

//MARK: - Tuples
/*
 As tuplas permitem que você armazene vários valores juntos em um único valor. Isso pode soar como matrizes, mas as tuplas são diferentes:
 
 Você não pode adicionar ou remover itens de uma tupla; eles são fixos em tamanho.
 
 Você não pode alterar o tipo de itens em uma tupla; eles sempre têm os mesmos tipos com os quais foram criados.
 
 Você pode acessar itens em uma tupla usando posições numéricas ou nomeando-os, mas o Swift não permitirá que você leia números ou nomes que não existem.
 
 As tuplas são criadas colocando vários itens entre parênteses, assim:
 */
var name = (first: "Taylor", last: "Swift")
//Em seguida, você acessa itens usando posições numéricas a partir de 0:
name.0  //Taylor
//Ou você pode acessar itens usando seus nomes:
name.first //Taylor

/* OBS:
 Lembre-se, você pode alterar os valores dentro de uma tupla depois de criá-la, mas não os tipos de valores. Então, se você tentasse mudar o nome para ser (primeiro: "Justin", idade: 25), você receberia um erro.
 */

//MARK: - Arrays vs Sets vs Tuples
/*
 Arrays, Sets e tuplas podem parecer semelhantes no início, mas têm usos distintos. Para ajudá-lo a saber qual usar, aqui estão algumas regras.
 Se você precisar de uma coleção específica e fixa de valores relacionados, onde cada item tenha uma posição ou nome preciso, você deve usar uma tupla:
 */
let address = (house: 555, street: "Taylor Swift Avenue", city: "Nashville")
/*
 Se você precisa de uma coleção de valores que devem ser únicos ou precisa ser capaz de verificar se um item específico está lá extremamente rapidamente, você deve usar um Set:
 */
let set = Set(["aardvark", "astronaut", "azalea"])
/*
 Se você precisa de uma coleção de valores que podem conter duplicatas, ou a ordem de seus itens importa, você deve usar um Array:
 */
let pythons = ["Eric", "Graham", "John", "Michael", "Terry", "Terry"]
//Os Arrays são de longe as mais comuns dos três tipos.

//MARK: - Dictionaries

/*
 Os Dictionaries são coleções de valores como Arrays, mas em vez de armazenar coisas com uma posição inteira, você pode acessá-los usando o que quiser.
 A maneira mais comum de armazenar dados do dictionarie é usando strings. Por exemplo, poderíamos criar um dicionário que armazena a altura dos cantores usando seu nome:
 */
let Altura = [
    "Taylor Swift": 1.78,
    "Ed Sheeran": 1.73
]
/*
 Assim como as Arrays, os dictionaries começam e terminam com colchetes e cada item é separado com uma vírgula.
 No entanto, também usamos dois pontos para separar o valor que você deseja armazenar (ex. 1.78) do identificador
 em que você deseja armazená-lo (ex. “Taylor Swift”).
 Esses identificadores são chamados de chaves, e você pode usá-los para ler dados de volta do dictionary:
 */

Altura["Taylor Swift"] // 1.78
/* OBS:
 Ao usar anotações de tipo, os dictionaries são escritos entre parênteses com dois pontos entre seus tipos de identificador e valor.
 Por exemplo,
 [String: Double] e
 [String: String].
 */

//MARK: - Por que o Swift tem Dictionary e Arrays?

/*
 Dictionaries e Arrays são ambas maneiras de armazenar muitos dados em uma variável,
 mas eles os armazenam de maneiras diferentes: os Dictionaries nos permitem escolher uma “chave”
 que identifica o item que queremos adicionar, enquanto os Arrays apenas adicionam cada item sequencialmente.
*/

/*
Então, em vez de tentar lembrar que o índice de array 7 significa o país de um usuário,
poderíamos simplesmente escrever o usuário["país"] - é muito mais conveniente.
 
Os dicionários não armazenam nossos itens usando um índice, mas, em vez disso, otimizam a maneira como armazenam itens para recuperação rápida.
Então, quando dizemos usuário["país"], ele enviará de volta o item nessa chave (ou nulo) instantaneamente, mesmo que tenhamos um Dictionary
com 100.000 itens dentro.

Lembre-se, não é possível garantir que exista uma chave em um Dictionarie. É por isso que ler um valor de um Dictionary
pode não enviar nada de volta - você pode ter solicitado uma chave que não existe!
*/

//MARK: - Dictionary default values
/*
Se você tentar ler um valor de um dicionário usando uma chave que não existe, o Swift o enviará de volta nulo - nada.
Embora isso possa ser o que você deseja, há uma alternativa: podemos fornecer ao dicionário um valor padrão para usar
se solicitarmos uma chave ausente.
Para demonstrar isso, vamos criar um dicionário de sorvetes favoritos para duas pessoas:
*/
let favoriteIceCream = [
    "Paul": "Chocolate",
    "Sophie": "Vanilla"
]

//Podemos ler o sorvete favorito do Paul assim:
favoriteIceCream["Paul"] //Chocolate

//Mas se tentássemos ler o sorvete favorito para Charlotte, voltaríamos nulo, o que significa que Swift não tem valor para essa chave:
favoriteIceCream["Charlotte"] //nill

/*
 Podemos corrigir isso dando ao Dictionary um valor padrão de “Desconhecido”, para que,
 quando nenhum sorvete for encontrado para Charlotte, voltemos “Desconhecido” em vez de nulo:
 */

favoriteIceCream["Charlotte", default: "Desconhecido"] //Desconhecido

//MARK: - Por que o Swift tem valores padrão para dictionaries?
/*
 Sempre que você lê um valor de um Dictionary, você pode obter um valor de volta ou pode voltar nulo - pode não haver valor para essa chave.
 Não ter valor pode causar problemas no seu código, até porque você precisa adicionar funcionalidade extra para lidar com valores ausentes com
 segurança, e é aí que entram os valores padrão do Dictionary: eles permitem que você forneça um valor de backup para usar quando a chave que
 você pede não existe.
 */
//Por exemplo, aqui está um Dictionary que armazena os resultados do exame para um aluno:
let results = [
    "english": 100,
    "french": 85,
    "geography": 75
]
/*
 Como você pode ver, eles fizeram três exames e pontuaram 100%, 85% e 75% para Inglês, Francês e Geografia.
 Se quiséssemos ler a pontuação da história deles, como fazemos isso depende do que queremos:
 
 1 - Se um valor ausente significa que o aluno não conseguiu fazer o teste, então poderíamos usar um valor
 padrão de 0 para que sempre obtenhamos um inteiro de volta.

 2 - Se um valor ausente significa que o aluno ainda não fez o exame, então devemos pular o valor padrão e,
 em vez disso, procurar um valor nulo.
 
 Então, não é como se você sempre precisasse de um valor padrão ao trabalhar com dicionários, mas quando você faz isso é fácil:
*/
let historyResult = results["history", default: 0] //0


//MARK: - Creating empty collections

/*
 Arrays, Sets e dictionaries são chamados de coleções, porque eles coletam valores juntos em um só lugar.
 Se você quiser criar uma coleção vazia, basta escrever seu tipo seguido de parênteses de abertura e fechamento.
 Por exemplo, podemos criar um dicionário vazio com strings para chaves e valores como este:
 */
var teams = [String: String]()
//Podemos então adicionar entradas mais tarde, assim:
teams["Paul"] = "Red"
//Da mesma forma, você pode criar uma matriz vazia para armazenar inteiros como este:
var Results = [Int]()
//A exceção é criar um conjunto vazio, o que é feito de forma diferente:
var words = Set<String>()
var numbers = Set<Int>()
/*
 Isso ocorre porque o Swift tem sintaxe especial apenas para Dictionaries e Arrays;
 outros tipos devem usar sintaxe de colchetes de ângulo, como conjuntos.
 Se você quisesse, poderia criar matrizes e dicionários com sintaxe semelhante:
 */
var scores = Dictionary<String, Int>()
var REsults = Array<Int>()

//MARK: - Por que você iria querer criar uma coleção vazia?

//Quando você está apenas aprendendo Swift, é comum ver exemplos como este:
let names = ["Eleanor", "Chidi", "Tahani", "Jianyu", "Michael", "Janet"]
/*
 Esse é um Array constante de seis strings e, como é constante, significa que não podemos adicionar mais
 coisas à matriz - conhecemos todos os nossos itens quando a matriz é criada, então o resto do nosso programa
 está apenas usando esses dados fixos.
 Mas às vezes você não conhece todos os seus dados antecipadamente e, nesses casos, é mais comum criar uma coleção
 vazia e depois adicionar coisas à medida que calcula seus dados.
 
 Por exemplo, temos nosso Array de nomes fixos acima, e se quiséssemos descobrir quais nomes começaram com J, então:
  1 - Criando uma matriz de strings vazia chamada algo como jNames
  2 - Revie todos os nomes na matriz de nomes originais e verifique se ele começa com “J”
  3 - Se isso acontecer, adicione-o no Array jNames.
 
 Quando tivermos repassado todos os nomes, acabaremos com duas cordas em jNames: Jianyu e Janet. Claro, se nosso cheque
 fosse quais nomes começavam com "X", então acabaríamos sem nomes no array - e tudo bem. Começou como vazio e terminou
 como vazio.
 */

//MARK: - Enumerations

/*
 As Enumerations - geralmente chamadas apenas de enums - são uma maneira de definir grupos de valores relacionados
 de uma maneira que os torna mais fáceis de usar.
 Por exemplo, se você quisesse escrever algum código para representar o sucesso ou o fracasso de algum trabalho que
 estava fazendo, você poderia representá-lo como strings:
 */
let RESult = "failure"
//Mas o que acontece se alguém acidentalmente usar um nome diferente?
let result2 = "failed"
let result3 = "fail"
//Todas essas três são Strings diferentes, então elas significam coisas diferentes.
//Com enums, podemos definir um tipo de Resultado que pode ser sucesso ou fracasso, assim:

enum Result {
    case success
    case failure
}
//E agora, quando o usamos, devemos escolher um desses dois valores:
let result4 = Result.failure
//Isso impede que você use acidentalmente Strings diferentes a cada vez.

//MARK: - Por que Swift precisa de enums?

/*
 Enums são um recurso extraordinariamente poderoso do Swift, e você os verá usados de muitas maneiras e lugares.
 Muitas linguagens não têm enums e se dão bem, então você pode se perguntar por que Swift precisa de enums!
 
 Bem, no seu mais simples enum é simplesmente um bom nome para um valor. Podemos fazer um enum chamada Direção
 com casos para norte, sul, leste e oeste, e nos referir àqueles em nosso código. Claro, poderíamos ter usado um
 inteiro em vez disso, caso em que nos referimos a 1, 2, 3 e 4, mas você poderia realmente se lembrar do que 3 significava?
 E se você digitasse 5 por engano?
 
 Então, enums são uma maneira de dizermos Direction.north para significar algo específico e seguro. Se tivéssemos escrito
 Direction.thatWay e tal caso não existisse, Swift simplesmente se recusaria a construir nosso código - ele não entende o caso enum.
 Nos bastidores, o Swift pode armazenar seus valores de enum de forma muito simples, então eles são muito mais rápidos de criar e
 armazenar do que algo como uma string.
 
 À medida que você progride, você aprenderá como o Swift nos permite adicionar mais funcionalidade às enums - elas são mais
 poderosas em Swift do que em qualquer outra linguagem que eu tenha visto.
 */

//MARK: - Resumo 2
/*
 1. Arrays, sets, tuples, e dictionaries permite que você armazene um grupo de itens sob um único valor.
 Cada um deles faz isso de maneiras diferentes, então o que você usa depende do comportamento que você deseja.
 2. Arrays armazenam itens na ordem em que você os adiciona e você os acessa usando posições numéricas.
 3. Sets armazene itens sem nenhum pedido, para que você não possa acessá-los usando posições numéricas.
 4. Tuples são fixos em tamanho, e você pode anexar nomes a cada um de seus itens. Você pode ler itens usando
 posições numéricas ou usando seus nomes.
 5. Dictionaries armazene itens de acordo com uma key, e você pode ler itens usando essas keys.
 6. Enums são uma maneira de agrupar valores relacionados para que você possa usá-los sem erros ortográficos.
 7. Você pode anexar valores brutos a enums para que eles possam ser criados a partir de inteiros ou strings,
 ou você pode adicionar valores associados para armazenar informações adicionais sobre cada caso.
 */


//MARK: - Operadores e condições

//MARK: - Operadores aritméticos
/*
 Agora que você conhece todos os tipos básicos no Swift, podemos começar a juntá-los usando operadores.
 Operadores são aqueles pequenos símbolos matemáticos como + e -, e Swift tem uma enorme variedade deles.
 Aqui estão algumas variáveis de teste para trabalharmos:
 */

let firstScore = 12
let secondScore = 4

//Podemos adicionar e subtrair usando + e -:

let total = firstScore + secondScore
let difference = firstScore - secondScore

//E podemos multiplicar e dividir usando * e /:

let product = firstScore * secondScore
let divided = firstScore / secondScore
/*
 Swift tem um operador especial para calcular remanescentes após a divisão: %.
 Ele calcula quantas vezes um número pode caber dentro de outro e, em seguida, envia de
 volta o valor que sobrou.
 
 Por exemplo, definimos o secondScore para 4, então, se dissermos 13% de secondScore, receberemos
 de volta um, porque 4 se encaixa em 13 três vezes com o restante um:
*/

let remainder = 13 % secondScore
