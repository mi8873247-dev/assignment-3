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

  countGeneral(numbers);
}

void countGeneral(List<int> numbers) {
  Map<int, int> counts = {};

  for (int number in numbers) {
    if (counts.containsKey(number)) {
      counts[number] = counts[number]! + 1;
    } else {
      counts[number] = 1;
    }
  }

  for (int number in counts.keys) {
    print('$number->${counts[number]}');
  }
}