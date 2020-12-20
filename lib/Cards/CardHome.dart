import 'package:flutter/material.dart';

class CardHome extends StatelessWidget {

  String imageUrl;
  String title;
  String location;
  double price;
  int numberRoom;
  int numberBathRoom;
  int dimensions;
  int days;
  Widget icons;

  CardHome(
      {this.imageUrl, this.title, this.location, this.price, this.numberRoom, this.numberBathRoom, this.dimensions, this.days,this.icons});

  @override

  Widget build(BuildContext context) {

     return Container(
       margin: EdgeInsets.only(top: 15),
       child:  Material(

         borderRadius: BorderRadius.all(Radius.circular(25)),
         elevation: 8,

         //  type: MaterialType.card,
         child: Container(

           width: MediaQuery.of(context).size.width ,
           height: MediaQuery.of(context).size.height * 0.20,
        //   margin: EdgeInsets.only(top: 10),
           decoration: BoxDecoration(
             borderRadius: BorderRadius.all(Radius.circular(25)),),

           child: Directionality(


             textDirection: TextDirection.rtl,

             child: Padding(padding: EdgeInsets.symmetric(
                 horizontal: 5, vertical: 15),

               child: Row(

                 children: [

                   Align(
                     child: Image.asset("$imageUrl", width: 90,),
                     alignment: Alignment.topRight,

                   ),
                   SizedBox(
                     height: MediaQuery.of(context).size.height  ,
                     width: MediaQuery.of(context).size.width * 0.67,

                     child: Padding(padding: EdgeInsets.only(right: 5),

                       child: Column(

                         children: [
                           Row(

                             children: [

                               SizedBox(
                                 child: Text("$title", style: TextStyle(color: Colors.black54,
                                     fontSize: 16,
                                     fontFamily: "Cairo"),
                                   overflow: TextOverflow.ellipsis,),
                                 width: MediaQuery.of(context).size.width * 0.43,

                               ),

                               Padding(padding: EdgeInsets.symmetric(horizontal: 6)),

                               Text("$days", style: TextStyle(fontFamily: "Cairo", color: Colors.black54)),

                               Padding(padding: EdgeInsets.symmetric(horizontal: 1)),

                               Text("ايام", style: TextStyle(fontFamily: "Cairo", color: Colors.black54)),

                               Padding(padding: EdgeInsets.symmetric(horizontal: 3)),
                               Icon(
                                 Icons.circle, color: Colors.orange,),
                             ],
                           ),

                           Row(
                             children: [

                               Text("$price", style: TextStyle(color: Colors.black54, fontSize: 16,fontFamily: "Cairo"),overflow: TextOverflow.ellipsis,),
                               Padding(padding: EdgeInsets.symmetric(horizontal: 2)),
                               Text("ريال", style: TextStyle(color: Colors.black54,fontSize: 16,fontFamily: "Cairo"),overflow: TextOverflow.ellipsis,),


                             ],
                           ),

                           Row(
                             children: [
                               Text("$numberRoom", style: TextStyle(
                                   fontFamily: "Cairo", color: Colors.black54)),
                               Padding(
                                   padding: EdgeInsets.symmetric(horizontal: 1)),
                               Icon(Icons.airline_seat_individual_suite,
                                 color: Colors.black,),

                               Padding(
                                   padding: EdgeInsets.symmetric(horizontal: 5)),

                               Text("$numberBathRoom", style: TextStyle(
                                   fontFamily: "Cairo", color: Colors.black54)),
                               Padding(
                                   padding: EdgeInsets.symmetric(horizontal: 1)),
                               Icon(Icons.bathtub_rounded, color: Colors.black,),

                               Padding(
                                   padding: EdgeInsets.symmetric(horizontal: 5)),

                               Text("$dimensions", style: TextStyle(
                                   fontFamily: "Cairo", color: Colors.black54)),
                               Padding(
                                   padding: EdgeInsets.symmetric(horizontal: 1)),
                               Image.asset("assets/icons/dimension.png",width: 22,)
                             ],
                           ),

                           Row(
                             mainAxisAlignment: MainAxisAlignment.start,

                             children: [
                               Icon(icons),
                               SizedBox(
                                 width: MediaQuery
                                     .of(context)
                                     .size
                                     .width * 0.40,

                                 child: Text("$location",
                                   style: TextStyle(color: Colors.black54,
                                       fontSize: 16,
                                       fontFamily: "Cairo"),
                                   overflow: TextOverflow.ellipsis,),
                               ),
                             ],
                           ),
                         ],
                       ),
                     ),
                   ),
                 ],
               ),
             ),
           ),
         ),
       ),
     );
  }
}