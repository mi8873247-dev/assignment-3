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

  print('Enter target value:');
  int target = int.parse(stdin.readLineSync()!);

  containsValue(numbers, target);
}

void containsValue(List<int> numbers, int target) {
  bool found = false;

  for (int number in numbers) {
    if (number == target) {
      found = true;
      break;
    }
  }

  if (found) {
    print('Yes');
  } else {
    print('No');
  }
}