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
