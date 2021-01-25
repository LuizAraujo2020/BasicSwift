//1. Utilizando os operadores && ou || e  mecanismo condicional ELSE IF, 
//crie um algoritmo que diga se uma criança pode ir em um toboágua

var altura = 1.60
var peso = 45

if altura <= 1.3 || peso <= 30 {
    print("Não pode descer no tobogã")
} else if altura <= 1.5 || peso <= 50{
    print("Pode descer no tobogã infantil")
} else {
    print("Pode descer no tobogã de adulto")
}

