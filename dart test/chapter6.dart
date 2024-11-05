//  ### Глава 6: Обработка ошибок

//  1.
num divide(num a, num b){
  if (b == 0) {
    throw Exception("you can't divide by zero");
  }
  return a / b;
}
//  1.

void main() {
  //  1. Написать программу, которая пытается делить число на ноль и выводит сообщение об ошибке, когда это происходит.
  try {
    print(divide(10, 0));
    print("all good");
  } on Exception catch (e) {
    print("mistake\n" + e.toString());
  } on Error catch (e) {
    print("wth is that?\n" + e.toString());
  } finally {
    print("finished function");
  }
//  1.

//  2.
  temperatureConverter converter = temperatureConverter();

  try {
    double tempInF = converter.celsiusToFahrenheit(-300);
    print("temperature in fahrenheit: $tempInF");
  } catch (e) {
    print("mistake: $e");
  }

  try {
    double tempInC = converter.fahrenheitToCelsius(32);
    print("temperature in celsius: $tempInC");
  } catch (e) {
    print("mistake: $e");
  }
}
//  2.

//  2. Создать собственный класс ошибки, который выводит сообщение, когда программа сталкивается с негативным числом.
class temperatureConverter {
  double celsiusToFahrenheit(double celsius){
    if (celsius < -273.15) {
      throw ArgumentError("the temperature can't be below -273.15 *C");
    }
    return celsius * 9 / 5 + 32;
  }
  double fahrenheitToCelsius(double fahrenheit){
    if (fahrenheit < -459.67) {
      throw ArgumentError("the temperature can't be below -459.67 *F");
    }
    return (fahrenheit - 32) * 5 / 9;
  }
}
//  2.