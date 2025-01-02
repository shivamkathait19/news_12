import 'package:flutter/material.dart';
import 'package:news_12/view/widget/Newscontainer.dart';
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
body:PageView.builder(
controller: PageController(initialPage: 0),
scrollDirection: Axis.vertical,
itemCount: 10
,itemBuilder: (context,index){
  return Newscontainer(imgUrl: "https://plus.unsplash.com/premium_photo-1689701711439-e54f039f8d97?q=80&w=1914&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
      newsHead: "Vodafone Idea is planning to launch its 5G", newswdes: "Vodafone Idea is planning to launch its 5G mobile broadband services in March, reported The Economic Times. The company aims to make a mark in a market already dominated by Reliance Jio and Bharti Airtel.The company plans to introduce 5G with competitively priced plans that could be up to 15% cheaper at entry levels, added the report. The move is expected to spark a pricing war among telecom operators.",
      newURl: "https://www.indiatoday.in/business/story/vodafone-idea-5g-launch-in-march-report-pricing-war-ahead-reliance-jio-airtel-vi-share-price-stmp-2658560-2025-01-02") ;
    }),
    );
  }
}
