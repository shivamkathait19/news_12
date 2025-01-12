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

                   Image.network ("https://static.toiimg.com/photo/msid-104408881/104408881.jpg?1326042" ,
                     width: 500,
                        ),
                 SizedBox(
                   height: 20,
                 ),
                 Text("NEWS SNAKS" ,style: TextStyle(fontSize: 20,color: Colors.black54,decoration: TextDecoration.underline,decorationColor: Colors.black),),
                 Spacer(),
                 Text("APP CREATE BY ",style: TextStyle(fontSize: 12 , color:Colors.black38,),),
                   Text("shubham ",style: TextStyle(fontSize: 10 ,color: Colors.black38,),),
                   SizedBox(
                     height: 15,
                   )

                      ],




                 ),
                      ),

               );





   }
}


 