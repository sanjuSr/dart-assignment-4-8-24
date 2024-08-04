import 'dart:io';

void generatePermutations(String s) {
  _permute(s.split(''), 0, s.length - 1);
}

void _permute(List<String> s, int left, int right) {
  if (left == right) {
    print(s.join(''));
  } else {
    for (int i = left; i <= right; i++) {
      _swap(s, left, i);
      _permute(s, left + 1, right);
      _swap(s, left, i); 
    }
  }
}

void _swap(List<String> s, int i, int j) {
  String temp = s[i];
  s[i] = s[j];
  s[j] = temp;
}

void main() {
  print('Enter a string:');
  String input = stdin.readLineSync()!;
  generatePermutations(input);
}
