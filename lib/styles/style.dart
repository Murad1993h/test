import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppStyles {


  InputDecoration textFieldDecoration(String hint) =>
      InputDecoration(
          focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.white)
          ),
          enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.white)),
          hintText: hint,


          hintStyle: TextStyle(
            fontSize: 18.sp, color: Colors.white,
            //fontWeight: FontWeight.bold,


          )
      );
}