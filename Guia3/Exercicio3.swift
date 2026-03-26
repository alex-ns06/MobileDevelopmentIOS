import Foundation

// Struct genérica ResultadoOperacao
struct ResultadoOperacao<T, E> {
    let sucesso: T?
    let erro: E?
    
    // Inicializador para sucesso
    init(sucesso: T) {
        self.sucesso = sucesso
        self.erro = nil
    }
    
    // Inicializador para erro
    init(erro: E) {
        self.sucesso = nil
        self.erro = erro
    }
}

// Função genérica de conversão
func converterParaInteiro(_ array: [String]) -> [ResultadoOperacao<Int, String>] {
    var resultados: [ResultadoOperacao<Int, String>] = []
    
    for valor in array {
        if let numero = Int(valor) {
            resultados.append(ResultadoOperacao(sucesso: numero))
        } else {
            resultados.append(ResultadoOperacao(erro: "Não foi possível converter '\(valor)'"))
        }
    }
    
    return resultados
}

// Teste
let valores = ["10", "20", "abc", "30", "xpto"]

let resultados = converterParaInteiro(valores)

for resultado in resultados {
    if let sucesso = resultado.sucesso {
        print("Sucesso:", sucesso)
    } else if let erro = resultado.erro {
        print("Erro:", erro)
    }
}