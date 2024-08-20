/*
Un grupo de periodistas quiere armar su diario NotiLogic, entonces nos piden modelar en prolog una solución 
para administrar sus noticias. Para comenzar sabemos que las noticias tienen un autor, un artículo y una 
cantidad de visitas. 

Los artículos generalmente son escritos por los autores aunque vamos a ver que no siempre ocurre lo mismo. 
Todos los artículos tienen un título y un personaje involucrado en la noticia. Los personajes pueden ser 
deportistas de los cuales sabemos la cantidad de títulos ganados, de farándula en cuyo caso conocemos con 
qué personaje está peleando o políticos de quien conocemos el partido político al que pertenece. 


Bob Sacamano, un poco más modesto tiene una noticia de 10 visitas para su artículo 
titulado “No consigue ganar ni una carrera”, castigando al pobre David Puddy que 
tiene cero títulos ganados.

tiene(bob_sacamano, noticia("no consigue ganar una carrera", 10, deporte)).
personaje(bob_sacamano, deportista(david_puddy, 0)).

Bob Sacamano también tiene una gran publicación de 155 visitas donde en su artículo 
destaca al político “Cosmo Kramer encabeza las elecciones” perteneciente al partido 
los amigos del poder.

tiene(bob_sacamano, noticia("cosmo kramer encabeza las elecciones", 155, politica)).
personaje(bob_sacamano, politico(cosmo_kramer, amigos_del_poder)).


George Costanza, un personaje muy audaz, roba las noticias de Bob Sacamano obteniendo 
la misma cantidad de visitas y todas las noticias de farándula las transforma en noticias 
de política involucrando al famoso como político perteneciente al partido amigos del poder,
pero como la noticia es puro chamuyo obtiene la mitad de las visitas que la original.

Por ejemplo, para el caso de la noticia "Primicia" de Elaine Benes, George Constanza obtendría 
8 visitas, porque se trata de un artículo de alguien de la farándula. En el caso de "No consigue 
ganar una carrera" de Bob Sacamano, tendría 10 visitas como la historia original.

tiene(george_costanza, noticia(Titulo, Visitas, Tipo)) :-
    tiene(_, noticia(Titulo, Visitas, farandula)),
    Visitas is Visitas / 2.


Modelar en la base de conocimiento los requerimientos anteriormente descritos. 
En caso de no ser necesario hacer nada, explique qué concepto teórico está 
relacionado y justifique su respuesta.
*/




