import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:gokiiw/const/gradien.dart';
import 'package:gokiiw/ui/route/route.dart';
import 'package:gokiiw/ui/views/home/user_information.dart';

class CompanyLocation extends StatefulWidget {
  const CompanyLocation({Key? key}) : super(key: key);

  @override
  State<CompanyLocation> createState() => _CompanyLocationState();
}

class _CompanyLocationState extends State<CompanyLocation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Color(0xFF001597E
        ),

        centerTitle: true,


        title: Text("Location", style: TextStyle(fontSize: 27)),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(15),
            )
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
        actionsIconTheme: IconThemeData(color: Colors.green, size: 36),
      ),
      body: ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: 3,
        itemBuilder: (_, child) {
          return Padding(
            padding: EdgeInsets.all(12),
            child: InkWell(
              onTap: ()=> Get.toNamed(user),
              child: Container(
                //decoration:appColor(),
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
                width: 100.w,
                height: 180.h,

                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Row(

                    children: [
                      Text(
                        "1",
                        style: TextStyle(color: Colors.white,fontSize:27,fontWeight: FontWeight.bold ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      TextButton(onPressed: () => Get.toNamed(user),
                          child: Text("Comment",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 27),)),

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
