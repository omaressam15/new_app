import 'package:New_app/Cards/CardHome.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}


class _HomeScreenState extends State<HomeScreen> {

  List<String> imageUrl = ["assets/images/home.png","assets/images/home.png","assets/images/home.png","assets/images/home.png"];
  List<String> title = ["شقة 11", "ارضي زراعية علي الطريق","فيلا علي الطريق","ارضي زراعية علي الطريق"];
  List<String> location = ["بجوار ونجيت","رضي زراعية بجانب عزبة النخل","بجوار الحصري ","رضي زراعية بجانب عزبة النخل"];
  List<double> prise = [60000.0,700000.0,8000000.0,1000000.0];
  List<int> numberRoom = [3,4,2,4];
  List<int> numberBathRoom =[3,2,3,2];
  List<int> size =[5000,4000,6000,2000];
  List<int> days =[25,45,36,50];

  final List<Color> colors = [
    Colors.purple,
    Colors.green,
    Colors.lightGreenAccent,
    Colors.grey,
  ];

  List<Widget> homeList = List<Widget>();

  initializeHomeList() {

  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    initializeHomeList();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar:AppBar(

       elevation: 0,
       backgroundColor: Colors.white,
       centerTitle: true,
       title: Text("نفذ",style: TextStyle(color: Colors.black,fontSize: 15),),
       leading: Icon(Icons.ac_unit,color: Colors.blue,),
       actions: [
         Icon(Icons.ac_unit,color: Colors.black,),
         Icon(Icons.ac_unit,color: Colors.black,),
       ],
     ),
      body:SingleChildScrollView(
        child: Column(
          children: [
            Directionality(textDirection:TextDirection.rtl,

                child:Material(
                  borderRadius: BorderRadius.only(bottomRight:Radius.circular(20),bottomLeft: Radius.circular(20)),
                  elevation: 10,
                  child: Container(

                    width:MediaQuery.of(context).size.width ,

                    padding: EdgeInsets.only(bottom: 30),

                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(bottomLeft: Radius.circular(50),bottomRight: Radius.circular(50)),
                      color: Colors.white,),

                      child: Column(
                      children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.8,
                          height: 55,
                          child: TextField(

                              style: TextStyle( fontFamily: "Cairo"),
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.grey[200],
                              hintText: "بحث...",
                              prefixIcon: Icon(Icons.search),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(20)),
                                  borderSide: BorderSide(color: Colors.grey[50])
                              ),
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(20)),
                                  borderSide: BorderSide(color: Colors.grey[50])
                              ),
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(20)),
                                  borderSide: BorderSide(color: Colors.blue)
                              ),
                            ),
                          ),
                        ),
                        Padding(padding: EdgeInsets.only(top: 20)),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [

                            Column(
                              children: [
                                Container(
                                  width: 35,
                                  height: 5,
                                  decoration: BoxDecoration(
                                      color: Colors.grey,
                                      borderRadius: BorderRadius.all(Radius.circular(30))
                                  ),
                                ),
                                Padding(padding: EdgeInsets.only(top: 5)),
                                Text("كل المتاح",style: TextStyle( fontFamily: "Cairo"),),
                              ],
                            ),

                            Column(
                              children: [
                                Container(
                                  width: 35,
                                  height: 5,
                                  decoration: BoxDecoration(
                                      color: Colors.green,
                                      borderRadius: BorderRadius.all(Radius.circular(30))
                                  ),
                                ),
                                Padding(padding: EdgeInsets.only(top: 5)),
                                Text("شقق",style: TextStyle( fontFamily: "Cairo")),
                              ],
                            ),

                            Column(
                              children: [
                                Container(
                                  width: 35,
                                  height: 5,
                                  decoration: BoxDecoration(
                                      color: Colors.lightGreen,
                                      borderRadius: BorderRadius.all(Radius.circular(30))
                                  ),
                                ),
                                Padding(padding: EdgeInsets.only(top: 5)),
                                Text("ارضي",style: TextStyle( fontFamily: "Cairo")),

                              ],
                            ),
                            Column(
                              children: [
                                Container(
                                  width: 35,
                                  height: 5,
                                  decoration: BoxDecoration(
                                      color: Colors.deepPurpleAccent,
                                      borderRadius: BorderRadius.all(Radius.circular(30))
                                  ),
                                ),
                                Padding(padding: EdgeInsets.only(top: 5)),
                                Text("villa",style: TextStyle( fontFamily: "Cairo")),

                              ],
                            ),

                          ],
                        ),
                      ],
                    ) ,
                  ),

                ),
            ),

            Padding(padding: EdgeInsets.symmetric(vertical: 20,horizontal: 9),

              child: ListView.builder(

                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: colors.length,


                itemBuilder: (context, index) {

                  return CardHome(

                        title: title[index],
                        price: prise[index],
                        imageUrl: imageUrl[index],
                        days: days[index],
                        location: location[index],
                        numberBathRoom: numberBathRoom[index],
                        numberRoom: numberRoom[index],
                        dimensions: size[index],
                        colors: colors[index],
                        iconData: Icons.location_on,

                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}