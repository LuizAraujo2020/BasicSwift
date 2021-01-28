import Foundation
// 1. Crie uma classe para filmes ou qualquer outra coisa que você queira
class Livros {
// 2. Crie pelo menos duas propriedades para essa classe
    var titulo = String()
    var ano = Int()
    var autor : String?
    var totalDePaginas : Int?
    var paginasLidas : Int?
// 3. Crie uma propriedade computada para essa classe que vá computar cdados relacionados a alguma de 
//suas propriedades
    var paginasRestantes : Int?{
        let falta : Int? = totalDePaginas - paginasLidas
        return falta
    }
// 4. Crie uma função para esta classe que retorne o que vc quiser
    func apresentacao(titulo = String, ano = Int, autor : String?, totalDePaginas : Int?, paginasLidas : Int?){
        print("### APRESENTAÇÃO ##"
    }
// 5. Crie tanto um inicializador padrão como inicializador customizado


        self.titulo = titulo
        self.ano = ano
        self.autor = autor
        self.totalDePaginas = totalDePaginas
        self.paginasLidas = paginasLidas
// 6. Crie 3 objetos a partir desta classe


}



























