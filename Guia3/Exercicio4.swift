import Foundation

// Protocolo Desenhavel
protocol Desenhavel {
    var area: Double { get }
    func desenhar()
}

// Extension com implementação padrão
extension Desenhavel {
    func imprimirDescricao() {
        print("Tipo: \(type(of: self)) | Área: \(area)")
    }
}

// Struct Circulo
struct Circulo: Desenhavel {
    var raio: Double
    
    var area: Double {
        return Double.pi * raio * raio
    }
    
    func desenhar() {
        print("Desenhando um círculo de raio \(raio)")
    }
}

// Struct Retangulo
struct Retangulo: Desenhavel {
    var largura: Double
    var altura: Double
    
    var area: Double {
        return largura * altura
    }
    
    func desenhar() {
        print("Desenhando um retângulo de \(largura)x\(altura)")
    }
}

// Função Protocol-Oriented
func desenharFormas(_ formas: [Desenhavel]) {
    for forma in formas {
        forma.desenhar()
        forma.imprimirDescricao()
    }
}

// Teste
let circulo = Circulo(raio: 2.0)
let retangulo = Retangulo(largura: 3.0, altura: 4.0)

let formas: [Desenhavel] = [circulo, retangulo]

desenharFormas(formas)