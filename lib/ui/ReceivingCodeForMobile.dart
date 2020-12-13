import 'package:New_app/ui/RegistrationPage.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ReceivingCode extends StatefulWidget {
  @override
  _ReceivingCodeState createState() => _ReceivingCodeState();
}

class _ReceivingCodeState extends State<ReceivingCode> {

  onClick(){

    Navigator.push(context, MaterialPageRoute(builder: (context) => Registration()),

    );
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(

        leading: IconButton(icon: Icon(Icons.arrow_back,color: Colors.black,),
          tooltip: "Cancel and Return to List",
          onPressed: () {
            Navigator.pop(context, true);
          },
        ),

        backgroundColor: Colors.white10,

        actions: [
          Padding(padding: EdgeInsets.only(top: 10,right: 10) ,

              child:InkWell(

                child: Text('تخطي',style: TextStyle(color: Colors.black,fontSize: 20),textAlign: TextAlign.right, ),
              )

          ),
        ],
        elevation: 0,
      ),
      body: SingleChildScrollView(

        child: Center(
          child: Padding(padding: EdgeInsets.only(top: 50),
            child: Column(
              children: [
                Image.asset('assets/images.png',width: 150,),
                Container(
                  width:MediaQuery.of(context).size.width *0.9 ,
                  height: 60,
                  margin: EdgeInsets.only(top: 30),
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),

                  child: TextField(

                    keyboardType: TextInputType.number,
                    style: TextStyle(


                      color: Colors.black,
                    ),textAlign: TextAlign.right,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        borderSide: BorderSide(
                            width: 1,
                            color: Colors.green
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        borderSide: BorderSide(

                            color: Colors.grey
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        borderSide: BorderSide(
                            width: 2,
                            color: Colors.grey
                        ),
                      ),
                      hintText: "...رقم الجوال",


                      hintStyle: TextStyle(color: Colors.grey,
                      ),
                    ),
                  ),
                ),
                Padding(padding: EdgeInsets.symmetric(vertical: 10),),
                Container(
                  height: MediaQuery.of(context).size.height*0.4,
                  width: MediaQuery.of(context).size.width,
                  child:  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width:MediaQuery.of(context).size.width *0.9 ,
                        height:60 ,
                        child: RaisedButton(

                          elevation: 8,


                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(25)),),



                          color: Colors.green,

                          onPressed: () {  },
                          child: Text('ارسال رمز التحقيق',style: TextStyle(fontSize: 20,color: Colors.white),),


                        ),
                      ),

                      RichText(
                        text:TextSpan(
                            children: <TextSpan>[

                              TextSpan(text:"ليس لديك حساب ",style: TextStyle(color: Colors.black,fontSize: 20)),
                              TextSpan(
                                  text:"سجل الان؟",
                                  style: TextStyle(color: Colors.deepOrange,fontSize: 20),

                                recognizer:TapGestureRecognizer()..onTap = (){onClick();},

                              ),
                            ]
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
