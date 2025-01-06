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
   late Newsadd newsadd;

   GetNews() async {

     newsadd= await FetchNews.fetchNews();
     setState(() {

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
      GetNews();

    },
    itemBuilder: (context,index){
 // FetchNews.fetchNews();
  return Newscontainer(imgUrl: newsadd.imUrl,
      newsdes: newsadd.newsdes,
      newsHead: newsadd.newsHead, newsCnt: newsadd.newsCnt,
      newURl: newsadd.newsUrl);
    }),
    );
  }
}
