import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_verification_code/flutter_verification_code.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:gokiiw/const/app_colors.dart';
import 'package:gokiiw/const/gradien.dart';
import 'package:gokiiw/ui/route/route.dart';
import 'package:gokiiw/ui/views/home/home.dart';
import 'package:gokiiw/widgets/button.dart';

class Otp extends StatefulWidget {
  const Otp({Key? key}) : super(key: key);

  @override
  State<Otp> createState() => _OtpState();
}

class _OtpState extends State<Otp> {
  bool _onEditing = true;
  String? _code;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: appColor(),
          child: Padding(
            padding: const EdgeInsets.only(top: 90),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Center(
                      child: Text(
                    "Verification",
                    style: TextStyle(fontSize: 55.sp, color: Colors.white),
                  )),
                  SizedBox(
                    height: 10,
                  ),
                  Center(
                    child: Text(
                      'Please enter the 6 digit code sent to\n                     your number.',
                      style: TextStyle(
                        fontSize: 21.sp,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  SizedBox(height: 25.0),
                  

                  OtpTextField(
                    numberOfFields: 5,
                    borderColor: Color(0xFF512DA8),
                    //set to true to show as box or false to show as dash
                    //showFieldAsBox: true,
                    //runs when a code is typed in
                    onCodeChanged: (String code) {
                      //handle validation or checks here
                    },
                    //runs when every textfield is filled
                    onSubmit: (String verificationCode) {
                      showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              title: Text("Verification Code"),
                              content: Text('Code entered is $verificationCode'),
                            );
                          });
                    }, // end onSubmit
                  ),
                  SizedBox(
                    height: 60.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 40, right: 40),
                    child: Button(
                        "Verify",
                        () => Get.to(
                              Home(),
                            )),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Center(
                      child: _onEditing
                          ? InkWell(onTap: ()=> Get.toNamed(resum),
                            child: const Text(
                                'Resend code',
                                style: TextStyle(color: Colors.white, fontSize: 16),
                              ),
                          )
                          : Text(
                              'Your code: $_code',
                              style: TextStyle(color: Colors.white),
                            ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
