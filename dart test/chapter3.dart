//  ### Глава 3: Функции


// 1.
int factorial(int n) {
  if (n < 0) {
    throw ArgumentError("the number can't be negative");
  }
  int result = 1;
  for (int i = 1; i <= n; i++) 
  result *= i;
  return result;
}
// 1.

void main() {
  //  1. Написать функцию, которая будет считать факториал числа (например, 5! = 5 × 4 × 3 × 2 × 1 = 120).
  int number = 5;
  print("factorial $number = ${factorial(number)}");
  // 1.

  //  2. Сделать функцию, которая принимает два числа и возвращает их произведение (например, 2 * 3 = 6).
  var a = 2;
  var b = 2;
  var result = a;
  for(var i = 1; i < b; i++) {
    result = result * a;
  }
  print(result);
  // 2.

  // 3. Создать функцию внутри другой функции, которая считает количество слов в предложении.
  String sentence = "I will cross the Badwater 135";
  print("the quantini of words: ${countLetters(sentence)}");
  // 3.
}

// 3.
int countLetters(String sentence) {
  List<String> letters = sentence.trim().split(RegExp(r'\s+'));
  if (letters.length == 1 && letters[0] == '') {
    return 0;
  }
  return letters.length;
}
// 3.