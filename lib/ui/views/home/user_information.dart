import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:gokiiw/ui/route/route.dart';
import 'package:gokiiw/widgets/button.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

import '../../../styles/style.dart';

class UserInformation extends StatefulWidget {
  const UserInformation({Key? key}) : super(key: key);

  @override
  State<UserInformation> createState() => _UserInformationState();
}

class _UserInformationState extends State<UserInformation> {
  TextEditingController _genderController = TextEditingController();
  List<String> gender = ["Account 1", "Accunt2", "Account2"];
  List<String> countryImg = [
    "assets/icons/Ellipse 3.png",
    "assets/icons/Ellipse 3.png",
    "assets/icons/Ellipse 3.png"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF001597E),
        centerTitle: true,
        title: const Text('User information'),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(15),
            )),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: SingleChildScrollView(
          //scrollDirection: Axis.horizontal,
          child: Column(
            children: [
              TextField(
                controller: _genderController,
                readOnly: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15)),
                  labelText: 'Section',
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  hintText: "Deposit",
                  suffixIcon: DropdownButton<String>(
                    items: gender.map((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: new Text(value),
                        onTap: () {
                          setState(() {
                            _genderController.text = value;
                          });
                        },
                      );
                    }).toList(),
                    onChanged: (_) {},
                  ),
                ),
              ),

              SizedBox(
                height: 25.sp,
              ),

              Container(
                child: Padding(
                  padding: const EdgeInsets.only(),
                  child: IntlPhoneField(

                    decoration: InputDecoration(




                      labelText: '',
                      hintText: "",

                      floatingLabelBehavior: FloatingLabelBehavior.always,


                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15.sp),


                        borderSide: BorderSide(),
                      ),
                    ),


                    onChanged: (phone) {
                      print(phone.completeNumber);
                    },
                    onCountryChanged: (country) {
                      print('Country changed to: ' + country.name);
                    },

                  ),
                ),
              ),








              SizedBox(
                height: 10,
              ),
              TextField(
                // obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15)),
                  labelText: 'Full name',
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  hintText: '',
                ),
              ),
              SizedBox(
                height: 25.sp,
              ),
              TextField(
                // obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15)),
                  labelText: 'NOte',
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  hintText: '',
                ),
              ),
              SizedBox(
                height: 30,
              ),
              /*TextField(
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Password',
                ),
              )*/
              Padding(
                padding: const EdgeInsets.only(left: 30, right: 30),
                child: Button(
                  "Submit",

                  gradient: LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        Color(0xFF002F76),
                        Color(0xFF00A5AF),
                      ]),
                  () => Get.toNamed(your),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
