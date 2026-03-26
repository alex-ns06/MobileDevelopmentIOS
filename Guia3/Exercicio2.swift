import Foundation

// Função que filtra o array usando um closure
func filtrarArray(_ array: [Int], usando closure: (Int) -> Bool) -> [Int] {
    var resultado: [Int] = []
    
    for numero in array {
        if closure(numero) {
            resultado.append(numero)
        }
    }
    
    return resultado
}

// Teste com trailing closure
let numeros = [1, 2, 3, 4, 5, 6]

// Filtrando números pares
let pares = filtrarArray(numeros) { numero in
    return numero % 2 == 0
}

print("Números pares:", pares)

// Forma reduzida
let maioresQueTres = filtrarArray(numeros) { $0 > 3 }
print("Maiores que 3:", maioresQueTres)

// Classe usando capture list
class Filtro {
    var valorMinimo: Int
    
    init(valorMinimo: Int) {
        self.valorMinimo = valorMinimo
    }
    
    func executarFiltro() {
        let numeros = [1, 2, 3, 4, 5, 6]
        
        let resultado = filtrarArray(numeros) { [weak self] numero in
            guard let self = self else { return false }
            return numero > self.valorMinimo
        }
        
        print("Resultado com capture list:", resultado)
    }
    
    deinit {
        print("Filtro desalocado")
    }
}

// Teste do capture list
var filtro: Filtro? = Filtro(valorMinimo: 3)
filtro?.executarFiltro()

// Removendo referência para testar desalocação
filtro = nil