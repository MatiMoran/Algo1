from queue import Queue

# El tipo de fila debería ser Queue[int], pero la versión de python del CMS no lo soporta. Usaremos en su lugar simplemente "Queue"
def avanzarFila(fila: Queue, min: int):
  siguiente_numero :int = fila.qsize() + 1
  # caja1_disponible :bool = True
  # caja2_disponible :bool = True
  # caja3_disponible :bool = True
  # caja1_disponible_en : int = 0
  # caja2_disponible_en : int = 0
  # caja3_disponible_en : int = 0
  reinsertar_numero :int = 0
  tiempo_de_reinsertar :int = 0

  for minuto in range(0, min + 1):
      if (minuto % 4 == 0):
        fila.put(siguiente_numero)
        siguiente_numero += 1

      if (minuto == tiempo_de_reinsertar and reinsertar_numero != 0):
        fila.put(reinsertar_numero)
        reinsertar_numero = 0

      if (not fila.empty() and minuto % 10 == 1):
        fila.get()
      if (not fila.empty() and minuto % 4 == 3):
        fila.get()

      if (not fila.empty() and minuto % 4 == 2):
        reinsertar_numero = fila.get()
        tiempo_de_reinsertar = minuto + 3

      # if (minuto == caja1_disponible_en):
      #   caja1_disponible = True
      # if (minuto == caja2_disponible_en):
      #   caja2_disponible = True
      # if (minuto == caja3_disponible_en):
      #   caja3_disponible = True

      # if (not fila.empty() and caja1_disponible and minuto >= 1):
      #   caja1_disponible = False
      #   fila.get()
      #   caja1_disponible_en = minuto + 10

      # if (not fila.empty() and caja2_disponible and minuto >= 3):
      #   caja2_disponible = False
      #   fila.get()
      #   caja2_disponible_en = minuto + 40

      # if (not fila.empty() and caja3_disponible and  minuto >= 2):
      #   caja3_disponible = False
      #   reinsertar_numero = fila.get()
      #   tiempo_de_reinsertar = minuto + 3
      #   caja3_disponible_en = minuto + 4

  return fila

if __name__ == '__main__':
  fila: Queue = Queue()
  fila_inicial: int = int(input())
  for numero in range(1, fila_inicial+1):
    fila.put(numero)
  min: int = int(input())
  avanzarFila(fila, min)
  res = []
  for i in range(0, fila.qsize()):
    res.append(fila.get())
  print(res)


# Caja1: Empieza a atender 10:01, y atiende a una persona cada 10 minutos
# Caja2: Empieza a atender 10:03, atiende a una persona cada 4 minutos
# Caja3: Empieza a atender 10:02, y atiende una persona cada 4 minutos, pero no le resuelve el problema y la persona debe volver a la fila (se va al final y tarda 3 min en llegar. Es decir, la persona que fue atendida 10:02 vuelve a entrar a la fila a las 10:05)
# La fila empieza con las n personas que llegaron antes de que abra el banco. Cuando abre (a las 10), cada 4 minutos llega una nueva persona a la fila (la primera entra a las 10:00)

