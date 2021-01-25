//1. Crie uma array de String com 5 elementos
var alfabeto : [String] = ["a","b","c","d","e"]
//2. Retorne o primeiro elemento de sua array e o último
print(alfabeto.first)
//3. Atualize o quarto elemento
alfabeto[3] = "z"
//print(alfabeto)
//4. Remova o penúltimo elemento
alfabeto.remove(at: alfabeto.count - 1)
//5. Insira um novo elemento no segundo índice
alfabeto.insert("x",at: 1)
//print(alfabeto)
//6. Utilize o método certo para descobrir se tem uma determinada String
print(alfabeto.contains("l"))
//7. Utilize o método certo para saber o indice de determinada String
print(alfabeto.index(of: "l"))