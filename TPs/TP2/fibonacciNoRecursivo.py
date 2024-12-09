import sys

def fibonacciNoRecursivo(n: int) -> int:

  res: int = 0

  if n == 0:
    res = 0
    return res
  
  if n == 1:
    res = 1
    return res
  
  prev_2: int = 0
  prev_1: int = 1

  for _ in range(1, n):
    res = prev_2 + prev_1
    prev_2 = prev_1
    prev_1 = res
    
  return res


if __name__ == '__main__':
  x = int(input())
  print(fibonacciNoRecursivo(x))

# testCases = [
#   ("0", "0"),
#   ("1", "1"),
#   ("2", "1"),
#   ("3", "2"),
#   ("4", "3"),
#   ("5", "5"),
#   ("6", "8"),
# ]

# for i in range(len(testCases)):
#   if fibonacciNoRecursivo(int(testCases[i][0])) != int(testCases[i][1]):
#     print(f"{i} error")