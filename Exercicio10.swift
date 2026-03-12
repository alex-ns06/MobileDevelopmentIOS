struct Carro {
    var marca: String
    var modelo: String
    var ano: Int
}

let meuCarro = Carro(marca: "Toyota", modelo: "Corolla", ano: 2022)

print("Marca: \(meuCarro.marca)")
print("Modelo: \(meuCarro.modelo)")
print("Ano: \(meuCarro.ano)")