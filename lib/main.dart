import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:gokiiw/const/app_colors.dart';
import 'package:gokiiw/const/app_strings.dart';
import 'package:gokiiw/ui/route/route.dart';
import 'package:gokiiw/ui/views/splash_screen.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(430, 932),
      builder: (BuildContext context, Widget? child) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          title: AppString.appName,
          theme: ThemeData(
              //primarySwatch:  Colors.cyan,
              /*textTheme: GoogleFonts.kanitTextTheme(
                Theme.of(context).textTheme.apply(),
              ),*/
         // scaffoldBackgroundColor: AppColors.scaffoldColor
          ),
          initialRoute: splash,
          getPages:getPages,
          home: SplashScreen(),
        );
      },
    );
  }
}
