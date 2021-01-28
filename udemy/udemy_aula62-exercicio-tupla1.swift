// Crie uma tupla de forma explícita com 4 dados
// crie uma funcao que receba esta tupla e faça com que esta função retorne outra tupla criada dentro da func

var livros : (titulo: String, ano: Int, autor: String, genero: String, avaliacao: Int,  lendo: Bool) = ("As trancas do Rei Careca", 2021, "Harry Dopper", "Terror", 5, true)

func apresentarLivro(l : (titulo: String, ano: Int, autor: String, genero: String, avaliacao: Int,  lendo: Bool)) -> (titulo: String, ano: Int, autor: String, genero: String, avaliacao: Int,  lendo: Bool){
    print("Título: \(l.titulo)")
    print("Ano: \(l.ano)")
    print("Autor: \(l.autor)")
    print("Genero: \(l.genero)")
    print("Avaliação: \(l.avaliacao)")
    print("Está sendo lido? \(l.lendo)")

    var l1 : (titulo: String, ano: Int, autor: String, genero: String, avaliacao: Int,  lendo: Bool) = ("Poeira em Alto Mar", 2000, "Bobby Warley", "Misticismo Holístico", 3, false)

    return l1;
}

var livro1 : (titulo: String, ano: Int, autor: String, genero: String, avaliacao: Int,  lendo: Bool) = apresentarLivro(l: livros)
print("########################################")
print("Título: \(livro1.titulo)")
print("Ano: \(livro1.ano)")
print("Autor: \(livro1.autor)")
print("Genero: \(livro1.genero)")
print("Avaliação: \(livro1.avaliacao)")
print("Está sendo lido? \(livro1.lendo)")