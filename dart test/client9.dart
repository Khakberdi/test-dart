import 'dart:io';
import 'dart:convert';
 
void main() async {
  var client = HttpClient();
  try {
    HttpClientRequest request = await client.get("localhost", 8888, "/");
    HttpClientResponse response = await request.close();
    final stringData = await response.transform(utf8.decoder).join();
    print(stringData);
  } finally {
    client.close();
  }
}