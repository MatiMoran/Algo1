from typing import List
from typing import Tuple

# Aclaración: Debido a la versión de Python del CMS, para el tipo Lista y Tupla, la sintaxis de la definición de tipos que deben usar es la siguiente:
# l: List[int]  <--Este es un ejemplo para una lista de enteros.
# t: Tuple[str,str]  <--Este es un ejemplo para una tupla de strings.
# Respetar esta sintaxis, ya que el CMS dirá que no pasó ningún test si usan otra notación.
def sePuedeLlegar(origen: str, destino: str, vuelos: List[Tuple[str, str]]) -> int :

  SiguienteDestino: str = destino
  DestinoActual: str = destino
  res: int = 0

  while SiguienteDestino != origen:
    
    IndiceVueloActual = obtenerVueloConDestino(SiguienteDestino, vuelos)
    if IndiceVueloActual == -1:
      return IndiceVueloActual

    SiguienteDestino = vuelos[IndiceVueloActual][0]
    DestinoActual = vuelos[IndiceVueloActual][1]
    res = res + 1

    if DestinoActual == destino and res > 1:
      return -1

  return res

def obtenerVueloConDestino(destino: str, vuelos: List[Tuple[str, str]]) -> int :
  res: int = -1
  for i in range(len(vuelos)):
    if (vuelos[i][1] == destino):
      res = i
  return res

if __name__ == '__main__':
  origen = input()
  destino = input()
  vuelos = input()
  print(sePuedeLlegar(origen, destino, [tuple(vuelo.split(',')) for vuelo in vuelos.split()]))


# testCases = [
#   ('A', 'C', [('A','B'),('B','C')], 2),
#   ('A', 'B', [('A','B'),('B','A')], 1),
#   ('A', 'B', [], -1),
#   ('A', 'B', [('A','B')], 1),
#   ('A', 'C', [('A','B')], -1),
#   ('A', 'D', [('A','B'),('B','C')], -1),
#   ('A', 'D', [('A','B'),('B','C'),('C','D')], 3),
#   ('A', 'D', [('A','B'),('B','C'),('C','D'),('D','E')], 3),
#   ('A', 'D', [('A','B'),('B','C'),('C','D'),('D','E'),('E','A')], 3),
#   ('A', 'B', [('A','B'),('B','C'),('C','D'),('D','E')], 1),
#   ('A', 'B', [('A','B'),('B','C'),('C','D'),('D','E')], 1),
#   ('A', 'Z', [('A','B'),('B','C'),('C','D'),('D','E')], -1),
#   ('M', 'A', [('A','B'),('B','C'),('C','D'),('D','E')], -1),
#   ('E', 'D', [('A','B'),('B','C'),('C','D'),('D','E')], -1),
#   ('A', 'C', [('B','C'),('A','B')], 2),
#   ('A', 'D', [('A','B'),('C','D'),('B','C')], 3),
#   ('A', 'B', [('B','A')], -1),
#   ('A', 'C', [('B','D'),('A','C'),('C','A'),('D','B'),('F','G')], 1),
#   ('B', 'D', [('B','D'),('A','C'),('C','A'),('D','B'),('F','G')], 1),
#   ('A', 'F', [('B','D'),('A','C'),('C','F'),('D','B'),('F','G')], 2),
#   ('A', 'G', [('B','D'),('A','C'),('C','F'),('D','B'),('F','G')], 3),
#   ('A', 'B', [('B','D'),('A','C'),('C','F'),('D','B'),('F','A')], -1),
# ]

# for i in range(len(testCases)):
#   if sePuedeLlegar(testCases[i][0], testCases[i][1], testCases[i][2]) != testCases[i][3]:
#     print(f"{i} error")
#   else:
#     print(f"{i} ok")