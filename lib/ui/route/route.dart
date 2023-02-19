import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:gokiiw/ui/views/auth/log_in.dart';
import 'package:gokiiw/ui/views/auth/otp.dart';


import 'package:gokiiw/ui/views/auth/sign_up.dart';
import 'package:gokiiw/ui/views/home/company_location.com.dart';
import 'package:gokiiw/ui/views/home/home.dart';
import 'package:gokiiw/ui/views/home/profile/information.dart';
import 'package:gokiiw/ui/views/home/profile/privacy_policy.dart';
import 'package:gokiiw/ui/views/home/profile/profile.dart';
import 'package:gokiiw/ui/views/home/profile/tokens.dart';
import 'package:gokiiw/ui/views/home/qr/example.dart';
//import 'package:gokiiw/ui/views/home/profile/profile_token.dart';
//import 'package:gokiiw/ui/views/home/profile/tokens.dart';
import 'package:gokiiw/ui/views/home/qr/qr_scan.dart';
import 'package:gokiiw/ui/views/home/user_information.dart';
import 'package:gokiiw/ui/views/home/your_token.dart';
import '../views/splash_screen.dart';






const String splash = '/splash-screen';
const String signUp = '/sign-up-screen';
const String logIn = '/log-In';
const String otp = '/otp';
const String home = '/home';
const String company = '/company-location';
const String user = '/user-information';
const String your = '/your-token';
const String profile = '/profile';
const String info = '/info-profile';
const String qr = '/qr-scan';
const String information = '/information';
const String tokens = '/tokens';
const String privacy = '/privacy-policy';
const String example = '/example';


List<GetPage> getPages =[
  GetPage(
    name: splash,
    page: () => SplashScreen(),
  ),
  GetPage(
    name: signUp,
    page: () => SignUp(),
  ),
  GetPage(name: logIn, page: ()=> LogIn(),
  ),
  GetPage(name: otp, page: ()=> Otp(),
  ),
  GetPage(name: home, page: ()=> Home(),
  ),
  GetPage(name: company, page: ()=> CompanyLocation(),
  ),
  GetPage(name: user, page: ()=> UserInformation(),
  ),
  GetPage(name: your, page: ()=>YourToken(),
  ),
  GetPage(name: profile, page: ()=>Profile(),),
  GetPage(name: qr, page: ()=>QrScan(),),
  GetPage(name: information, page: ()=>Information(),),
  GetPage(name: tokens, page: ()=> Tokens(),),
  GetPage(name: privacy, page: ()=> PrivacyPolicy(),),
  GetPage(name: example, page: ()=> Example(),),






];