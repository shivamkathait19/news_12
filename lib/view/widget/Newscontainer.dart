import 'package:flutter/material.dart';
 class Newscontainer extends StatelessWidget {
   String imgUrl;
   String newsHead;
   String newswdes;
   String newURl;
    Newscontainer({super.key,
    required this.imgUrl,
    required this.newsHead,
    required this.newswdes,
    required this.newURl,
    });

   @override
   Widget build(BuildContext context) {
     return Container(
       height: MediaQuery.of(context).size.height,
       width: MediaQuery.of(context).size.width,
       child:
          Column(
             crossAxisAlignment: CrossAxisAlignment.start,
             children: [
           Image.network( height: 400, width: MediaQuery.of(context).size.width,fit: BoxFit.cover ,imgUrl),
           Container(
             padding: EdgeInsets.symmetric(horizontal: 20),
             child: Column(
               crossAxisAlignment:CrossAxisAlignment.start,
               children: [
             SizedBox(height: 20,),
             Text("Vodafone Idea to launch 5G services by March 2025,",),
             Text(newsHead,style: TextStyle(fontSize: 20 ,fontWeight: FontWeight.bold),),
             SizedBox(height: 10,),
             Text(newswdes,style: TextStyle(fontSize: 10,),),

           ],),),

             Spacer(),
           Row(
             mainAxisAlignment: MainAxisAlignment.end,
             children: [
               Column(

                 children: [
                   Padding(
                     padding: const EdgeInsets.symmetric(horizontal: 25),
                     child: ElevatedButton(onPressed: (){
                       print("GOING TO $newURl");
                     }, child: Text("Read more")),
                   ),
                 ],
               ),
             ],
           ),
               SizedBox(height: 20,),
         
         ]),
     );
    }
 }
