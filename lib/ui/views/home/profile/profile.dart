import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:gokiiw/ui/views/home/home.dart';
import 'package:gokiiw/ui/views/home/profile/information.dart';
import 'package:gokiiw/ui/views/home/profile/privacy_policy.dart';

import 'package:gokiiw/ui/views/home/qr/qr_scan.dart';

import '../../../../const/app_colors.dart';
import '../../../../styles/style.dart';
import '../../../route/route.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  int _currentIndex = 0;
  final _pages = [
    Home(),
    QrScan(),
    Profile(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color(0xFF001597E
        ),
        centerTitle: true,
        title: const Text('Your token'),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(15),
            )
        ),

      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(
                child: Image.asset("assets/icons/Ellipse 3.png"),
                radius: 60,
                backgroundColor: Colors.white,
              ),
              Text("Jhon doe",
                  style:
                      TextStyle(fontSize: 45.sp, fontWeight: FontWeight.bold)),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextButton(
                        onPressed: () => Get.toNamed(information),
                        child: Row(
                          children: [
                            Image.asset(
                              "assets/icons/Vector (5).png",
                              height: 25,
                              width: 25,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "Profile information",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                              ),
                            )
                          ],
                        )),
                    Divider(
                      color: Colors.black,
                    ),
                    TextButton(
                        onPressed: () => Get.toNamed(tokens),
                        child: Row(
                          children: [
                            Image.asset(
                              "assets/icons/Vector (7).png",
                              height: 25,
                              width: 25,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "Token history",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 20),
                            )
                          ],
                        )),
                    Divider(
                      color: Colors.black,
                    ),
                    TextButton(
                        onPressed: () => Get.toNamed(privacy),
                        child: Row(
                          children: [
                            Image.asset(
                              "assets/icons/Vector (9).png",
                              height: 25,
                              width: 25,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "Privacy policy",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 20),
                            )
                          ],
                        )),
                    Divider(
                      color: Colors.black,
                    ),
                    TextButton(
                        onPressed: () => Get.toNamed(logIn),
                        child: Row(
                          children: [
                            Image.asset(
                              "assets/icons/Vector (10).png",
                              height: 25,
                              width: 25,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "Log out",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 20),
                            )
                          ],
                        )),
                  ],
                ),
              )

              /*TextField(
              obscureText: true,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Privacy policy',
              ),
            ),*/
            ],
          ),
        ),
      ),

      floatingActionButton:FloatingActionButton(
        backgroundColor: Color(0xFF0017B96),
        //Floating action button on Scaffold
        onPressed: (){
          //code to execute on button press
        },
        child: InkWell(
          onTap: ()=>Get.toNamed(home),
          child: Icon(Icons.qr_code_2,
            size: 30.0,
          ),
        ), //icon inside button
      ),

      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      //floating action button position to center

      bottomNavigationBar: BottomAppBar( //bottom navigation bar on scaffold
        color:Color(0xFF0017B96),
        shape: CircularNotchedRectangle(), //shape of notch
        notchMargin: 3, //notche margin between floating button and bottom appbar
        child: Row( //children inside bottom appbar
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[

            Padding(
              padding: const EdgeInsets.only(left: 50),
              child: IconButton(
                  icon: Image.asset("assets/icons/Vector.png"),
                  onPressed: () => Get.toNamed(home)),
            ),


            Padding(
              padding: const EdgeInsets.only(right: 50),
              child: IconButton(
                  icon: Image.asset("assets/icons/user-svgrepo.png"),
                  onPressed: () {},),
            ),

            

          ],
        ),
      ),
    );
  }
}
/*
class AppColor {

  static const Gradient : LinearGradient(
  colors [
  Color(0xFF002F76),
  Color(0xFF002F77),
  ],)



}
*/
