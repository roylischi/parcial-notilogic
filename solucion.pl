/*
noticia: autor - titulo - visitas
articulos: titulo - personaje
personajes: deportista - farandula - politico
deportista: nombre, titulos ganados
farandula: nombre, enemigo
politico: nombre, partido politico
*/

publica(artVandelay, deportista).
articulo(artVandelay, noticia("nuevo nitulo para lloyd braun", 25, deporte)).
personajeDeNoticia(deportista(lloyBraun, 5)).


publica(elaineBenes, farandula).
articulo(elaineBenes, noticia("primicia", 16, farandula)).
personajeDeNoticia(elaineBenes, farandula(jerrySeinfeld, kennyBania)).


publica(elaineBenes, farandula).
articulo(elaineBenes, noticia("el dolar bajo", 150, farandula)).
personajeDeNoticia(elaineBenes, farandula(jerrySeinfeld, newman)).


publica(bobSacamano, deportista).
articulo(bobSacamano, noticia("no consigue ganar una carrera", 10, deporte)).
personajeDeNoticia(bobSacamano, deportista(davidPuddy, 0)).


publica(bobSacamano, politico).
articulo(bobSacamano, noticia("cosmo kramer encabeza las elecciones", 155, politica)).
personajeDeNoticia(bobSacamano, politico(cosmoKramer, amigosDelPoder)).

articulo(georgeCostanza, noticia(_, Visitas, Tipo)

%todas las noticias de farándula las transforma en noticias de política involucrando al famoso como político perteneciente al partido amigos del poder, pero como la noticia es puro chamuyo obtiene la mitad de las visitas que la original.

publica(georgeCostanza, politico) :-
    publica(_, farandula).
