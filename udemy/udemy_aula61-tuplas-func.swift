// Tupla implícita
var pessoa = ("Luiz", 30, "castanhos", true)
print("\(pessoa.0) tem \(pessoa.1) anos, olhos \(pessoa.2) e é homem(\(pessoa.3))")
var cachorro = (nome: "Luna", idade:  0.5, corOlhos: "castanhos com azul", sexo: "fêmea")
print("\(cachorro.0) tem \(cachorro.1) anos, olhos \(cachorro.2) e é \(cachorro.3)")

// Tupla explícita com identificadores
var pessoa1 : (nome: String, idade: Int, corDosOlhos: String, eHomem: Bool) = ("Clara", 23, "verdes", false)

func cadastroPessoa(p: (nome: String, idade: Int, corDosOlhos: String, eHomem: Bool)){
    // print(p.nome)
    print("\(p.nome) tem \(p.idade) anos, olhos \(p.corDosOlhos) e é homem(\(p.eHomem))")

}
cadastroPessoa(p: pessoa1)

