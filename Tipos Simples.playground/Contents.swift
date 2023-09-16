import UIKit
//Variaveis e tipos de variaveis
/*
 Variáveis têm esse nome porque seus valores podem mudar ao longo do tempo, e isso geralmente é útil.
 Com a palavra chave "var" voce pode criar variaveis, por exemplo:
 */
//String
var str = "Hello, World"
var nome = "Fulano"
var cidade = "Manaus"

//String de varias linhas
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
//Int
var idade = 22
var populacao = 8_000_000

//Doubles
var pi = 3.141
var altura = 1.77

//Booleans
var incrivel = true
var chato = false
/*
 A interpolação de strings permite que você crie strings a partir de outras variáveis e constantes, colocando seus valores dentro de sua string.
 */
//Interpolação de strings
var score = 85
var resultado = "Seu score é \(score)" //Seu score é 85

//Constantes
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
let heights = [
    "Taylor Swift": 1.78,
    "Ed Sheeran": 1.73
]
/*
 Assim como as Arrays, os dictionaries começam e terminam com colchetes e cada item é separado com uma vírgula. No entanto, também usamos dois pontos para separar o valor que você deseja armazenar (ex. 1.78) do identificador em que você deseja armazená-lo (ex. “Taylor Swift”).
 Esses identificadores são chamados de chaves, e você pode usá-los para ler dados de volta do dictionary:
 */
heights["Taylor Swift"] // 1.78
/* OBS:
 Ao usar anotações de tipo, os dictionaries são escritos entre parênteses com dois pontos entre seus tipos de identificador e valor. Por exemplo, [String: Double] e [String: String].
 */
