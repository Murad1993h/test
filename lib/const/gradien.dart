
import 'package:flutter/material.dart';

appColor({borderRadius, border}) {
  return BoxDecoration(

    boxShadow: [
      BoxShadow(
        color: Color(0xFF0017575),
        blurRadius: 10,
        spreadRadius: 1,
        offset: Offset(0, 6),
      )
    ],
      borderRadius: borderRadius,
      border: border,
      gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,

          colors: [
            Color(0xFF002F76),
            Color(0xFF00A5AF),



          ]));
}