import 'dart:convert';
import 'package:http/http.dart' as http;

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:gokiiw/const/app_colors.dart';

import 'package:gokiiw/styles/style.dart';
import 'package:gokiiw/ui/route/route.dart';
import 'package:gokiiw/ui/views/auth/otp.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
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
  final _formKey = GlobalKey<FormState>();
  TextEditingController _usernameController = TextEditingController();

  TextEditingController _emailController = TextEditingController();
  TextEditingController _phoneController = TextEditingController();

  TextEditingController _passwordController = TextEditingController();

  TextEditingController _confirmpasswordController = TextEditingController();


  _signup () async{
    var data ={
      'username': _usernameController.text,
      'email ' : _emailController.text,
      'phone' : _phoneController.text,
      ' password' : _passwordController.text,
      'confirm_password' : _confirmpasswordController.text,
    };
    var res = CallApi().postData(data, signUp );
    var body = json.decode(res.body);
    if(body['success']){
      Navigator.push(context,
        new MaterialPageRoute(builder: (context)=>Scaffold(

        ))
          );
      
    }

  }



  bool _isLoading = false;
  bool _isObscure = true;
  bool _isbuttonactive = true;

  @override

  /*void dispose(){
    super.dispose();
    _phoneController.dispose();
    _usernameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();

  }


      */

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
                      height: 35.h,
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
                          SizedBox(
                            height: 13,
                          ),
                          TextFormField(
                            controller: _emailController,
                            keyboardType: TextInputType.emailAddress,
                            decoration: AppStyles().textFieldDecoration(
                              "Email ",
                            ),
                          ),
                          Container(
                            child: IntlPhoneField(
                              decoration: InputDecoration(
                                focusedBorder: UnderlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.white)),
                                enabledBorder: UnderlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.white)),
                                hintStyle: TextStyle(
                                  fontSize: 18.sp, color: Colors.white,
                                  //fontWeight: FontWeight.bold,
                                ),
                              ),
                              onChanged: (phone) {
                                print(
                                  phone.completeNumber,
                                );
                              },
                              onCountryChanged: (country) {
                                print(
                                  'Country changed to: ' + country.name,
                                );
                              },
                            ),
                          ),
                          TextFormField(
                            controller: _passwordController,
                            keyboardType: TextInputType.text,
                            decoration: AppStyles().textFieldDecoration(
                              "Password ",
                            ),
                            onTap: () {
                              setState(() {
                                _isObscure = !_isObscure;
                              });
                              print(_isObscure);
                            },
                            obscureText: _isObscure,
                            validator: (value) {
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
                          SizedBox(
                            height: 13,
                          ),
                          TextFormField(
                            controller: _confirmpasswordController,
                            keyboardType: TextInputType.text,
                            decoration: AppStyles().textFieldDecoration(
                              "Confirm password ",
                            ),
                            onTap: () {
                              setState(() {
                                _isObscure = !_isObscure;
                              });
                              print(_isObscure);
                            },
                            obscureText: _isObscure,
                            validator: (value) {
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
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 40.h,
                    ),




















                    Padding(
                      padding: const EdgeInsets.only(left: 70, right: 70),
                      child: Button(
                       _isLoading ? 'Creating.....'  :"Sign in",
                          //onPressed:_handleSignup
                            () => _isLoading ? null :_signup()
                      ),
                    ),























                    /* Button("Sign Up,

                          ()=> Get.toNamed(userForm),
                    ),*/

                    SizedBox(
                      height: 35.h,
                    ),
                    RichText(
                        text: TextSpan(
                            text: _isLoading
                                ? 'Creating...'
                                : "Already have an account?  ",
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


 /* Future<void> _handleSignup() async {
    setState(() {
      _isLoading = true;
    });

    var data ={

      'username': _usernameController.text,
      'email ' : _emailController.text,
      'phone' : _phoneController.text,
      ' password' : _passwordController.text,
      'confirm_password' : _confirmpasswordController.text,

    };

    var res = await CallApi().postData(data, 'register');
    var body = json.decode(res.body);
    if (body['success']){
      SharedPreferences localStorage = await SharedPreferences.getInstance();
      localStorage.setString('token', body['token']);
      localStorage.setString('user', jsonEncode(body['user']));



      var userjson = localStorage.getString('user');
      var user = jsonDecode('userjson');
     ()=> Get.toNamed(home);


    }

    setState(() {
      _isLoading = true;
    });



  }*/
}
