import 'dart:io';

void main() {
  print('How many numbers?');
  int n = int.parse(stdin.readLineSync()!);

  List<int> numbers = [];

  for (int i = 1; i <= n; i++) {
    print('Enter number:');
    int number = int.parse(stdin.readLineSync()!);
    numbers.add(number);
  }

  reverseArray(numbers);
}

void reverseArray(List<int> numbers) {
  for (int i = numbers.length - 1; i >= 0; i--) {
    stdout.write('${numbers[i]} ');
  }

  print('');
}