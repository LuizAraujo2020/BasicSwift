//1. Crie um Switch que seja exaustivo 
var chovendo : Bool = true
switch chovendo {
case true:
    print("Está chovendo, leve um guarda-chuva!")
case false:
    print("Não está chovendo, aproveite o dia!")
}
//2. Crie um switch com pelo menos 4 casos e um default
var nome = "Carlos"
switch nome {
    case "Luiz":
        print("Olá, Luiz! Como vai?")
    case "Carlos":
        print("Olá, Carlos! Como vai?")
    case "Pedro":
        print("Olá, Pedro! Como vai?")
    case "Paulo":
        print("Olá, Paulo! Como vai?")
    default:
        print("Nome não cadastrado!")
}

//3. Crie um Switch para saber se uma piscina é olímpica ou não
var tamanhoPiscina = 10
switch tamanhoPiscina {
    case 50:
        print("É olímpica")
    default:
        print("Não é olímpica")
}














