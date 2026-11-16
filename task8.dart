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

  getDistinctNumbers(numbers);
}

void getDistinctNumbers(List<int> numbers) {
  List<int> distinctNumbers = [];

  for (int number in numbers) {
    if (!distinctNumbers.contains(number)) {
      distinctNumbers.add(number);
    }
  }

  print('The number of distinct numbers is ${distinctNumbers.length}');
  print('The distinct numbers are: ${distinctNumbers.join(' ')}');
}