import Foundation
// class Filme {
struct Filme {  //struct é bem mais rápida/eficiente
    var nomeDoFilme = String()
    var anoDoLancamento = Int()
    var idadeDoFilme : Int {
        let idadeDoFilme = 2021 - anoDoLancamento
        return idadeDoFilme
    }
    init() {}
    init(nomeDoFilme: String, anoDoLancamento: Int) {
        self.nomeDoFilme = nomeDoFilme
        self.anoDoLancamento = anoDoLancamento
    }
}
var filme1 = Filme()
filme1.anoDoLancamento = 1980
print(filme1.idadeDoFilme)
var starWars = Filme()
var starWarsCopia = starWars
starWars.nomeDoFilme = "STAR WARS"

print(starWars.nomeDoFilme)
print(starWarsCopia.nomeDoFilme)

















