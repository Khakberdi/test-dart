//  ### Глава 10: Сопоставление шаблонов

void main() {
//  2. Написать функцию, которая принимает список и проверяет, есть ли в нём числа больше 10.
  List<int> number1 = [1, 5, 8, 9];
  List<int> numbers2 = [3, 12, 7, 15];

  print(containsGreaterThanTen(number1));
  print(containsGreaterThanTen(numbers2));
}

bool containsGreaterThanTen(List<int> nors) {
  for (var nor in nors) {
    switch (nor) {
      case > 10:
        return true;
      default:
      continue;
    }
  }
  return false;
}
//  2.
