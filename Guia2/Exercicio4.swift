 // Classe base
class Funcionario {
    
    var salarioBase: Double
    
    init(salarioBase: Double) {
        self.salarioBase = salarioBase
    }
    
    // Método que pode ser sobrescrito
    func calcularSalario() -> Double {
        return salarioBase
    }
}

// Subclasse com override e final
final class Gerente: Funcionario {
    
    var bonus: Double
    
    init(salarioBase: Double, bonus: Double) {
        self.bonus = bonus
        super.init(salarioBase: salarioBase)
    }
    
    // Sobrescrevendo o método
    override func calcularSalario() -> Double {
        return salarioBase + bonus
    }
}

// Exemplo de uso
let funcionario = Funcionario(salarioBase: 2000)
print("Salário Funcionário: \(funcionario.calcularSalario())")

let gerente = Gerente(salarioBase: 3000, bonus: 1500)
print("Salário Gerente: \(gerente.calcularSalario())")