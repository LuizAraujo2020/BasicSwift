//1. Crie uma variável representando o nome da cidade onde vc nasceu.
var cidade = "Brasília"
//2. Crie uma constante representando o ano que vc nasceu.
let  ano = 1990
//3. Imprima no console a seguinte frase: "Eu nasci na cidade -VAR no ano de -VAR ".
//3.1 Através da Concatenação
print("Eu nasci na cidade " + cidade + " no ano de " + String(ano) + ".")
//3.1 Através da Interpolação
print("Eu nasci na cidade \(cidade) no ano de \(ano).")
