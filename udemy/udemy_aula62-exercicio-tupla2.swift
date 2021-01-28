// Crie uma tupla de forma explícita com 4 dados
// crie uma funcao que receba esta tupla e faça com que esta função retorne outra tupla criada dentro da func

var numeros : (num1: Int, num2: Int, num3: Int, num4: Int) = (1,2,3,4)

func operacao(num: (num1: Int, num2: Int, num3: Int, num4: Int)) -> (res1: Int, res2 : Int){
    var res : (res1: Int, res2 : Int) = (num.num1 + num.num2, num.num3 * num.num4)
    return res
}

var resultado = operacao(num: numeros)
print("\(numeros.num1) + \(numeros.num2) = \(resultado.res1)")
print("\(numeros.num3) * \(numeros.num4) = \(resultado.res2)")