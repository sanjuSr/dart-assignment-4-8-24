import 'dart:io';

int fib(int n) {
  if (n <= 0){
    return 0;
  }  
  if (n == 1){
    return 1; 
  } 

  int x = 0;
  int y = 1;
  int z = 0;

  for (int i = 2; i <= n; i++) {
    z = x + y;
    x = y;
    y = z;
  }

  return z;
}

void main() {
  print('Enter the n number:');
  int n = int.parse(stdin.readLineSync()!); 
  print("The $n-th number is ${fib(n)}");
}
