import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:mallige/screens/home_screen.dart';
import 'package:mallige/screens/login_screen.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(seconds: 1), () {
      if (GetStorage().hasData("id")) {
        Get.offAll(HomeScreen());
      } else {
        Get.offAll(LoginScreen());
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "MALLIGE",
              style: TextStyle(
                  fontSize: 30, fontWeight: FontWeight.w700, letterSpacing: 1),
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              "#VocalForLocal",
              style: TextStyle(
                  color: Theme.of(context).primaryColor, fontSize: 16),
            )
          ],
        ),
      ),
    );
  }
}
