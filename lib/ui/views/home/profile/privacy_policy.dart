import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PrivacyPolicy extends StatelessWidget {
  const PrivacyPolicy({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF001597E
        ),
        centerTitle: true,
        title: const Text(
          'Privacy policy',
          style: TextStyle(fontSize: 23),
        ),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
          bottom: Radius.circular(15),
        )),

      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Text(
              "Lorem ipsum dolor sit amet,"
              " consectetur adipiscing elit, "
              "sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. "
              "Ut enim ad minim veniam,"
              " quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. ",
              style: TextStyle(color: Colors.black, fontSize: 23),
            ),
            /* Text("BL001",style: TextStyle(color:Colors.white,fontSize: 58),),
            Text("3 Person left",style: TextStyle(color:Colors.white,fontSize: 23),),
            Text("Approximate waiting time 10:00 minute",style: TextStyle(color:Colors.white,fontSize: 18),),
            Text("Location: Cantonment ",style: TextStyle(color:Colors.white,fontSize: 18),),
            Text("Section: Deposit",style: TextStyle(color:Colors.white,fontSize: 18),),
            Text("Counter: Deposit counter",style: TextStyle(color:Colors.white,fontSize: 18),),
            Text("Officer: Jhon doe",style: TextStyle(color:Colors.white,fontSize: 18),),
            Text("Date: 2023-01-24  16:59:44",style: TextStyle(color:Colors.white,fontSize: 18),),*/
          ],
        ),

      ),
    );
  }
}
