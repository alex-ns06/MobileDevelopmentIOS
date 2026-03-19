 // Classe base (Superclasse)
class Animal {
    
    var nome: String
    
    init(nome: String) {
        self.nome = nome
    }
    
    func fazerSom() {
        print("O animal faz um som")
    }
}

// Subclasse
class Cachorro: Animal {
    
    // Sobrescrita de método (Polimorfismo)
    override func fazerSom() {
        print("Au Au!")
    }
}

// Exemplo de uso
let animal = Animal(nome: "Animal Genérico")
animal.fazerSom()

let cachorro = Cachorro(nome: "Rex")
cachorro.fazerSom()