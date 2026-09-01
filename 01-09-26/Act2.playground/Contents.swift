struct GPS {
    var latitud: Double = 0.0
    var longitud: Double = 0.0
}

var algunLugar = GPS()

print(algunLugar)

struct Libro{
    var titulo = ""
    var autor = ""
    var paginas = 0
    var precio = 0
}

var libroFav = Libro()
print(libroFav)
libroFav.titulo = "Manifesto Comunista"
libroFav.autor = "Karl Marx"
libroFav.paginas = 1000
libroFav.precio = 10000

print("Mi libro aca bien favorito es \(libroFav.titulo)por el dios de \(libroFav.autor)con unas paginas de \(libroFav.paginas)y cada peso lo vale, y vale = \(libroFav.precio) pesos")

