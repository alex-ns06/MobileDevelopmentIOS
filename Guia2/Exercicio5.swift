 // Protocolo
protocol FormaGeometrica {
    func calcularArea() -> Double
}

// Struct que implementa o protocolo
struct Retangulo: FormaGeometrica {
    
    var largura: Double
    var altura: Double
    
    func calcularArea() -> Double {
        return largura * altura
    }
}

// Exemplo de uso
let retangulo = Retangulo(largura: 5.0, altura: 3.0)
print("Área do retângulo: \(retangulo.calcularArea())")