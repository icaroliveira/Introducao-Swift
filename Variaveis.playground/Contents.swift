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
var apresentacao = """
Meu nome é icaro, \
tenho 22 anos e \
moro em Manaus
"""
//Int
var idade = 22
var populacao = 8_000_000

//Doubles
var pi = 3.141
var altura = 1.77

//Booleans
var incrivel = true
var chato = false

//Interpolação de strings
var score = 85
var resultado = "Seu score é \(score)" //Seu score é 85

//Constantes
/*
 Eu já disse que as variáveis têm esse nome porque seus valores podem mudar ao longo do tempo, e isso geralmente é útil. No entanto, muitas vezes você quer definir um valor uma vez e nunca alterá-lo, e então temos uma alternativa à palavra-chave var chamada let.
 A palavra-chave let cria constantes, que são valores que podem ser definidos uma vez e nunca mais. Por exemplo:
 */
let taylor = "swift"
//Exemplos de tipos de var e let

let album: String = "Reputation"
let year: Int = 1989
let height: Double = 1.78
let taylorRocks: Bool = true
