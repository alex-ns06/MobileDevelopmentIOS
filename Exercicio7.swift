// Usando if let
var nome: String? = "Maria"

if let nomeDesempacotado = nome {
    print("O nome é \(nomeDesempacotado)")
} else {
    print("O nome não está definido")
}

// Usando guard

var nome: String? = "Maria"

func mostrarNome() {
    guard let nomeDesempacotado = nome else {
        print("O nome não está definido")
        return
    }

    print("O nome é \(nomeDesempacotado)")
}

mostrarNome()