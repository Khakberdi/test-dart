//  ### Глава 8: Работа с файлами

import 'dart:convert';
import 'dart:io';

void main() async{
  //  1. Создать и удалить папку с помощью программы.
  var file = await File("index.py").create();
  var deleteFile = await file.delete();
  print("${file} has created and then deleted ${deleteFile}");
  //  1.

  //  2. Написать текст в файл, а потом считать этот текст и вывести его на экран.
  String text = "bakyhazyna";
  File a = File("index.txt");
  await a.writeAsString(text);
  print("File has been created");
  //  2.

  //  3. Сохранить список людей в файл формата JSON и потом загрузить их обратно в программу.
  List<String> friends = ["Mergen", "Rahymberdi", "Emir"];
  String jsonString = jsonEncode(friends);
  File myFile = File("friendsList.json");
  await myFile.writeAsString(jsonString);
  print("file has been created");
  //  3.
}