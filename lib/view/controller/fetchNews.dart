// https://newsapi.org/v2/top-headlines?sources=google-news-in&apiKey=16b60d1fd0b64653a3a5f944f21e98a8
import 'dart:convert';
import 'dart:math';

import 'package:f12_news_app/view/model/news_art.dart';
import 'package:http/http.dart';

class FetchNews {
  static List sourcesId = [
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

  static Future<NewsArt> fetchNews() async {
    final random = Random();
    var sourceId = sourcesId[random.nextInt(sourcesId.length)];
    print(sourceId);
    Response response = await get(Uri.parse(
        "https://newsapi.org/v2/top-headlines?sources=$sourceId&apiKey=16b60d1fd0b64653a3a5f944f21e98a8"));

    Map bodyData = jsonDecode(response.body);
    List articles = bodyData["articles"];
    // Ensure articles list is not empty before accessing it
    if (articles.isEmpty) {
      throw Exception("No articles found");
    }

    print("***********************************************");

    final articleRandom = Random();
    var myArticle = articles[articleRandom.nextInt(articles.length)];
    print(myArticle);
    print("***********************************************");

    return NewsArt.fromAPItoApp(myArticle);
  }
}
