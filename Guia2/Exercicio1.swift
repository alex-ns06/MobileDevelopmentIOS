class Carro {
    
    // Propriedades
    var marca: String
    var modelo: String
    
    // Propriedade com willSet
    var ano: Int {
        willSet {
            print("O ano vai mudar de \(ano) para \(newValue)")
        }
    }
    
    // Inicializador
    init(marca: String, modelo: String, ano: Int) {
        self.marca = marca
        self.modelo = modelo
        self.ano = ano
    }
}

// Criando um objeto
let carro1 = Carro(marca: "Toyota", modelo: "Corolla", ano: 2020)

// Alterando o ano (vai disparar o willSet)
carro1.ano = 2022