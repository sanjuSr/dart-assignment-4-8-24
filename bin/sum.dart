import 'dart:io';


int Digitssum(int n) {
  int sum = 0;
  while (n != 0) {
    sum += n % 10;
    n ~/= 10; 
  }
  return sum;
}

void main() {
  print("Enter the numbers");
  int number = int.parse(stdin.readLineSync()!); 
  print('The sum of $num is ${Digitssum(number)}');
}