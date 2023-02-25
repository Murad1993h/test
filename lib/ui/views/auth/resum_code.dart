

import 'package:flutter/material.dart';

class ResumCode extends StatefulWidget {
  const ResumCode({Key? key}) : super(key: key);

 // FocusNode pin3FocusNode;

  @override
  State<ResumCode> createState() => _ResumCodeState();
}

class _ResumCodeState extends State<ResumCode> {

  FocusNode?pin2FocusNode;
  FocusNode?pin3FocusNode;

  @override
  void initState(){
    super.initState();
    pin2FocusNode = FocusNode();
    pin3FocusNode = FocusNode();

  }
  void dispose(){


  }


  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Text(
              "OTP Verification ",
            ),
            Text("We are send your code to +008 **"),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("This code will expir in "),
                TweenAnimationBuilder(
                  tween: Tween(begin: 30.0, end: 0),
                  duration: Duration(seconds: 30),
                  builder: (context, value, child) => Text(
                    "00:${value.toInt()}",
                    style: TextStyle(color: Colors.blue),
                  ),

                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child:

              Row(
                children: [
                  SizedBox(
                    width: 50,height: 10,
                    child: TextFormField(
                      autofocus: true,
                      //obscureText: true,
                      keyboardType: TextInputType.number,
                      style: TextStyle(fontSize: 20,
                      ),
                      textAlign: TextAlign.center,

                      onChanged: (value){},
                      //maxLength: 1,

                    ),
                  ),
                  SizedBox(width: 4,),
                  SizedBox(
                    width: 50,height: 10,
                    child: TextFormField(),
                  ),
                  SizedBox(width: 4,),
                  SizedBox(
                    width: 50,height: 10,
                    child: TextFormField(),
                  ),
                  SizedBox(width: 4,),
                  SizedBox(
                    width: 50,height: 10,
                    child: TextFormField(),
                  ),
                  SizedBox(width: 4,),
                  SizedBox(
                    width: 50,height: 10,
                    child: TextFormField(),
                  ),
                  SizedBox(width: 4,),
                  SizedBox(
                    width: 50,height: 10,
                    child: TextFormField(),
                  ),



                ],
              ),


            ),
          ],
        ),
      ),
    );
  }
}
