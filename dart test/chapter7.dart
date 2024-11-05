//  ### Глава 7: Асинхронность

//  1. Написать функцию, которая просто ждёт пару секунд и потом выводит сообщение. Использовать async и await.
import 'dart:math';

void main() async {

  //  1.
  makeCoffee(1);
  //  1.

  //  2.
  final stream = messageStream().asBroadcastStream();
  final sub1 = stream.listen((value) => print(value));
  final sub2 = stream.listen((value) => print(value));

  stream.last.then((_){
    sub1.cancel();
    sub2.cancel();
  });
  //  2.
}
//  1.
Future<void> makeCoffee(int number) async {
  print("making coffee $number...");
  await Future.delayed(Duration(seconds: 3));
  print("made $number coffee!");
}

//  1.

//  2. Реализовать программу, которая выполняет несколько задач одновременно (например, считывание данных из файла и их вывод).
Stream<String> messageStream() async* {
  final id = Random().nextInt(1000);
  print("channel $id created");
  yield "Hi!";
  await Future.delayed(Duration(seconds: 1));
  yield "How are you?";
  await Future.delayed(Duration(seconds: 1));
  yield "What are you doing?";
}
//  2.