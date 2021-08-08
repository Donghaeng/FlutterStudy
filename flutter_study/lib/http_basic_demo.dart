// ignore: import_of_legacy_library_into_null_safe
import 'package:http/http.dart' as https;

void main() async{
  String url = 'https://jsonplaceholder.typicode.com/todos/1';
  var response = await https.get(url);
  print('status = ${response.statusCode}');
  print('response = ${response.body}');
}