import 'package:f12_news_app/view/detail_view.dart';
import 'package:flutter/material.dart';

class NewsContainer extends StatelessWidget {
  String imgUrl;
  String newsHead;
  String newsDesl;
  String newsCnt;
  String newsUrl;

  NewsContainer(
      {super.key,
      required this.imgUrl,
      required this.newsHead,
      required this.newsDesl,
      required this.newsCnt,
      required this.newsUrl});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          FadeInImage.assetNetwork(
              height: 400,
              width: MediaQuery.of(context).size.width,
              fit: BoxFit.cover,
              placeholder: "assets/images/newss.jpg",
              image: imgUrl),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 20,
                ),
                Text(
                  newsHead.length > 90
                      ? "${newsHead.substring(0, 90)}..."
                      : newsHead,
                  style: const TextStyle(
                      fontSize: 26, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  newsDesl,
                  style: const TextStyle(
                    fontSize: 12,
                    color: Colors.black38,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  newsCnt.length > 250
                      ? newsCnt.substring(0, 250)
                      : newsCnt.length > 15
                          ? "${newsCnt.substring(0, newsCnt.length - 15)}..."
                          : newsCnt,
                  style: const TextStyle(
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ),
          const Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              DetailViewScreen(newsUrl: newsUrl),
                        ));
                  },
                  child: const Text("Read More"),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
