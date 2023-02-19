import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:gokiiw/ui/route/route.dart';
import 'package:gokiiw/ui/views/home/home.dart';
import 'package:gokiiw/widgets/button.dart';

class Information extends StatefulWidget {
  const Information({Key? key}) : super(key: key);

  @override
  State<Information> createState() => _InformationState();
}

class _InformationState extends State<Information> {
  TextEditingController _genderController = TextEditingController();
  List<String> gender = ["Male", "Female", "Other"];
  List<String> countryImg = [
    "assets/icons/Ellipse 3.png",
    "assets/icons/Ellipse 3.png",
    "assets/icons/Ellipse 3.png"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color(0xFF001597E),
        centerTitle: true,
        title: const Text('Profile information'),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
          bottom: Radius.circular(15),
        )),
        /*flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: <Color>[Color(0xFF0017592),Color(0xFF001597E)]
            ),
          ),
        ),*/
      ),
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: Center(
          child: Column(
            //crossAxisAlignment: CrossAxisAlignment.center,
            //mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Stack(children: [
                CircleAvatar(
                  child: Image.asset("assets/icons/Ellipse.png"),
                  radius: 60,
                  backgroundColor: Colors.white,
                ),
                Padding(padding:EdgeInsets.only(left: 70,bottom: 0,top: 70),
                child: Icon(Icons.camera_alt_outlined,size: 40,),)
              ]

              ),

              TextFormField(
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    /*prefixIcon: Image.asset("assets/icons/Vector (5).png",
                        height: 2,
                        //fit:BoxFit.fill
                      ),*/
                    hintText: "Name",
                    // suffixStyle: TextStyle(fontSize: 28)
                  )
                  // AppStyles().textFieldDecoration("Profile information "),
                  ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                keyboardType: TextInputType.text,
                decoration: InputDecoration(hintText: "user@gmail.com"),
              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                keyboardType: TextInputType.text,

                decoration: InputDecoration(hintText: "Phone number"),
                //AppStyles().textFieldDecoration("Privacy policy"),
              ),
              //Button("Save", ()=>Get.toNamed(information,)),

              SizedBox(
                height: 20,
              ),
              TextField(
                controller: _genderController,
                readOnly: true,
                decoration: InputDecoration(
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  hintText: "Gender",
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
                height: 20,
              ),
              TextFormField(
                keyboardType: TextInputType.text,

                decoration: InputDecoration(hintText: "Address"),
                //AppStyles().textFieldDecoration("Privacy policy"),
              ),
              SizedBox(
                height: 20,
              ),

              Padding(
                padding: const EdgeInsets.only(left: 30, right: 30),
                child: Button(
                    "Seves",
                    gradient: LinearGradient(
                        begin: Alignment.centerLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          Color(0xFF002F76),
                          Color(0xFF00A5AF),
                        ]),
                    () => Get.to(
                          Home(),
                        )),
              ),

              /*TextField(
              obscureText: true,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Privacy policy',
              ),
            ),*/
            ],
          ),
        ),
      ),
    );
  }
}
