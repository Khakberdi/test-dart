//  ### Глава 10: Сопоставление шаблонов

void main() {
  //  1. Создать функцию, которая проверяет список чисел и определяет, какие из них чётные, а какие нечётные.
  List<int> numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  Map<String, List<int>> result = separateEvenOdd(numbers);

  print("Even numbers: ${result["even"]}");
  print("Odd numbers ${result["odd"]}");
}

Map<String, List<int>> separateEvenOdd(List<int> numbers) {
  List<int> evenNumbers = [];
  List<int> oddNumbers = [];

  for (int number in numbers) {
    switch (number % 2) {
      case 0:
        evenNumbers.add(number);
      case 1:
        oddNumbers.add(number);
    }
  }
  return {
    "even": evenNumbers,
    "odd": oddNumbers,
  };
  //  1.
}