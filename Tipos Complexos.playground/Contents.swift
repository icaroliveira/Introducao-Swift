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
