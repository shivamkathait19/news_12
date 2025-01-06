class Newsadd {

  String imUrl;
  String newsHead;
  String newsdes;
  String newsCnt;
  String newsUrl;

  Newsadd({
    required this.imUrl,
    required this.newsHead,
    required this.newsdes,
    required this.newsCnt,
    required this.newsUrl,
});
  static Newsadd fromAPItoApp(Map<String,dynamic> artical){
    return Newsadd(
        imUrl: artical["urlToImage"] ?? "https://img.freepik.com/free-vector/breaking-news-concept_23-2148514216.jpg?w=2000",
        newsHead: artical["content"] ?? "--",
        newsdes: artical["description"] ?? "--",
        newsCnt: artical["title"]  ?? "--",
        newsUrl: artical["url"] ?? "https://news.google.com/topstories?hl=en-IN&gl=IN&ceid=IN:en");
  }
}