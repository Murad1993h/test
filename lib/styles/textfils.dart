import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppSearce {


  InputDecoration textFieldDecoration(String hint) =>
      InputDecoration(

          focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.white),

          ),
          enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.white)),
          prefixIcon: Icon(Icons.search,color: Colors.blue,),
         // suffixIcon: IconButton(icon: Icon(Icons.clear),),
          hintText: "Searce",


          hintStyle: TextStyle(
            fontSize: 18.sp, color: Colors.white,
            //fontWeight: FontWeight.bold,


          )
      );
}
/*
TextField(
decoration: InputDecoration(
prefixIcon: const Icon(Icons.search),
suffixIcon: IconButton(
icon: const Icon(Icons.clear),
onPressed: () {
*/
/* Clear the search field *//*

},
),
hintText: 'Search...',
border: InputBorder.none),
),*/
