from queue import Queue
from typing import List
from typing import Dict
from typing import Union
import json

# ACLARACIÓN: El tipo de "pedidos" debería ser: pedidos: Queue[Dict[str, Union[int, str, Dict[str, int]]]]
# Por no ser soportado por la versión de CMS, usamos simplemente "pedidos: Queue"
def procesamiento_pedidos(pedidos: Queue,
                          stock_productos: Dict[str, int],
                          precios_productos: Dict[str, float]) -> List[Dict[str, Union[int, str, float, Dict[str, int]]]]:
  
  res :List[Dict[str, Union[int, str, float, Dict[str, int]]]] = []

  while not pedidos.empty():
      pedido :Dict[str, Union[int, str, Dict[str, int]]] = pedidos.get()
      id_pedido :int = pedido['id']
      cliente :str = pedido['cliente']
      productos :Dict[str, int] = pedido['productos']
      precio_total :float = 0
      estado :str = 'completo'

      for producto in productos:
          if stock_productos[producto] < productos[producto]:
              estado = 'incompleto'
              precio_total += precios_productos[producto] * stock_productos[producto]
              productos[producto] = stock_productos[producto]
              stock_productos[producto] = 0
          else:
            precio_total += precios_productos[producto] * productos[producto]
            stock_productos[producto] -= productos[producto]

      res.append({'id': id_pedido, 'cliente': cliente, 'productos': productos, 'precio_total': precio_total, 'estado': estado})
  
  return res


if __name__ == '__main__':
  pedidos: Queue = Queue()
  list_pedidos = json.loads(input())
  [pedidos.put(p) for p in list_pedidos]
  stock_productos = json.loads(input())
  precios_productos = json.loads(input())
  print("{} {}".format(procesamiento_pedidos(pedidos, stock_productos, precios_productos), stock_productos))

# Ejemplo input  
# pedidos: [{"id":21,"cliente":"Gabriela", "productos":{"Manzana":2}}, {"id":1,"cliente":"Juan","productos":{"Manzana":2,"Pan":4,"Factura":6}}]
# stock_productos: {"Manzana":10, "Leche":5, "Pan":3, "Factura":0}
# precios_productos: {"Manzana":3.5, "Leche":5.5, "Pan":3.5, "Factura":5}

# pedidos: Queue = Queue()
# list_pedidos = [{"id":21,"cliente":"Gabriela", "productos":{"Manzana":2}}, {"id":1,"cliente":"Juan","productos":{"Manzana":2,"Pan":4,"Factura":6}}, {"id":3, "cliente":"A", "productos":{}}]
# [pedidos.put(p) for p in list_pedidos]
# stock_productos = {"Manzana":4, "Leche":0, "Pan":0, "Factura":0}
# precios_productos = {"Manzana":3.5, "Leche":5.5, "Pan":3.5, "Factura":5}
# print("{} {}".format(procesamiento_pedidos(pedidos, stock_productos, precios_productos), stock_productos))