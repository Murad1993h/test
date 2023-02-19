import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class Button extends StatelessWidget {
  String title;
  final gradient;
  final Function onAction;
  Button(this.title, this.onAction, {this.gradient});
  RxBool _value = false.obs;
  //const VioletButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => InkWell(
        onTap: () {
          _value.value = false;
          onAction();
        },
        child: Container(
          height: 60.h,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.white),
            gradient: gradient,
            borderRadius: BorderRadius.all(
              Radius.circular(
                12.r,
              ),
            ),
          ),
          child: _value == false
              ? Center(
                  child: Text(
                    title,
                    style: GoogleFonts.getFont('Kanit',
                        fontSize: 26.sp, color: Colors.white),
                  ),
                )
              : Row(
                 // mainAxisAlignment: MainAxisAlignment.center,

                ),
        ),
      ),
    );
  }
}
