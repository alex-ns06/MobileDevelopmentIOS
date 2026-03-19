// Classe Base
class DispositivoEletronico {
    
    // Propriedades
    let marca: String
    var modelo: String
    var ligado: Bool = false
    
    // Encapsulamento
    private var _numeroSerie: String
    private var _preco: Double
    
    // Propriedade somente leitura
    var numeroSerie: String {
        return _numeroSerie
    }
    
    // Observadores + encapsulamento
    var preco: Double {
        get { return _preco }
        set {
            print("Preço vai mudar de \(_preco) para \(newValue)")
            let oldValue = _preco
            _preco = newValue
            print("Preço mudou de \(oldValue) para \(_preco)")
        }
    }
    
    // Propriedade computada
    var precoComDesconto: Double {
        return preco * 0.9
    }
    
    // Inicializador designado
    init(marca: String, modelo: String, preco: Double) {
        self.marca = marca
        self.modelo = modelo
        self._preco = preco
        self._numeroSerie = UUID().uuidString.prefix(8).uppercased()
    }
    
    // Inicializador de conveniência
    convenience init(marca: String, modelo: String) {
        self.init(marca: marca, modelo: modelo, preco: 99.99)
    }
    
    // Métodos
    func ligar() {
        if !ligado {
            ligado = true
            print("\(modelo) ligado.")
        }
    }
    
    func desligar() {
        if ligado {
            ligado = false
            print("\(modelo) desligado.")
        }
    }
    
    func exibirDetalhes() {
        print("""
        Marca: \(marca)
        Modelo: \(modelo)
        Série: \(numeroSerie)
        Preço: \(preco)
        Ligado: \(ligado)
        """)
    }
    
    // Método Aplicar Desconto
    func aplicarDesconto(percentual: Double) {
        preco -= preco * (percentual / 100)
    }
    
    deinit {
        print("Dispositivo \(modelo) removido da memória.")
    }
}

// Subclasse Smartphone
final class Smartphone: DispositivoEletronico {
    
    var tamanhoTela: Double
    var temCamera: Bool
    
    init(marca: String, modelo: String, preco: Double, tamanhoTela: Double, temCamera: Bool) {
        self.tamanhoTela = tamanhoTela
        self.temCamera = temCamera
        super.init(marca: marca, modelo: modelo, preco: preco)
    }
    
    override func exibirDetalhes() {
        super.exibirDetalhes()
        print("Tela: \(tamanhoTela) | Câmera: \(temCamera)")
    }
    
    func tirarFoto() {
        if ligado && temCamera {
            print("📸 Foto tirada!")
        } else {
            print("Não é possível tirar foto.")
        }
    }
    
    deinit {
        print("Smartphone \(modelo) destruído.")
    }
}

// Subclasse Notebook
class Notebook: DispositivoEletronico {
    
    var tamanhoTela: Double
    var capacidadeArmazenamento: Int
    
    init(marca: String, modelo: String, preco: Double, tamanhoTela: Double, capacidadeArmazenamento: Int) {
        self.tamanhoTela = tamanhoTela
        self.capacidadeArmazenamento = capacidadeArmazenamento
        super.init(marca: marca, modelo: modelo, preco: preco)
    }
    
    override func exibirDetalhes() {
        super.exibirDetalhes()
        print("Tela: \(tamanhoTela) | Armazenamento: \(capacidadeArmazenamento)GB")
    }
    
    deinit {
        print("Notebook \(modelo) destruído.")
    }
}

// Protocolo
protocol Atualizavel {
    func atualizarSoftware()
}

// Extensão Notebook
extension Notebook: Atualizavel {
    func atualizarSoftware() {
        print("Software do notebook atualizado.")
    }
}

// Extensão String
extension String {
    func formatarParaNumeroSerie(tamanho: Int) -> String {
        return self.count < tamanho
        ? String(repeating: "0", count: tamanho - self.count) + self
        : self
    }
}

// Struct (Acessório)
// Escolha: STRUCT (valor, simples, sem identidade)
struct Acessorio {
    var nome: String
    var preco: Double
}

// Testes

let celular = Smartphone(marca: "Apple", modelo: "iPhone", preco: 5000, tamanhoTela: 6.1, temCamera: true)
let notebook = Notebook(marca: "Dell", modelo: "Inspiron", preco: 3000, tamanhoTela: 15.6, capacidadeArmazenamento: 512)

// Polimorfismo
let dispositivos: [DispositivoEletronico] = [celular, notebook]

for dispositivo in dispositivos {
    dispositivo.exibirDetalhes()
}

// Testes extras
celular.ligar()
celular.tirarFoto()

notebook.atualizarSoftware()
notebook.aplicarDesconto(percentual: 10)

print("Preço com desconto: \(notebook.precoComDesconto)")