let capitais = [
    "Brasil": "Brasília",
    "França": "Paris",
    "Japão": "Tóquio",
    "Argentina": "Buenos Aires",
    "Canadá": "Ottawa"
]

let pais = "Brasil"

if let capital = capitais[pais] {
    print("A capital de \(pais) é \(capital)")
} else {
    print("País não encontrado")
}