import 'package:flutter/material.dart';
import 'package:news_12/controller/fetchNews.dart';
import 'package:news_12/model/newsAdd.dart';
import 'package:news_12/view/widget/Newscontainer.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isLoding =true;
     late Newsadd newsadd;

   GetNews() async {
     newsadd= await FetchNews.fetchNews();
     setState(() {
 isLoding = false;
     });

   }

  @override
  void initState(){
     GetNews();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
body:PageView.builder(
controller: PageController(initialPage: 0),
scrollDirection: Axis.vertical,
    onPageChanged: (value){
  setState(() {
    isLoding = true;
  });
      GetNews();

    },
    itemBuilder: (context,index){
 // FetchNews.fetchNews();
  return  isLoding ? Center(child: CircularProgressIndicator(),): Newscontainer(
      imgUrl: newsadd.imUrl,
      newsHead: newsadd.newsHead,
      newsdes: newsadd.newsdes,
      newsCnt: newsadd.newsCnt,
      newURl: newsadd.newsUrl);
    }),
    );
  }
}
