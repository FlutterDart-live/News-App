import 'package:f12_news_app/view/controller/fetchNews.dart';
import 'package:f12_news_app/view/model/news_art.dart';
import 'package:f12_news_app/view/widgets/news_container.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isLoading = true;

  NewsArt? newsArt;

  GetNews() async {
    newsArt = await FetchNews.fetchNews();
    setState(() {
      isLoading = false;
    });
  }

  @override
  void initState() {
    GetNews();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
          controller: PageController(initialPage: 0),
          scrollDirection: Axis.vertical,
          onPageChanged: (value) {
            setState(() {
              isLoading = true;
            });
            GetNews();
          },
          itemBuilder: (context, index) {
            return isLoading
                ? Center(
                    child: CircularProgressIndicator(),
                  )
                : NewsContainer(
                    imgUrl: newsArt!.imgUrl,
                    newsHead: newsArt!.newsHead,
                    newsCnt: newsArt!.newsCnt,
                    newsDesl: newsArt!.newsDesl,
                    newsUrl: newsArt!.newsUrl,
                  );
          }),
    );
  }
}
