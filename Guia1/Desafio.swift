// 1. Struct Livro
struct Livro {
    var titulo: String
    var autor: String
    var anoPublicacao: Int
    var disponibilidade: Bool
}

// 2. Array para armazenar os livros
var biblioteca: [Livro] = []

// 3. Função para adicionar livros
func adicionarLivro(dados: (titulo: String, autor: String, ano: Int, disponivel: Bool)) {
    let novoLivro = Livro(
        titulo: dados.titulo,
        autor: dados.autor,
        anoPublicacao: dados.ano,
        disponibilidade: dados.disponivel
    )
    
    biblioteca.append(novoLivro)
}

// 4. Função para listar livros
func listarLivros() {
    print("Lista de Livros:")
    
    for (index, livro) in biblioteca.enumerated() {
        let status = livro.disponibilidade ? "Sim" : "Não"
        
        print("\(index + 1). Título: \(livro.titulo) | Autor: \(livro.autor) | Ano: \(livro.anoPublicacao) | Disponível: \(status)")
    }
}

// 5. Função para alterar disponibilidade
func alterarDisponibilidade(titulo: String) {
    
    if let indice = biblioteca.firstIndex(where: { $0.titulo == titulo }) {
        
        biblioteca[indice].disponibilidade.toggle()
        
        switch biblioteca[indice].disponibilidade {
        case false:
            print("O livro '\(titulo)' foi emprestado!")
        case true:
            print("O livro '\(titulo)' está disponível novamente.")
        }
        
    } else {
        print("Livro não encontrado.")
    }
}

// 6. Função para buscar livro (Optionals)
func buscarLivro(titulo: String) {
    
    let livroEncontrado = biblioteca.first { $0.titulo == titulo }
    
    if let livro = livroEncontrado {
        print("Livro encontrado: \(livro.titulo) de \(livro.autor)")
    } else {
        print("Livro não encontrado.")
    }
}

// --------------------
// Exemplo de uso
// --------------------

adicionarLivro(dados: ("O Senhor dos Anéis", "J.R.R. Tolkien", 1954, true))
adicionarLivro(dados: ("Harry Potter", "J.K. Rowling", 1997, false))

listarLivros()

print("\nAlterando disponibilidade do livro 'Harry Potter'...")
alterarDisponibilidade(titulo: "Harry Potter")

listarLivros()

print("\nProcurando pelo livro 'O Hobbit'...")
buscarLivro(titulo: "O Hobbit")