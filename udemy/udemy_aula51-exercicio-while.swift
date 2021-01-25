// 1. Crie uma variável que seja menor do que 10 e multiplique-se por 
// 5 até que ela seja maior ou igual a 5000

var num = 1

while num <= 5000 {
    var temp = num
    num *= 5
    print("\(temp) * 5 = \(num)")
}