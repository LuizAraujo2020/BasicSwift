import Foundation
// Crie um aclasse para filmes ou qualquer outra coisa
class Livros {
// Crie pelo menos duas propriedades
    var titulo = String()
    var autor = String()
    var totalDePaginas : Int
    var paginaAtual : Int
    var contadorApresentacao: Int = 0
// Crie uma propriedade computada
    var paginasRestantes : Int {
        let falta = totalDePaginas - paginaAtual
        return falta
    }
// Crie uma função para esta classe
    // func apresentarLivro(titulo : String, autor : String, totalDePaginas : Int?, paginaAtual : Int?, paginasRestantes : Int?) -> Int {
    func apresentarLivro(){
        print("###  APRESENTAR LIVRO ###")
        print("TÍTULO: \(self.titulo)")
        print("AUTOR: \(self.autor)")
        print("TOTAL DE PÁGINAS: \(self.totalDePaginas)")
        print("PÁGINA ATUAL: \(self.paginaAtual)")
        print("PÁGINAS RESTANTES: \(self.paginasRestantes) \n")
    }
// // Crie tanto um inicializador padrão como um custom
    init() {
        
    }
    init(titulo: String, autor: String, totalDePaginas: Int, paginaAtual: Int){
        self.titulo = titulo
        self.autor = autor
        self.totalDePaginas = totalDePaginas
        self.paginaAtual = paginaAtual
    }
} 
// Crie 3 objetos
var livro1 = Livros(titulo: "As tranças do Rei Careca", autor: "Luna Lovegood", totalDePaginas: 100, paginaAtual: 99)
var livro2 = Livros(titulo: "Poeira em Alto Mar", autor: "Biriscleyton Botelho", totalDePaginas: 300, paginaAtual: 216)
var livro3 = Livros(titulo: "Coletânia As Crônicas de Nárnia", autor: "CK Lewis", totalDePaginas: 800, paginaAtual: 500)

livro1.apresentarLivro()
livro2.apresentarLivro()
livro3.apresentarLivro()














