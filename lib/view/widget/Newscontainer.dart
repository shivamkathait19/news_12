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
                 SizedBox(height: 30,),
                 Text(
                   newsCnt.length >90?
                       "${newsCnt.substring(0,90)}..." :
                   newsCnt, style: TextStyle(fontSize: 17 ,fontWeight: FontWeight.bold),),

                 Text(newsdes,style: TextStyle(fontSize: 15,color:Colors.black38,),),
                 SizedBox(height: 12,),

                 Text(
                   newsHead != "__"?
                   newsHead.length> 200 ? newsHead.substring(0,200):
                    "${newsHead.toString().substring(0,newsCnt.length-15)}......": newsHead,
                     style: TextStyle(fontSize: 19,),),

           ],),),
               Spacer(),
           Row(
             mainAxisAlignment: MainAxisAlignment.end,
             children: [
               Column(
                 /*children: [
                   Padding(
                     padding: const EdgeInsets.symmetric(horizontal: 26),
                     child: ElevatedButton(onPressed: (){
                     }, child: Text("Read more")),
                   ),
                 ],*/
               ),
             ],
           ),

         
         ]),
     );
    }
 }
