import 'package:flutter/material.dart';
import 'package:news_12/view/home.dart';
import 'package:news_12/view/splashScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool showingSplash  = true;
   LoadHome()  {
     Future.delayed(Duration(seconds: 4),(){
       setState(() {
      showingSplash = false;
      });
    });
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    LoadHome();
  }
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'News 21',
        theme: ThemeData(

          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: showingSplash ? Splashscreen() : HomeScreen()
    );
  }
}