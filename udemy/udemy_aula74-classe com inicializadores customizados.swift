import Foundation
class Carro{
    var marca = String()
    var modelo : String = ""
    var velocidadeMaxima : Int?
    var tipo = String()
    init(){

    }
    init(marcaDoCarro: String, modeloDoCarro: String){
        marca = marcaDoCarro
        modelo = modeloDoCarro
    }   
    init(marcaDoCarro: String, modeloDoCarro: String, velocidadeMaximaDoCarro: Int?, tipoDoCarro: String){
        self.marca = marcaDoCarro //self se refere a classe
        self.modelo = modeloDoCarro
        self.velocidadeMaxima = velocidadeMaximaDoCarro
        self.tipo = tipoDoCarro
    }   
}
var tesla = Carro(marcaDoCarro: "Tesla", modeloDoCarro: "Model 3", velocidadeMaximaDoCarro: 300, tipoDoCarro: "Sedã")
var tesla2 = Carro(marcaDoCarro: "Tesla", modeloDoCarro: "Model S")
print(tesla2.marca)
print(tesla2.modelo)

class Mesa{
    var cor = ""
    var altura = 0
    var numeroDePernas = 4
    var largura = 0
    var comprimento = 0
    var area : Double {
        let areaCalculada : Double = Double(largura)/100 * Double(comprimento)/100
        return areaCalculada
    }
    func calcularVolume(area: Double, alturaP: Int) -> Double {
        let volume : Double = area * Double(alturaP)/100
        print("Volume: \(volume)m³")
        return volume
    }

    init(){}
    init(corDaMesa: String, alturaDaMesa: Int, numeroDePernasDaMesa: Int, larguraDaMesa: Int, comprimentoDaMesa: Int){
        cor = corDaMesa
        altura = alturaDaMesa
        numeroDePernas = numeroDePernasDaMesa
        largura = larguraDaMesa
        comprimento = comprimentoDaMesa
    }
}
var mesaDaSala = Mesa(corDaMesa: "Azul", alturaDaMesa: 150, numeroDePernasDaMesa: 4, larguraDaMesa: 300, comprimentoDaMesa: 500)
var mesaDoQuarto = Mesa()
mesaDoQuarto.cor = "Preta"
mesaDoQuarto.numeroDePernas = 4
mesaDoQuarto.altura = 120
mesaDoQuarto.largura = 100
mesaDoQuarto.comprimento = 60
var mesaDaCozinha = Mesa(corDaMesa: "Branca", alturaDaMesa: 100, numeroDePernasDaMesa: 3, larguraDaMesa: 80, comprimentoDaMesa: 80)

print("Área: \(mesaDoQuarto.area)m²")
mesaDoQuarto.calcularVolume(area: mesaDoQuarto.area, alturaP: mesaDoQuarto.altura)





