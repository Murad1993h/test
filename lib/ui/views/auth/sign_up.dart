import 'dart:convert';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:gokiiw/const/app_colors.dart';

import 'package:gokiiw/styles/style.dart';
import 'package:gokiiw/ui/route/route.dart';
import 'package:gokiiw/ui/views/auth/otp.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../api/api.dart';
import '../../../const/gradien.dart';
import '../../../widgets/button.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUp extends StatefulWidget {
  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  TextEditingController _usernameController = TextEditingController();

  TextEditingController _emailController = TextEditingController();

  TextEditingController _passwordController = TextEditingController();

  TextEditingController _confirmpasswordController = TextEditingController();
  bool _isLoading = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        //backgroundColor: AppColors.scaffoldColor,
        //AppColors.scaffoldColor,
        body: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: appColor(),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Center(
              child: Padding(
                padding: const EdgeInsets.only(left: 25, right: 25, top: 50),
                //.only(left: 25.w, right: 25.w, top: 80.h)
                child: Column(
                  /*mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,*/
                  children: [
                    Image.asset(
                      "assets/icons/user-svgrepo.png",
                      fit: BoxFit.cover,
                      height: 120.h,
                    ),
                    Text(
                      "Sign in",
                      style: GoogleFonts.getFont('Kanit',
                          fontSize: 80.sp, color: Colors.white),

                      /*style:
                      TextStyle(
                          fontSize: 80.sp, color: Colors.white,fontFamily:GoogleFonts.getFont('Kanit')),*/
                    ),
                    SizedBox(
                      height: 50.h,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 30, right: 30),
                      child: Column(
                        children: [
                          TextField(
                            controller: _usernameController,
                            keyboardType: TextInputType.emailAddress,
                            decoration:
                                AppStyles().textFieldDecoration("User name "),
                          ),
                          TextFormField(
                            controller: _emailController,
                            keyboardType: TextInputType.emailAddress,
                            decoration: AppStyles().textFieldDecoration(
                              "Email ",
                            ),
                          ),
                          TextFormField(
                            controller: _passwordController,
                            keyboardType: TextInputType.text,
                            decoration: AppStyles().textFieldDecoration(
                              "Password ",
                            ),
                          ),
                          TextFormField(
                            controller: _confirmpasswordController,
                            keyboardType: TextInputType.text,
                            decoration: AppStyles().textFieldDecoration(
                              "Confirm password ",
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 40.h,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 70, right: 70),
                      child: Button(
                        "Sign in",
                        () => Get.toNamed(otp),
                      ),
                    ),

                    /* Button("Sign Up,

                          ()=> Get.toNamed(userForm),
                    ),*/

                    SizedBox(
                      height: 60.h,
                    ),
                    RichText(
                        text: TextSpan(
                            text: "Already have an account?  ",
                            style: TextStyle(
                                fontSize: 18.sp,
                                fontWeight: FontWeight.w300,
                                color: Colors.white),
                            children: [
                          TextSpan(
                            text: "Log in",
                            style: GoogleFonts.getFont(
                              'Kanit',
                              fontSize: 18.sp,
                              color: Colors.white,
                              decoration: TextDecoration.underline,
                              fontWeight: FontWeight.w600,
                            ),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () => Get.toNamed(logIn),
                          ),
                        ]))
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }






  void _handleLogin() async {
    setState(() {
      _isLoading = true;
    });

    var data = {

      //'email' : mailController.text,

    };

    var res = await CallApi().postData(data, 'register');
    var body = json.decode(res.body);
    if(body['success']){
      SharedPreferences localStorage = await SharedPreferences.getInstance();
      localStorage.setString('token', body['token']);
      localStorage.setString('user', json.encode(body['user']));


      ()=> Get.toNamed(home);

     /* Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => home()));*/
    }




    setState(() {
      _isLoading = false;
    });



  }
}
