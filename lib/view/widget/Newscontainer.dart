import 'package:flutter/material.dart';
 class Newscontainer extends StatelessWidget {
   String imgUrl;
   String newsHead;
   String newsdes;
   String newURl;
   String newsCnt ;
    Newscontainer({super.key,
    required this.imgUrl,
    required this.newsHead,
    required this.newsdes,
    required this.newURl,
      required this.newsCnt,
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
               children:[
                 SizedBox(height: 20,),
                 Text(
                   newsCnt,
                   style: TextStyle(fontSize: 15 ,fontWeight: FontWeight.bold),),

                 Text(newsdes,style: TextStyle(fontSize: 15,color:Colors.black38,),),
                 SizedBox(height: 10,),

                 Text(
                    "${newsHead.toString().substring(0,newsCnt.length-15)}......",
                    style: TextStyle(fontSize: 19,),),

           ],),),
               Spacer(),
           Row(
             mainAxisAlignment: MainAxisAlignment.end,
             children: [
               Column(
                 children: [
                   Padding(
                     padding: const EdgeInsets.symmetric(horizontal: 26),
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
