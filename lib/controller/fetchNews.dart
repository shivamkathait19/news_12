// https://newsapi.org/v2/top-headlines/sources?apiKey=f85d16b212f7435a8af5c17f6119453e
import 'dart:convert';
import 'package:http/http.dart';
class FetchNews {
  static fetchNews() async{
   Response response = await get(Uri.parse("// https://newsapi.org/v2/top-headlines/sources?apiKey=f85d16b212f7435a8af5c17f6119453e"
       ));
Map body_data = jsonDecode(response.body);
print(body_data);
  }
 }