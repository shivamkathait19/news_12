import 'package:flutter/material.dart';
 class Splashscreen extends StatelessWidget {
   Splashscreen({super.key});

   @override
   Widget build(BuildContext context) {
     return Scaffold(
       backgroundColor: Colors.grey,
              body: Center(
               child: Column(
                 children:[
                   SizedBox(
                     height: 200,
                   ),
                   Image.network ("https://static.toiimg.com/photo/msid-104408881/104408881.jpg?1326042",),
                 Text("News Snaks" ,style: TextStyle(fontSize: 20),),
                 Spacer(),
                 Text("APP CREATE BY ",style: TextStyle(fontSize: 17),),
                   Text("shubham ",style: TextStyle(fontSize: 15),),
                   SizedBox(
                     height: 15,
                   )
                      ],
                      ),

               ),
               );



   }
}


 