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

  print(selectionSort(numbers));
}

List<int> selectionSort(List<int> numbers) {
  for (int i = 0; i < numbers.length - 1; i++) {
    int minIndex = i;

    for (int j = i + 1; j < numbers.length; j++) {
      if (numbers[j] < numbers[minIndex]) {
        minIndex = j;
      }
    }

    int temp = numbers[i];
    numbers[i] = numbers[minIndex];
    numbers[minIndex] = temp;
  }

  return numbers;
}