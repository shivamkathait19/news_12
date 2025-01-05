 //https://newsapi.org/v2/top-headlines/sources?apiKey=f85d16b212f7435a8af5c17f6119453e
import 'dart:convert';
import 'dart:math';
import 'package:http/http.dart';
class FetchNews {
  static List sources = [
    "abc-news",

    "bbc-news",
    "bbc-sport",

    "business-insider",

    "engadget",
    "entertainment-weekly",
    "espn",
    "espn-cric-info",
    "financial-post",

    "fox-news",
    "fox-sports",
    "globo",
    "google-news",
    "google-news-in",

    "medical-news-today",

    "national-geographic",

    "news24",
    "new-scientist",

    "new-york-magazine",
    "next-big-future",

    "techcrunch",
    "techradar",

    "the-hindu",

    "the-wall-street-journal",

    "the-washington-times",
    "time",
    "usa-today",
  ];
  static fetchNews() async{
    final _random = new Random();
    var element = sources[_random.nextInt(sources.length)];

print(element);

   Response response = await get(Uri.parse(" https://newsapi.org/v2/top-headlines/sources?apiKey=f85d16b212f7435a8af5c17f6119453e"
       ));
Map body_data = jsonDecode(response.body);
print(body_data);
  }
 }
