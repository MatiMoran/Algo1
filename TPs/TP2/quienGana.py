import sys

def quienGana(j1: str, j2: str) -> str :

  res: str = "Empate"

  if j1 == j2:
    res = "Empate"
  elif (j1 == "Piedra" and j2 == "Tijera") or (j1 == "Papel" and j2 == "Piedra") or (j1 == "Tijera" and j2 == "Papel"):
    res = "Jugador1"
  else :
    res = "Jugador2"
  
  return res

if __name__ == '__main__':
  x = input()
  jug = str.split(x)
  print(quienGana(jug[0], jug[1]))


# testCases = [
#   ("Piedra Piedra", "Empate"),
#   ("Piedra Papel", "Jugador2"),
#   ("Piedra Tijera", "Jugador1"),
#   ("Papel Piedra", "Jugador1"),
#   ("Papel Papel", "Empate"),
#   ("Papel Tijera", "Jugador2"),
#   ("Tijera Piedra", "Jugador2"),
#   ("Tijera Papel", "Jugador1"),
#   ("Tijera Tijera", "Empate")
# ]

# for i in range(len(testCases)):
#   jug = str.split(testCases[i][0])
#   if quienGana(jug[0], jug[1]) != testCases[i][1]:
#     print(f"{i} error")