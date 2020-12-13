import 'package:New_app/ui/ReceivingCodeForMobile.dart';
import 'package:flutter/material.dart';

class Registration extends StatefulWidget {
  @override
  _RegistrationState createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {

  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController phoneController = TextEditingController();

  bool nameIsEmpty = false;
  bool passwordIsEmpty = false;
  bool phoneIsEmpty = false;

  validation(){

    if(nameController.text.isEmpty){
      nameIsEmpty=true;
    }
    else{
      nameIsEmpty=false;
    }
    if(passwordController.text.isEmpty){
      passwordIsEmpty=true;
    }
    else{
      passwordIsEmpty=false;
    }
    if(phoneController.text.isEmpty){
      phoneIsEmpty=true;
    }
    else{
      phoneIsEmpty=false;
    }
    setState(() {});
  }

  onClick(){

    Navigator.push(context, MaterialPageRoute(builder: (context) => ReceivingCode()),

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

        titleSpacing: 0.0,


      actions: [
          Padding(padding: EdgeInsets.only(top: 10,right: 10) ,

              child:InkWell(

                onTap: (){
                  onClick();
                },

                child: Text('تخطي',style: TextStyle(color: Colors.black,fontSize: 20),textAlign: TextAlign.right, ),
              )

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
                  width:MediaQuery.of(context).size.width *0.9 ,
                  height: 60,
                  margin: EdgeInsets.only(top: 30),
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),

                  child: TextField(
                    keyboardType: TextInputType.name,
                    controller: nameController,
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
                      hintText: "...الاسم",

                      hintStyle: TextStyle(color: Colors.grey,
                      ),
                    ),
                  ),
                ),
                if(nameIsEmpty==true)
                  Text("please enter your name",style: TextStyle(color: Colors.red),),
                Container(
                  width:MediaQuery.of(context).size.width *0.9 ,
                  height: 60,
                  margin: EdgeInsets.only(top: 25),
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                  child: TextField(
                    keyboardType: TextInputType.phone,
                    controller: phoneController,
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
                      hintText: "....رقم الجوال",hintStyle: TextStyle(color: Colors.grey,),
                    ),
                  ),
                ),
                if(phoneIsEmpty==true)
                  Text("please enter your phone",style: TextStyle(color: Colors.red),),
                Container(

                  width:MediaQuery.of(context).size.width *0.9 ,
                  height: 60,
                  margin: EdgeInsets.only(top: 25),
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                  child: TextField(
                    keyboardType: TextInputType.visiblePassword,
                    controller: passwordController,
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
                if(passwordIsEmpty==true)
                  Text("please enter your password",style: TextStyle(color: Colors.red),),
                Padding(padding: EdgeInsets.symmetric(vertical: 10),),
                SizedBox(
                  width:MediaQuery.of(context).size.width *0.9 ,
                  height:60 ,
                  child: RaisedButton(

                    elevation: 8,

                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(25)),),

                    color: Colors.green,

                    onPressed: () {
                      validation();
                    },
                    child: Text('تسجيل',style: TextStyle(fontSize: 20,color: Colors.white),),


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
