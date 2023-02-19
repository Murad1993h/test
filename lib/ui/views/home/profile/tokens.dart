import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../const/gradien.dart';

class Tokens extends StatelessWidget {
  //const Tokens({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF001597E),
        centerTitle: true,
        title: const Text('Tokens'),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
          bottom: Radius.circular(15),
        )),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              child: Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(30),
                    child: Container(
                      decoration: BoxDecoration(
                        //color: appColor(),
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Color(0xFF0017575),
                            blurRadius: 10,
                            spreadRadius: 1,
                            offset: Offset(0, 6),
                          )
                        ],
                        gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          colors: [
                            Color(0xFF002F76),
                            Color(0xFF00A5AF),
                          ],
                        ),
                      ),
                      //decoration: appColor(),
                      width: 390.w,
                      height: 448.h,

                      child: Column(
                        children: [
                          Text(
                            "Zeo",
                            style: TextStyle(color: Colors.white, fontSize: 39),
                          ),
                          Text(
                            "BL001",
                            style: TextStyle(color: Colors.white, fontSize: 58),
                          ),
                          Text(
                            "3 Person left",
                            style: TextStyle(color: Colors.white, fontSize: 23),
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Text(
                            "Approximate waiting time 10:00 minute",
                            style: TextStyle(color: Colors.white, fontSize: 15),
                          ),
                          SizedBox(
                            height: 6,
                          ),
                          Text(
                            "Location: Cantonment ",
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Text(
                            "Section: Deposit",
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Text(
                            "Counter: Deposit counter",
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Text(
                            "Officer: Jhon doe",
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Text(
                            "Date: 2023-01-24  16:59:44",
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 248, top: 11),
                    child: Column(
                      children: [Image.asset("assets/icons/Group 3.png")],
                    ),
                  )
                ],
              ),
            ),
            Container(
              child: Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(30),
                    child: Container(
                      decoration: BoxDecoration(
                        //color: appColor(),
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Color(0xFF0017575),
                            blurRadius: 10,
                            spreadRadius: 1,
                            offset: Offset(0, 6),
                          )
                        ],
                        gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          colors: [
                            Color(0xFF002F76),
                            Color(0xFF00A5AF),
                          ],
                        ),
                      ),
                      //decoration: appColor(),
                      width: 390.w,
                      height: 448.h,

                      child: Column(
                        children: [
                          Text(
                            "Zeo",
                            style: TextStyle(color: Colors.white, fontSize: 39),
                          ),
                          Text(
                            "BL001",
                            style: TextStyle(color: Colors.white, fontSize: 58),
                          ),
                          Text(
                            "3 Person left",
                            style: TextStyle(color: Colors.white, fontSize: 23),
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Text(
                            "Approximate waiting time 10:00 minute",
                            style: TextStyle(color: Colors.white, fontSize: 15),
                          ),
                          SizedBox(
                            height: 6,
                          ),
                          Text(
                            "Location: Cantonment ",
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Text(
                            "Section: Deposit",
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Text(
                            "Counter: Deposit counter",
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Text(
                            "Officer: Jhon doe",
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Text(
                            "Date: 2023-01-24  16:59:44",
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 248, top: 30),
                    child: Column(
                      children: [Image.asset("assets/icons/Rectangle 30.png")],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
