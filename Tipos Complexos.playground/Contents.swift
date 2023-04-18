import UIKit

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

var nome = "oi"
