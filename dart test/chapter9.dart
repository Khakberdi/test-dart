//  ### Глава 9: Работа с HTTP (интернет-запросы)

import 'dart:io';

void main() async{ 
  //  1. Сделать простой HTTP-сервер, который отвечает "Привет, клиент!".
  var server = await HttpServer.bind(InternetAddress.anyIPv6, 8888);
  print("Server has been created");
  await server.forEach((HttpRequest request) {
    final response = request.response;
    response.write("Hi, client!");
  });
  //  1.
}