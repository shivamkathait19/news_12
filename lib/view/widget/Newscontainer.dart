import 'package:flutter/material.dart';
import 'package:news_12/view/Detail_view.dart';
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
                   newsCnt.length >50?
                       "${newsCnt.substring(0,50)}..." :
                   newsCnt, style: TextStyle(fontSize: 15 ,fontWeight: FontWeight.bold),),

                 Text(newsdes,style: TextStyle(fontSize: 15,color:Colors.black38,),),
                 SizedBox(height: 10,),

                 Text(
                   newsHead.length> 250 ? newsHead.substring(0,250):
                    "${newsHead.toString().substring(0,newsCnt.length-15)}......",
                     style: TextStyle(fontSize: 15,),),

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
                       Navigator.push(context, MaterialPageRoute(builder: (context)=> DetailViewScreen(newUri: newURl,)));
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
