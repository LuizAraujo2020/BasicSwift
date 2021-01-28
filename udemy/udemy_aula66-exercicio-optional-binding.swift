import Foundation
// Crie uma variável Int opcional com o valor de 25
// Crie uma variável Int normal com ovalor de 100
// Crie uma função que receba dois parâmetros: uma Int opcional e uma Int normal
// Através do If Let (Optional Binding), verifique se o valor da Int opcional existe
// Caso exista, multiplique as duas Int dentro da função e faça um print com o resultado
// Caso não exista, faça um print dizendo que o valor da primeira Int era nil
var num1 : Int? = 25
var num2 : Int = 100
func multiplicar(num1: Int?, num2 : Int){
    if let num = num1{
        var resultado = num * num2
        print("\(num) * \(num2) = \(resultado)")
        // print(num)
    }else{
        print("Varável vazia, sem valor(nil)!")
    }
}

multiplicar(num1: num1, num2: num2)

