// Struct (tipo valor)
struct Ponto {
    var x: Int
    var y: Int
}

// Class (tipo referência)
class PontoClasse {
    var x: Int
    var y: Int
    
    init(x: Int, y: Int) {
        self.x = x
        self.y = y
    }
}

// Testando Struct (cópia)
var ponto1 = Ponto(x: 10, y: 20)
var ponto2 = ponto1 // cópia

ponto2.x = 50

print("Struct:")
print("ponto1.x =", ponto1.x) // 10 (não muda)
print("ponto2.x =", ponto2.x) // 50

// Testando Class (referência)
var ponto3 = PontoClasse(x: 10, y: 20)
var ponto4 = ponto3 // mesma referência

ponto4.x = 50

print("\nClass:")
print("ponto3.x =", ponto3.x) // 50 (mudou!)
print("ponto4.x =", ponto4.x) // 50