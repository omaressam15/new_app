
import 'package:New_app/ui/RegistrationPage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  TextEditingController  phoneController = TextEditingController();
  TextEditingController  passwordController = TextEditingController();

  bool phoneIsEmpty = false;
  bool passwordIsEmpty = false;


  validation(){

    if(phoneController.text.isEmpty){
      phoneIsEmpty= true;
    }else{
      phoneIsEmpty = false;
    }

    if(passwordController.text.isEmpty){
      passwordIsEmpty = true;
    }else{
      passwordIsEmpty = false;
    }
    setState(() {

    });
  }

    onClick(){

    Navigator.push(context, MaterialPageRoute(builder: (context) => Registration()),

    );
    setState(() {});
  }


  @override
  Widget build(BuildContext context) {


    return Scaffold(

      appBar: AppBar(

        backgroundColor: Colors.white10,
        actions: [
          Padding(padding: EdgeInsets.only(top: 10,right: 10) ,




            child: InkWell(

              onTap: (){
                onClick();
              },

              child: Text('تخطي',style: TextStyle(color: Colors.black,fontSize: 20),textAlign: TextAlign.right, ) ,
            ),




          ),
        ],
        elevation: 0,
      ),
      body: SingleChildScrollView(

          child: Center(
            child: Padding(padding: EdgeInsets.only(top: 40),
              child: Column(
                children: [



                    Image.asset('assets/images.png',width: 150,),
                    Container(
                        width: MediaQuery.of(context).size.width*0.9,
                        height:60 ,
                      margin: EdgeInsets.only(top: 30),
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      ),

                      child: TextField(
                        controller: phoneController,

                        keyboardType: TextInputType.phone,

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
                          hintText: "....رقم الهادف",

                          hintStyle: TextStyle(color: Colors.grey,
                          ),
                        ),
                      ),
                    ),
                    if(phoneIsEmpty==true)
                      Text("Please enter your phone",style: TextStyle(color:Colors.red,fontWeight: FontWeight.bold  ),),
                    Container(
                      width: MediaQuery.of(context).size.width*0.9,
                      height:60 ,
                      margin: EdgeInsets.only(top: 25),
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      ),
                      child: TextField(
                        controller: passwordController,
                        keyboardType: TextInputType.visiblePassword,
                        style: TextStyle(color: Colors.black,),textAlign: TextAlign.right,
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
                          hintText: "....كلمة السر",hintStyle: TextStyle(color: Colors.grey,),
                        ),
                      ),
                    ),
                  if(phoneIsEmpty==true)
                    Text("Please enter your password",style: TextStyle(color:Colors.red,fontWeight: FontWeight.bold),),
                    Padding(padding: EdgeInsets.symmetric(vertical: 10),),

                    SizedBox(
                      width:MediaQuery.of(context).size.width *0.9 ,
                      height:60 ,
                      child: RaisedButton(

                        elevation: 8,


                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(25)),),

                        onPressed: (){
                          if(phoneIsEmpty==true && passwordIsEmpty==true){
                            validation();

                          } else
                             onClick();
                        },

                        color: Colors.green,

                        child: Text('تسجيل الدخول',style: TextStyle(fontSize: 20,color: Colors.white),),


                      ),
                    ),



                    Padding(padding: EdgeInsets.symmetric(vertical: 10),),
                    Text("هل نسيت كلمة المرور",style: TextStyle(fontSize: 18),),
                    Padding(padding: EdgeInsets.symmetric(vertical: 50),),
                    RichText(


                      text:TextSpan(


                            children: <TextSpan>[

                            TextSpan(
                                text:"ليس لديك حساب ",
                                style: TextStyle(color: Colors.black,fontSize: 20)

                            ),

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
          ),
    ),
    );
  }
}
