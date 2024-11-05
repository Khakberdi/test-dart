import 'dart:io';
 
void main() async {
  var server = await HttpServer.bind(InternetAddress.anyIPv6, 8888);
  print("Сервер запущен...");
  await server.forEach((HttpRequest request) {
 
    var response = request.response;
    response.write(DateTime.now());
    response.close(); 
  });
}