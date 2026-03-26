// Enum para resolução de vídeo
enum Resolucao {
    case sd
    case hd
    case uhd
}

// Enum TipoMidia com valores associados
enum TipoMidia {
    case musica(titulo: String, artista: String, duracao: Int)
    case video(titulo: String, duracao: Int, resolucao: Resolucao)
    case podcast(titulo: String, host: String, episodio: Int)
}

// Função para descrever a mídia
func descreverMidia(_ midia: TipoMidia) {
    switch midia {
    case .musica(let titulo, let artista, let duracao):
        print("🎵 Música: \(titulo)")
        print("Artista: \(artista)")
        print("Duração: \(duracao) segundos")
        
    case .video(let titulo, let duracao, let resolucao):
        print("🎬 Vídeo: \(titulo)")
        print("Duração: \(duracao) segundos")
        
        let resolucaoTexto: String
        switch resolucao {
        case .sd:
            resolucaoTexto = "SD"
        case .hd:
            resolucaoTexto = "HD"
        case .uhd:
            resolucaoTexto = "UHD"
        }
        
        print("Resolução: \(resolucaoTexto)")
        
    case .podcast(let titulo, let host, let episodio):
        print("🎙️ Podcast: \(titulo)")
        print("Host: \(host)")
        print("Episódio: \(episodio)")
    }
}

// Testando o código
let musica = TipoMidia.musica(titulo: "Shape of You", artista: "Ed Sheeran", duracao: 240)
let video = TipoMidia.video(titulo: "Tutorial Swift", duracao: 600, resolucao: .hd)
let podcast = TipoMidia.podcast(titulo: "Tech Talk", host: "João Silva", episodio: 42)

descreverMidia(musica)
print("-----")
descreverMidia(video)
print("-----")
descreverMidia(podcast)