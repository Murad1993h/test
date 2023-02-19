import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:gokiiw/const/app_strings.dart';
import 'package:gokiiw/const/gradien.dart';

import 'package:gokiiw/ui/route/route.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../const/app_colors.dart';

/*class SplashScreen extends StatefulWidget {


  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 3), () => Get.toNamed(signUp));
    super.initState();
  }
  Widget build(BuildContext context)  {


  return SafeArea(
      child: Scaffold(
        //scaffoldBackgroundColor: AppColors.scaffoldColor,
        backgroundColor: AppColors.scaffoldColor,

        body: Center(
          child: Container(
            child: Text(
              "Go\nKiiw",
              style: TextStyle(fontSize: 79.sp,color: Colors.white),

            ),
          ),
        ),
      ),
    );
  }
}
*/
class SplashScreen extends StatefulWidget {
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 4), () => Get.toNamed(logIn));
    super.initState();;
  }

  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: AppColors.scaffoldColor,
          body: Container(
            decoration: appColor(),
            width: double.maxFinite,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Image.asset("assets/icons/Go Kiiw (1).png"),




                  /*Text(
                    "Go",style: GoogleFonts.getFont('Kanit',fontSize: 225.sp,color: Colors.white,),
                   // style: TextStyle(fontSize: 125.sp, color: Colors.white),
                    //style: AppStyles().myTextStyle,
                  ),
                  Text(
                    "kiiw",style: GoogleFonts.getFont('Kanit',fontSize: 79.sp,color: Colors.white,),

                    //style: AppStyles().myTextStyle,
                  ),*/
                ],
              ),
            ),
          )),
    );
  }
}
