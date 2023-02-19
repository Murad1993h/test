import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gokiiw/const/gradien.dart';

class YourToken extends StatelessWidget {
  const YourToken({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF001597E
        ),
        centerTitle: true,
        title: const Text('Your token'),

        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(15),
            ),
        ),
        /*flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: <Color>[Color(0xFF0017592),Color(0xFF001597E)]
            ),
          ),
        ),*/
      ),
      body: ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: 1,
        itemBuilder: (_, child) {
          return Padding(
            padding: EdgeInsets.all(12),
            child: InkWell(
              onTap: () {},
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
                  gradient: LinearGradient(begin: Alignment.topLeft,

                    colors: [
                      Color(0xFF002F76),
                      Color(0xFF00A5AF),

                    ],),
                  /*borderRadius: borderRadius,
                    border: border,
                    gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,

                        colors: [
                        Color(0xFF002F76),
                    Color(0xFF00A5AF),*/

                ),
                //decoration: appColor(),
                width: 361.w,
                height: 448.h,
                child: Container(
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
                      Text(
                        "Approximate waiting time 10:00 minute",
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                      Text(
                        "Location: Cantonment ",
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                      Text(
                        "Section: Deposit",
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                      Text(
                        "Counter: Deposit counter",
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                      Text(
                        "Officer: Jhon doe",
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                      Text(
                        "Date: 2023-01-24  16:59:44",
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
