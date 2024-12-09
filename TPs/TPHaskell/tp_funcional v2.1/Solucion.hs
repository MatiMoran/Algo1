module Solucion where

-- Completar con los datos del grupo
--
-- Nombre de Grupo: GrupoMatiasMoran
-- Integrante 1: Matias Moran, matiec52000@hotmail.com, 806/19

type Usuario = (Integer, String) -- (id, nombre)
type Relacion = (Usuario, Usuario) -- usuarios que se relacionan
type Publicacion = (Usuario, String, [Usuario]) -- (usuario que publica, texto publicacion, likes)
type RedSocial = ([Usuario], [Relacion], [Publicacion])

-- Funciones basicas
usuarios :: RedSocial -> [Usuario]
usuarios (us, _, _) = us

relaciones :: RedSocial -> [Relacion]
relaciones (_, rs, _) = rs

publicaciones :: RedSocial -> [Publicacion]
publicaciones (_, _, ps) = ps

idDeUsuario :: Usuario -> Integer
idDeUsuario (id, _) = id 

nombreDeUsuario :: Usuario -> String
nombreDeUsuario (_, nombre) = nombre 

usuarioDePublicacion :: Publicacion -> Usuario
usuarioDePublicacion (u, _, _) = u

likesDePublicacion :: Publicacion -> [Usuario]
likesDePublicacion (_, _, us) = us

-- Ejercicios

-- Ejercicio 1
-- De una lista de Usuarios devuelve una lista con los nombres de esos Usuarios.
nombresDeUsuario :: [Usuario] -> [String]
nombresDeUsuario [] = []
nombresDeUsuario (u:us) = nombreDeUsuario u : nombresDeUsuario us

-- Devuelve una lista con los nombres de todos los Usuarios en una RedSocial.
nombresDeUsuarios :: RedSocial -> [String]
nombresDeUsuarios redSocial = nombresDeUsuario (usuarios redSocial)

-- Ejercicio 2
-- toma una lista de Relaciones y un Usuario y devuelve una lista con los Usuarios que son amigos del Usuario dado.
amigosDeUsuario :: [Relacion] -> Usuario -> [Usuario]
amigosDeUsuario [] _ = []
amigosDeUsuario ((u1,u2):rs) usuario 
    | usuario == u1 = u2 : amigosDeUsuario rs usuario
    | usuario == u2 = u1 : amigosDeUsuario rs usuario
    | otherwise = amigosDeUsuario rs usuario

-- toma una RedSocial y un Usuario y devuelve una lista con los Usuarios que son amigos del Usuario dado en esa RedSocial.
amigosDe :: RedSocial -> Usuario -> [Usuario]
amigosDe redSocial usuario = amigosDeUsuario (relaciones redSocial) usuario

-- Ejercicio 3
-- toma una RedSocial y un Usuario y devuelve la cantidad de amigos que tiene ese Usuario en esa RedSocial.
cantidadDeAmigos :: RedSocial -> Usuario -> Int
cantidadDeAmigos redSocial usuario = length (amigosDe redSocial usuario)

-- Ejercicio 4
-- toma una RedSocial, una lista de Usuarios y un número entero y devuelve el primer Usuario en la lista que tiene esa numero amigos en esa RedSocial.
usuarioConCantidadDeAmigos :: RedSocial -> [Usuario] -> Int -> Usuario
usuarioConCantidadDeAmigos _ [] _ = (-1,"Error")
usuarioConCantidadDeAmigos redSocial (u:us) nAmigos
    | nAmigos == (cantidadDeAmigos redSocial u) = u
    | otherwise = usuarioConCantidadDeAmigos redSocial us nAmigos

-- toma una RedSocial y una lista de Usuarios y devuelve la máxima cantidad de amigos que tiene cualquier Usuario en la lista en esa RedSocial. Si la lista está vacía, devuelve 0.
maximaCantidadDeAmigos :: RedSocial -> [Usuario] -> Int
maximaCantidadDeAmigos _ [] = 0
maximaCantidadDeAmigos redSocial (u:us) = max (cantidadDeAmigos redSocial u) (maximaCantidadDeAmigos redSocial us)

-- La función usuarioConMasAmigos toma una RedSocial y devuelve el Usuario con la mayor cantidad de amigos en esa RedSocial. Si hay varios Usuarios con la misma cantidad máxima de amigos, devuelve el primero que encuentra.
usuarioConMasAmigos :: RedSocial -> Usuario
usuarioConMasAmigos redSocial = usuarioConCantidadDeAmigos redSocial (usuarios redSocial) (maximaCantidadDeAmigos redSocial (usuarios redSocial))

-- Ejercicio 5
-- toma una RedSocial, una lista de Usuarios y un número entero y devuelve un valor booleano que indica si existe algún Usuario en la lista que tiene más de esa cantidad de amigos en esa RedSocial.
existeUsuarioConMasDeNAmigos :: RedSocial -> [Usuario] -> Int -> Bool
existeUsuarioConMasDeNAmigos _ [] _ = False
existeUsuarioConMasDeNAmigos redSocial (u:us) nAmigos
    | (cantidadDeAmigos redSocial u) > nAmigos = True
    | otherwise = existeUsuarioConMasDeNAmigos redSocial us nAmigos

-- toma una RedSocial y devuelve un valor booleano que indica si existe algún Usuario en esa RedSocial que tiene más de 1000000 amigos.
estaRobertoCarlos :: RedSocial -> Bool
estaRobertoCarlos redSocial = existeUsuarioConMasDeNAmigos redSocial (usuarios redSocial) 1000000

-- Ejercicio 6
-- toma una lista de Publicaciones y un Usuario y devuelve una lista con las Publicaciones realizadas por ese Usuario.
publicacionesDeUsuario :: [Publicacion] -> Usuario -> [Publicacion]
publicacionesDeUsuario [] _ = []
publicacionesDeUsuario ((u,t,l):ps) usuario
    | u == usuario = (u,t,l):(publicacionesDeUsuario ps usuario)
    | otherwise = publicacionesDeUsuario ps usuario

-- toma una RedSocial y un Usuario y devuelve una lista con las Publicaciones realizadas por ese Usuario en esa RedSocial.
publicacionesDe :: RedSocial -> Usuario -> [Publicacion]
publicacionesDe redSocial usuario = publicacionesDeUsuario (publicaciones redSocial) usuario

-- Ejercicio 7
-- toma una lista de Publicaciones y un Usuario y devuelve una lista con las Publicaciones que han recibido un "like" de ese Usuario.
publicacionesLikeadasPorUsuario :: [Publicacion] -> Usuario -> [Publicacion]
publicacionesLikeadasPorUsuario [] _ = []
publicacionesLikeadasPorUsuario ((u,t,l):ps) usuario
    | elem usuario l = (u,t,l) : (publicacionesLikeadasPorUsuario ps usuario)
    | otherwise = publicacionesLikeadasPorUsuario ps usuario

-- toma una RedSocial y un Usuario y devuelve una lista con las Publicaciones en esa RedSocial que han recibido un "like" de ese Usuario.
publicacionesQueLeGustanA :: RedSocial -> Usuario -> [Publicacion]
publicacionesQueLeGustanA redSocial usuario = publicacionesLikeadasPorUsuario (publicaciones redSocial) usuario

-- Ejercicio 8
-- toma una Publicación y una lista de Publicaciones y devuelve una nueva lista de Publicaciones que es igual a la lista original pero sin la primera ocurrencia de la Publicación dada.
eliminar :: Publicacion -> [Publicacion] -> [Publicacion]
eliminar _ [] = []
eliminar x (y:ys)
  | x == y = ys
  | otherwise = y : eliminar x ys

-- toma dos listas de Publicaciones y devuelve un valor booleano que indica si una lista es una permutación de la otra.
sonPermutacionesPublicacion :: [Publicacion] -> [Publicacion] -> Bool
sonPermutacionesPublicacion [] _ = True
sonPermutacionesPublicacion (x:xs) ys = elem x ys && sonPermutacionesPublicacion xs (eliminar x ys)

-- toma dos listas de Publicaciones y devuelve un valor booleano que indica si una lista es una permutación de la otra.
sonPermutaciones :: [Publicacion] -> [Publicacion] -> Bool
sonPermutaciones xs ys = length xs == length ys && (sonPermutacionesPublicacion xs ys)

-- toma una RedSocial y dos Usuarios y devuelve un valor booleano que indica si a ambos Usuarios les gustan las mismas Publicaciones en esa RedSocial.
lesGustanLasMismasPublicaciones :: RedSocial -> Usuario -> Usuario -> Bool
lesGustanLasMismasPublicaciones redSocial u1 u2 = sonPermutaciones (publicacionesQueLeGustanA redSocial u1) (publicacionesQueLeGustanA redSocial u2)

-- Ejercicio 9
-- toma dos listas de Usuarios y devuelve una nueva lista de Usuarios que contiene la intersección de ambas listas.
interseccionDeListasDeUsuarios :: [Usuario] -> [Usuario] -> [Usuario]
interseccionDeListasDeUsuarios [] _ = []
interseccionDeListasDeUsuarios (x:xs) ys
    | elem x ys = x : interseccionDeListasDeUsuarios xs ys
    | otherwise = interseccionDeListasDeUsuarios xs ys

-- toma una lista de listas de Usuarios y devuelve una nueva lista de Usuarios que contiene la intersección de todas las listas.
interseccionDeUsuariosDePublicaciones :: [[Usuario]] -> [Usuario]
interseccionDeUsuariosDePublicaciones [] = []
interseccionDeUsuariosDePublicaciones [xs] = xs
interseccionDeUsuariosDePublicaciones (xs:xss) = interseccionDeListasDeUsuarios xs (interseccionDeUsuariosDePublicaciones xss)

-- toma una lista de Publicaciones y devuelve una nueva lista de listas de Usuarios donde cada lista contiene los Usuarios que dieron "like" a cada Publicación en la lista original.
likesDePublicaciones :: [Publicacion] -> [[Usuario]]
likesDePublicaciones [] = []
likesDePublicaciones ((u,t,l):ps) = l:(likesDePublicaciones ps)

-- toma una lista de Usuarios y un Usuario y devuelve una nueva lista de Usuarios que es igual a la lista original pero sin el Usuario dado.
exceptoUnoMismo :: [Usuario] -> Usuario -> [Usuario]
exceptoUnoMismo [] _ = []
exceptoUnoMismo (x:xs) u
    | x == u = exceptoUnoMismo xs u
    | otherwise = x : (exceptoUnoMismo xs u)

-- toma una RedSocial y un Usuario y devuelve una lista con los Usuarios que dieron "like" a todas las Publicaciones realizadas por ese Usuario en esa RedSocial, excepto el propio Usuario.
seguidoresFieles :: RedSocial -> Usuario -> [Usuario]
seguidoresFieles redSocial usuario = exceptoUnoMismo (interseccionDeUsuariosDePublicaciones (likesDePublicaciones (publicacionesDe redSocial usuario))) usuario

-- toma una RedSocial y un Usuario y devuelve un valor booleano que indica si ese Usuario tiene al menos un seguidor fiel en esa RedSocial.
tieneUnSeguidorFiel :: RedSocial -> Usuario -> Bool
tieneUnSeguidorFiel redSocial usuario = length (seguidoresFieles redSocial usuario) > 0

-- Ejercicio 10
-- toma una lista de Relaciones, una lista de Usuarios a visitar, una lista de Usuarios ya visitados y un Usuario destino y devuelve un valor booleano que indica si existe un camino desde algún Usuario en la lista de Usuarios a visitar hasta el Usuario destino en el grafo de relaciones representado por la lista de Relaciones.
existeCaminoDesdeUsuarios :: [Relacion] -> [Usuario] -> [Usuario] -> Usuario -> Bool
existeCaminoDesdeUsuarios _ [] _ _ = False
existeCaminoDesdeUsuarios relaciones (u:us) visitados u2
    | u == u2 = True
    | elem u visitados = existeCaminoDesdeUsuarios relaciones us visitados u2
    | otherwise = existeCaminoDesdeUsuarios relaciones (us ++ amigosDeUsuario relaciones u) (u:visitados) u2

-- toma una lista de Relaciones y dos Usuarios y devuelve un valor booleano que indica si existe un camino desde el primer Usuario hasta el segundo Usuario en el grafo de relaciones representado por la lista de Relaciones.
existeCamino :: [Relacion] -> Usuario -> Usuario -> Bool
existeCamino relaciones u1 u2 = existeCaminoDesdeUsuarios relaciones [u1] [] u2

-- toma una RedSocial y dos Usuarios y devuelve un valor booleano que indica si existe un camino desde el primer Usuario hasta el segundo Usuario en el grafo de relaciones representado por las relaciones en esa RedSocial.
existeSecuenciaDeAmigos :: RedSocial -> Usuario -> Usuario -> Bool
existeSecuenciaDeAmigos redSocial u1 u2 = existeCamino (relaciones redSocial) u1 u2
