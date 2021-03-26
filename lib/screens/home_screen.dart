import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mallige/screens/mallige_add_stock_screen.dart';
import 'package:mallige/widgets/custom_drawer.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: SafeArea(
        child: Drawer(
          child: CustomDrawer(),
        ),
      ),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Theme.of(context).primaryColor),
        backgroundColor: Colors.white,
        title: Text(
          "MALLIGE",
          style: TextStyle(
            color: Get.theme.primaryColor,
          ),
        ),
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          children: [
            Container(
              color: Theme.of(context).primaryColor,
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 32),
              width: double.infinity,
              child: Column(
                children: [
                  Text(
                    "Today's Price: ₹500",
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Text(
                    "Date: 27/03/2021",
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Text(
                    "Updated At: 08:00AM",
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: Get.height * 0.05,
            ),
            InkWell(
              onTap: () {
                Get.to(MalligeAddStockScreen(),
                    transition: Transition.cupertino);
              },
              child: Container(
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Theme.of(context).primaryColor),
                width: Get.width * 0.5,
                height: Get.width * 0.5,
                alignment: Alignment.center,
                child: Text(
                  "Add Mallige\nStock",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
