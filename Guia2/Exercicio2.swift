class Pessoa {
    
    // Propriedades
    var nome: String
    var idade: Int
    
    // Inicializador (init)
    init(nome: String, idade: Int) {
        self.nome = nome
        self.idade = idade
        print("Pessoa \(nome) criada!")
    }
    
    // Método
    func exibirInformacoes() {
        print("Nome: \(nome), Idade: \(idade)")
    }
    
    // Desinicializador (deinit)
    deinit {
        print("Pessoa \(nome) sendo destruída.")
    }
}

// Exemplo de uso

var pessoa1: Pessoa? = Pessoa(nome: "Maria", idade: 25)
pessoa1?.exibirInformacoes()

// Liberando o objeto da memória (para chamar o deinit)
pessoa1 = nil