import Foundation
//Crie uma classe chamada Brasileiro que vá representar uma pessoa
enum  OrientacaoMotora{
    case Destro, Canhoto, Ambidestro, Indefindo
}
enum Naturalidade : String{
    case DF = "Distrito Federal"
    case SP = "São Paulo"
    case SC = "Santa Catarina"
    case CE = "Ceará"
    case AM = "Amazonas"
    case XX = "Indefinida"
}
class Brasileiro{
//Crie 3 propriedades
    var nome = String()
    var orientacaoMotora = OrientacaoMotora.Indefindo
    var naturalidade : Naturalidade = .XX
    //Crie uma função chamada retornarInfo que retorne todas as informações
    func retornarInfo(){
        print("\(nome) é \(orientacaoMotora) e natural de \(naturalidade.rawValue)")
    }
    init() {
        
    }
    init(nome: String, orientacaoMotora: OrientacaoMotora, naturalidade: Naturalidade) {
        self.nome = nome
        self.orientacaoMotora = orientacaoMotora
        self.naturalidade = naturalidade
    }
}

var brasileiro1 = Brasileiro(nome: "Biruscleyton", orientacaoMotora: .Destro, naturalidade: .DF)
brasileiro1.retornarInfo()






