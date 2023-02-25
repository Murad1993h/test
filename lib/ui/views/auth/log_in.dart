import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:gokiiw/const/app_colors.dart';
import 'package:gokiiw/const/forget%20password.dart';
import 'package:gokiiw/const/gradien.dart';
import 'package:gokiiw/styles/style.dart';
import 'package:gokiiw/ui/route/route.dart';
import 'package:gokiiw/ui/views/home/qr/example.dart';

import 'package:gokiiw/widgets/button.dart';
import 'package:google_fonts/google_fonts.dart';

class LogIn extends StatefulWidget {
  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  TextEditingController _emailController = TextEditingController();

  TextEditingController _passwordController = TextEditingController();

  bool _isObscure = true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: appColor(),
          child: Padding(
            padding: EdgeInsets.only(left: 25.w, right: 25.w, top: 80.h),
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    "assets/icons/user-svgrepo.png",
                    fit: BoxFit.cover,
                    height: 120.h,
                  ),
                  Text(
                    "Log in",
                    style: GoogleFonts.getFont('Kanit',fontSize: 80.sp,color: Colors.white),
                  ),
                  //TextStyle(fontSize: 125.sp,color: Colors.white,

                  SizedBox(
                    height: 60.h,
                  ),


                  Padding(
                    padding: const EdgeInsets.only(left: 30, right: 30),
                    child: TextFormField(

                      controller: _emailController,
                      decoration: InputDecoration (


                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white)
                        ),
                          enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.white)),
                          hintText: "Email",



                          hintStyle: TextStyle(
                            fontSize: 18.sp,color: Colors.white,
                            //fontWeight: FontWeight.bold,

                          )
                      ) ,
                      style: TextStyle(color: Colors.white),
                      validator: (value) {
                        if (value == null || value.trim().isEmpty) {
                          return 'This field is required'.tr;
                        }
                        if (!value.trim().contains("@")) {
                          return 'Email must contain @ sign ';
                        }
                        // Return null if the entered username is valid
                        return null;
                      },

                    ),
                  ),

                  SizedBox(
                    height: 10.h,
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 30, right: 30, bottom: 0),
                    child:

                    TextFormField(
                      controller: _passwordController,
                      keyboardType: TextInputType.text,
                      decoration: AppStyles().textFieldDecoration(
                        "Password ",

                      ),
                      onTap: (){
                        setState(() {
                          _isObscure = !_isObscure;
                        });
                        print(_isObscure);
                      },
                      obscureText: _isObscure,
                      validator: (value){
                        if (value == null || value.trim().isEmpty) {
                          return 'This field is required'.tr;
                        }
                        if (value.trim().length < 8) {
                          return 'Password must be at least 8 characters in length';
                        }
                        // Return null if the entered password is valid
                        return null;

                      },
                    ),
                  ),
                  TextButton(

                      onPressed: () {},
                      child: Padding(
                        padding: const EdgeInsets.only(left: 150,bottom: 10),
                        child: InkWell(
                          onTap: () => Get.toNamed(forget
                          ),
                          child: Text(
                            'Forgot Password?',
                            style: TextStyle(

                              //decoration: TextDecoration.underline,
                              color: Colors.white,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                        ),
                      )),
                  SizedBox(
                    height: 80.h,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 60, right: 60),
                    child: Button(
                      "Login",
                      /*style: GoogleFonts.getFont('Kanit',fontSize: 80.sp,color: Colors.white),*/
                      () => Get.toNamed(home),
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),

                  SizedBox(
                    height: 50.h,
                  ),
                  RichText(
                      text: TextSpan(
                          text: "Dont have Registerd yet?  ",
                          style: TextStyle(
                              fontSize: 18.sp,
                              fontWeight: FontWeight.w300,
                              color: Colors.white),
                          children: [
                        TextSpan(
                            text: "Sign in",style: GoogleFonts.getFont('Kanit',fontSize: 18.sp,color: Colors.white,decoration: TextDecoration.underline,fontWeight: FontWeight.w600,),

                            recognizer: TapGestureRecognizer()
                              ..onTap = () => Get.toNamed(signUp)),
                      ]))
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
