//  ### Глава 5: Коллекции (списки, множества, карты)
void main() {
  //  1. Создать список чисел и посчитать их сумму.
  List<int> numbers = [1, 2, 3];
  int sum = 0;

  for (int number in numbers) {
    sum += number;
  }
  print("sum of numbers are: $sum");
  //  1. Это был метод с использованием цикла.

  //  2. Создать набор (Set) с именами друзей, чтобы имена не повторялись.
  Set<String> friends = {"Mergen", "Rahymberdi", "Emir"};
  print(friends);
  //  2.

  //  3. Создать словарь (Map), где хранятся имена и возраст нескольких людей, и вывести их на экран.
  Map celebrities = {
    "Ilia Topuria": 28,
    "David Goggins": 49,
    "Robert Lewandowski": 36,
  };
  print(celebrities);
  //  3.
}
