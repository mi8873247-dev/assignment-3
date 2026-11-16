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

  print(calculateEven(numbers));
}

int calculateEven(List<int> numbers) {
  int sum = 0;

  for (int number in numbers) {
    if (number % 2 == 0) {
      sum += number;
    }
  }

  return sum;
}