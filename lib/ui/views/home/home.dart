import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:gokiiw/const/app_colors.dart';
import 'package:gokiiw/const/gradien.dart';
import 'package:gokiiw/ui/route/route.dart';
import 'package:gokiiw/ui/views/home/profile/profile.dart';

import 'package:gokiiw/ui/views/home/qr/qr_scan.dart';
import 'package:gokiiw/ui/views/home/searce_page.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../api/api.dart';
import '../auth/log_in.dart';

class Home extends StatefulWidget {
  //const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final TextEditingController _searchController = TextEditingController();


  int _currentIndex = 0;
  final _pages = [
    Home(),
    Profile(),
  ];

  void _getUserInfo() async {
    SharedPreferences localStorage = await SharedPreferences.getInstance();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Color(0xFF001597E),
        title: Text("GoKiiw", style: TextStyle(fontSize: 20)),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
          bottom: Radius.circular(15),
        )),
        actionsIconTheme: IconThemeData(
          color: Color(0xFF00A5AF),
        ),
        actions: [
          /*TextFormField(
            decoration: InputDecoration(
                border: InputBorder.none,
                hintText: "Search here...",
                hintStyle: TextStyle(color: Colors.black),
                prefixIcon: Icon(
                  Icons.search,

                  size: 30,
                )),
          ),*/

          /*Container(
            //width: SizConfig.screchWidth(20),

            decoration: BoxDecoration(
              color: Colors.black45,
              borderRadius: BorderRadius.circular(15),
            ),
            child: TextField(
              decoration: InputDecoration(
                enabledBorder: InputBorder.none,
                focusedBorder: InputBorder.none,
                hintText: "Searce",
                prefixIcon: Icon(Icons.search),
                contentPadding: EdgeInsets.symmetric(

                )
              ),
            ),
          ),*/



          Padding(
            padding: const EdgeInsets.only(right: 3),
            child: IconButton(
              icon: Icon(Icons.search,color: Colors.white,size: 30,),


              onPressed: () => Navigator.of(context)
                  .push(MaterialPageRoute(builder: (_) => const SearcePage())),
            ),
          ),







          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: IconButton(
              icon: Icon(Icons.notifications_none,color: Colors.white,size: 30,),


              onPressed: (){

              }, ),
          ),










         /* Padding(
            padding: const EdgeInsets.only(right: 30),
            child: Icon(
              Icons.notifications_none,
              size: 30.sp,
              color: Colors.white,
            ),
          ),*/
        ],


      ),
      body: ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: 3,
        itemBuilder: (_, child) {
          return Padding(
            padding: EdgeInsets.all(20),
            child: InkWell(
              onTap: () => Get.toNamed(company),
              child: InkWell(
                child: Container(
                  width: 100.w,
                  height: 180.h,
                  decoration: BoxDecoration(
                    // color: Colors.blue,
                    borderRadius: BorderRadius.all(
                      Radius.circular(10.r),
                    ),
                  ),
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
                      /*borderRadius: borderRadius,
                      border: border,
                      gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,

                          colors: [
                          Color(0xFF002F76),
                      Color(0xFF00A5AF),*/
                    ),
                    // decoration: appColor(),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 8, left: 8),
                          child: Image.asset("assets/icons/th 1.png",
                              width: 50, height: 49, fit: BoxFit.fill),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          //decoration:appColor(),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              TextButton(
                                  onPressed: () => Get.toNamed(company),
                                  child: Text(
                                    "Drivers Vehicle and License Authority",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  )),
                              Text(
                                "Welcome to DVLA",
                                style: TextStyle(color: Colors.white),
                              ),
                              Text(
                                "527 Sharon Garden Ct",
                                style: TextStyle(color: Colors.white),
                              ),
                              Text(
                                "Open today",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),

      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xFF0017B96),
        //Floating action button on Scaffold
        onPressed: () => Get.toNamed(qr),
        child: Icon(
          Icons.qr_code_2,
          size: 30.0,
        ), //icon inside button
      ),

      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      //floating action button position to center

      bottomNavigationBar: BottomAppBar(
        //bottom navigation bar on scaffold
        color: Color(0xFF0017B96),
        shape: CircularNotchedRectangle(), //shape of notch
        notchMargin:
            2, //notche margin between floating button and bottom appbar
        child: Row(
          //children inside bottom appbar
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 50),
              child: IconButton(
                  icon: Image.asset("assets/icons/Vector.png"),
                  onPressed: () => Get.toNamed(home)),
            ),

            // onTap: () => Get.toNamed(profile),

            Padding(
              padding: const EdgeInsets.only(right: 50),
              child: IconButton(
                  icon: Image.asset("assets/icons/user-svgrepo.png"),
                  onPressed: () => Get.toNamed(profile)),
            ),
            //IconButton(icon:Image.asset(name), onPressed:()=> Get.toNamed(profile)),
          ],
        ),
      ),
      /*bottomNavigationBar: Stack(
        clipBehavior:Clip.none,
        children: [

          ClipRRect(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15), topRight: Radius.circular(15)),
            child: BottomNavigationBar(
              backgroundColor: Color(0xFF001597E),

              //backgroundColor: AppColors.scaffoldColor,
              selectedItemColor: Color(0xFF017592),

              currentIndex: _currentIndex,
              items: [
                BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage("assets/icons/Vector.png"),
                      color: Colors.white),
                  // color: Color(0xFF3A5A98),
                  label: 'Home',
                ),
                BottomNavigationBarItem(
                  icon: InkWell(
                      onTap: () => Get.toNamed(profile),
                      child: ImageIcon(
                        AssetImage(
                          "assets/icons/user-svgrepo.png",
                        ),
                        color: Colors.white,
                      )),
                  label: 'Profile',
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 30,
            right: 160,
            child: FloatingActionButton(
              onPressed: () {},
              child: Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  border: Border.all(
                      color: Colors.white,
                      width: 5,
                      style: BorderStyle.solid),
                ),
                child: InkWell(
                  onTap: () => Get.toNamed(profile),
                  child: Icon(
                    Icons.qr_code_2,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          )
        ],
      ),*/
    );
  }
  /*void logout() async{
    // logout from the server ...
    var res = await CallApi().getData('logout');
    var body = json.decode(res.body);
    if(body['success']){
      SharedPreferences localStorage = await SharedPreferences.getInstance();
      localStorage.remove('user');
      localStorage.remove('token');
      Navigator.push(
          context,
          new MaterialPageRoute(
              builder: (context) => LogIn()));
    }

  }*/
}

