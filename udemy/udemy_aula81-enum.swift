import Foundation
enum RosaDosVentos : String {
    case Norte = "Vamos adiante!"
    case Sul = "Estamos no caminho errado, meia volta!"
    case Leste = "Precisamos dobrar a esquerda!"
    case Oeste = "Dobremos a direita!"
}
var direcaoDaBussula = RosaDosVentos.Sul
if direcaoDaBussula == .Norte{
    print(direcaoDaBussula.rawValue)
} else if direcaoDaBussula == .Sul {
    print(direcaoDaBussula.rawValue)    
} else if direcaoDaBussula == .Leste {
    print(direcaoDaBussula.rawValue)    
} else if direcaoDaBussula == .Oeste {
    print(direcaoDaBussula.rawValue)    
}













