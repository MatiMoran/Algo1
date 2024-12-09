"""Ejercicios TN. Clase 19/10."""

import random


def comprar_figu(tamanio_album: int) -> int:
    return random.randint(0, tamanio_album-1)


def crear_album_vacio(tamanio_album: int):
    nuevo_album: list[int] = []
    for _ in range(tamanio_album):
        nuevo_album.append(0)
    return nuevo_album


def suma_lista(album: list[float]) -> int:
    suma: int = 0
    for elem in album:
        suma = suma + elem
    return suma

"""
sumaLista [] = 0
sumaLista (x:xs) = sumaLista xs + x

[4,5,6] ->    sumaLista [5,6]  + 4
[5,6] ->    sumaLista [6]  + 5
"""

def cuantas_figus(tamanio_album: int) -> int:
    album: list[int] = crear_album_vacio(tamanio_album)
    contador: int = 0
    while suma_lista(album) < tamanio_album:
        figu = comprar_figu(tamanio_album)
        album[figu] = 1
        contador = contador + 1
    return contador 

mi_lista = [4, 7, 5, 1]
suma_lista(mi_lista)