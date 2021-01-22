///1. Crie uma array explicitamente com o Data Type Double, que contém 6
// elementos
var vetor = [3.14, 51, 65.9, 1324, 356, 3188.6]
//2. Adicione mais 3 elementos a essa Array através do método append
vetor.append(1)
vetor.append(2.3)
vetor.append(55.4231)
//3. Conte a quantidade de elementos de uma array e adicione esse valor na 
//própria array
print(vetor.count)
vetor.append(Double(vetor.count))
print(vetor)
print(vetor.count)