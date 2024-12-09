from typing import List

# Aclaración: Debido a la versión de Python del CMS, para el tipo Lista, la sintaxis de la definición de tipos que deben usar es la siguiente:
# l: List[int]  <--Este es un ejemplo para una lista de enteros.
# Respetar esta sintaxis, ya que el CMS dirá que no pasó ningún test si usan otra notación.
def filasParecidas(matriz: List[List[int]]) -> bool :
  
  diferencia: int = -1

  for i in range(1, len(matriz)):
    filaAnterior: List[int] = matriz[i-1]
    filaActual: List[int] = matriz[i]

    if diferencia == -1:
      diferencia = filaActual[0] - filaAnterior[0]

    for j in range(len(filaActual)):
      if filaActual[j] != filaAnterior[j] + diferencia:
        return False
      
  return True


if __name__ == '__main__':
  filas = int(input())
  columnas = int(input())
 
  matriz = []
 
  for i in range(filas):         
    fila = input()
    if len(fila.split()) != columnas:
      print("Fila " + str(i) + " no contiene la cantidad adecuada de columnas")
    matriz.append([int(j) for j in fila.split()])
  
  print(filasParecidas(matriz))


# testCases = [
#   ([[1]], True),
#   ([[1,2,3]], True),
#   ([[1],[2]], True),
#   ([[1],[2],[3]], True),
#   ([[1],[2],[4]], False),
#   ([[1,1],[2,2],[3,3]], True),
#   ([[1,1],[3,3],[5,5]], True),
#   ([[1,2,3],[2,3,4],[3,4,5]], True),
#   ([[1,2,3],[2,3,4],[3,4,6]], False),
#   ([[0,-2,-4],[2,0,-2],[4,2,0]], True),
#   ([[0,0,0],[0,0,0],[0,0,0]], True),
#   ([[1,2,3],[1,2,3],[1,2,3]], True),
#   ([[1,2,3],[1,2,3],[0,0,0]], False),
# ]

# for i in range(len(testCases)):
#   if filasParecidas(testCases[i][0]) != testCases[i][1]:
#     print(f"{i} error")