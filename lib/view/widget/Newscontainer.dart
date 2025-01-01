import 'package:flutter/material.dart';
class Newscontainer extends StatelessWidget {
  String imgUrl;
  String newhead ;
  String newDes
  const Newscontainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,


      child: Column(children: [
        Image.network("src"),
        Text("New heading"),
        Text("News Desecription"),
        ElevatedButton(onPressed:(){},
            child: Text("Read more"))
      ],),
    );
  }
}
