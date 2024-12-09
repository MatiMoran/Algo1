from typing import List

# Aclaración: Debido a la versión de Python del CMS, para el tipo Lista, la sintaxis de la definición de tipos que deben usar es la siguiente:
# l: List[int]  <--Este es un ejemplo para una lista de enteros.
# Respetar esta sintaxis, ya que el CMS dirá que no pasó ningún test si usan otra notación.
def mesetaMasLarga(l: List[int]) -> int :
  res: int = 0
  if len(l) == 0:
    return res
  
  max_length: int = 1
  current_length: int = 1

  for i in range(1, len(l)):
    if l[i] == l[i - 1]:
        current_length += 1
    else:
      max_length = maximo(max_length, current_length)
      current_length = 1

  res = maximo(max_length, current_length)
  return res

def maximo(a: int, b: int) -> int :
  res: int = b
  if a > b:
    res = a
  return res

if __name__ == '__main__':
  x = input()
  print(mesetaMasLarga([int(j) for j in x.split()]))


# testCases = [
#   ("", 0),
#   ("1", 1),
#   ("1 1", 2),
#   ("1 1 2", 2),
#   ("1 1 2 2", 2),
#   ("1 1 2 2 2", 3),
#   ("1 1 2 2 2 1", 3),
#   ("1 2 3 4 5", 1),
#   ("1 2 3 4 4 5", 2),
#   ("1 2 3 4 5 1 1 1 1", 4),
#   ("1 2 1 2 1 2 1 2 1", 1),
# ]

# for i in range(len(testCases)):
#   if mesetaMasLarga([int(j) for j in testCases[i][0].split()]) != testCases[i][1]:
#     print(f"{i} error")