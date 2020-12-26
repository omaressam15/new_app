import 'package:flutter/material.dart';

class testStake extends StatefulWidget {
  @override
  _testStakeState createState() => _testStakeState();
}

class _testStakeState extends State<testStake> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shadowColor: Colors.purpleAccent,
        title:Text("كل المنتاجات"),
        actions: [
          Icon(Icons.star),
        ],
        leading: Icon(Icons.arrow_back_rounded),
      ),
      body: Stack(
        //fit: StackFit.expand,
        children: [


          Container(
            color: Colors.purpleAccent,
            width: MediaQuery.of(context).size.width,
            height:30 ,
          ),
          SizedBox(
            child: Image.asset("assets/images"),
            height: 50,
            width:MediaQuery.of(context).size.width ,
          )
        ],
      ),
    );
  }
}
