from typing import List
from typing import Dict
import json

def unir_diccionarios(a_unir: List[Dict[str,List[str]]]) -> Dict[str, List[str]]:
    diccionario: Dict[str, List[str]] = {}
    dic : Dict[str,List[str]] = {}
    key: str
    value: List[str]
    
    for dic in a_unir:
        for key, value in dic.items():
            if key not in diccionario:
                diccionario[key] = [value]
            else:
                diccionario[key].append(value)
    return diccionario

if __name__ == '__main__':
  x = json.loads(input()) # Ejemplo de input: [{"a":"2"},{"b":"3","a":"1"}]
  print(unir_diccionarios(x))