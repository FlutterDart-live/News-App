class NewsArt {
  String imgUrl;
  String newsHead;
  String newsDesl;
  String newsCnt;
  String newsUrl;

  NewsArt(
      {required this.imgUrl,
      required this.newsHead,
      required this.newsDesl,
      required this.newsCnt,
      required this.newsUrl});

  static NewsArt fromAPItoApp(Map<String, dynamic> article) {
    return NewsArt(
      imgUrl: article["urlToImage"] ??
          "https://images.unsplash.com/photo-1444653614773-995cb1ef9efa?q=80&w=1176&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
      newsHead: article["title"] ?? "",
      newsDesl: article["description"] ?? "",
      newsCnt: article["content"] ?? "",
      newsUrl: article["url"] ??
          "https://www.google.com/search?q=google+news+breaking+news&sca_esv=f2576dfd1253dbc3&rlz=1C1ONGR_enIN1097IN1097&tbm=nws&sxsrf=ADLYWIKKYhlnu3Kot9ZkD-Fr7sp2KV823Q%3A1721125037515&ei=rUiWZsaNH8660-kPsJKpYA&ved=0ahUKEwiGmOazqquHAxVO3TQHHTBJCgwQ4dUDCA0&uact=5&oq=google+news+breaking+news&gs_lp=Egxnd3Mtd2l6LW5ld3MiGWdvb2dsZSBuZXdzIGJyZWFraW5nIG5ld3MyBRAAGIAEMgYQABgHGB4yBhAAGAcYHjIGEAAYBxgeMgYQABgHGB4yBhAAGAcYHjIGEAAYBxgeMgYQABgHGB4yBhAAGAcYHjIGEAAYBxgeSIYvUM4QWKsrcAB4AJABAJgByQKgAeATqgEIMC4xMi4xLjG4AQPIAQD4AQGYAg2gAuIUwgILEAAYgAQYsQMYgwHCAgoQABiABBhDGIoFwgIIEAAYgAQYsQPCAhAQABiABBixAxhDGIMBGIoFwgIOEAAYgAQYsQMYgwEYigXCAg0QABiABBixAxiDARgKwgIKEAAYgAQYsQMYCsICEBAAGIAEGLEDGIMBGIoFGArCAg0QABiABBixAxiDARgNwgIKEAAYgAQYsQMYDcICEBAAGIAEGLEDGIMBGIoFGA3CAgcQABiABBgNwgILEAAYgAQYkQIYigXCAgcQABiABBgKmAMAiAYBkgcIMC4xMC4xLjKgB91v&sclient=gws-wiz-news",
    );
  }
}
