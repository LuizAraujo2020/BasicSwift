import Foundation
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
}
// var mesaDaSala = Mesa("Azul", 130, 10, 300, 500)
var mesaDoQuarto = Mesa()
mesaDoQuarto.cor = "Preta"
mesaDoQuarto.numeroDePernas = 4
mesaDoQuarto.altura = 120
mesaDoQuarto.largura = 100
mesaDoQuarto.comprimento = 60
// var mesaDaCozinha = Mesa("Branca", 100, 3, 80, 80) 
print("Área: \(mesaDoQuarto.area)m²")
mesaDoQuarto.calcularVolume(area: mesaDoQuarto.area, alturaP: mesaDoQuarto.altura)





