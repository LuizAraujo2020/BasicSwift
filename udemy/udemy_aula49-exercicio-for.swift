//1. Crie um for loop que imprima no console  50x a String "Programar é demais!"
for num in 1...50{
    //print("\(num) - Programar é demais!")
}
//2. Crie um for loop que multiplique uma var de tipo Int por ela mesma 5x
var valor = 2
for num2 in 1...5{
    valor *= valor 
    // print("\(valor)")
}
//3. Crie um array de cores e um loop que imprima cada cor dentro daquela array
var cores : [String] = ["Preto", "Branco", "Azul", "Verde", "Rosa", "Amarelo", "Vermelho"]
var num3 = 1
for cor in cores{
    print("Cor \(num3): \(cor)")
    num3 += 1
}

