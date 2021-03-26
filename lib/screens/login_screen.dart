import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:mallige/screens/home_screen.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController idController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  login() {
    Get.focusScope.unfocus();

    String id = idController.text;
    String password = passwordController.text;
    if (id == "1234" && password == "120") {
      GetStorage box = GetStorage();
      box.write("id", "1234");
      box.write("password", "120");
      Get.to(HomeScreen());
    } else {
      Get.rawSnackbar(message: "Invalid Credentials");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Theme.of(context).primaryColor),
        backgroundColor: Colors.white,
        title: Text(
          "Login",
          style: TextStyle(
            color: Get.theme.primaryColor,
          ),
        ),
      ),
      body: Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: 32),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: TextField(
                decoration: InputDecoration(labelText: "Farmer ID"),
                keyboardType: TextInputType.number,
                controller: idController,
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Container(
              child: TextField(
                decoration: InputDecoration(labelText: "Password"),
                keyboardType: TextInputType.number,
                controller: passwordController,
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            RaisedButton(
              color: Theme.of(context).primaryColor,
              child: Text(
                "Login",
                style: TextStyle(color: Colors.white),
              ),
              onPressed: () => login(),
            )
          ],
        ),
      ),
    );
  }
}
