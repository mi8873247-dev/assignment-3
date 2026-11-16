import 'dart:io';

void main() {
  print('How many scores?');
  int n = int.parse(stdin.readLineSync()!);

  List<int> scores = [];

  for (int i = 1; i <= n; i++) {
    print('Enter score:');
    int score = int.parse(stdin.readLineSync()!);
    scores.add(score);
  }

  analyzeScores(scores);
}

void analyzeScores(List<int> scores) {
  double sum = 0;

  for (int score in scores) {
    sum += score;
  }

  double average = sum / scores.length;

  int above = 0;
  int below = 0;
  int equal = 0;

  for (int score in scores) {
    if (score > average) {
      above++;
    } else if (score < average) {
      below++;
    } else {
      equal++;
    }
  }

  print('Above average: $above');
  print('Below average: $below');
  print('Equal average: $equal');
}