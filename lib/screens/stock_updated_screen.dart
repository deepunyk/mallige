import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mallige/screens/home_screen.dart';

class StockUpdatedScreen extends StatefulWidget {
  @override
  _StockUpdatedScreenState createState() => _StockUpdatedScreenState();
}

class _StockUpdatedScreenState extends State<StockUpdatedScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Theme.of(context).primaryColor),
        backgroundColor: Colors.white,
        title: Text(
          "MALLIGE Stock",
          style: TextStyle(
            color: Get.theme.primaryColor,
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 32),
              child: Column(
                children: [
                  SizedBox(
                    height: Get.height * 0.08,
                  ),
                  Icon(
                    Icons.done_outline_sharp,
                    color: Colors.green,
                    size: 52,
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Text(
                    "Stock has been updated successfully",
                    style: TextStyle(fontSize: 22),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Total No. of Atti:",
                        style: TextStyle(fontSize: 18),
                      ),
                      Text(
                        "16",
                        style: TextStyle(
                            fontSize: 18,
                            color: Theme.of(context).primaryColor),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Total No. of Chendu:",
                        style: TextStyle(fontSize: 18),
                      ),
                      Text(
                        "8",
                        style: TextStyle(
                            fontSize: 18,
                            color: Theme.of(context).primaryColor),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Total No. of Individuals:",
                        style: TextStyle(fontSize: 18),
                      ),
                      Text(
                        "50",
                        style: TextStyle(
                            fontSize: 18,
                            color: Theme.of(context).primaryColor),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          InkWell(
            onTap: () {
              Get.offAll(HomeScreen(), transition: Transition.cupertino);
            },
            child: Container(
              color: Theme.of(context).primaryColor,
              width: double.infinity,
              padding: EdgeInsets.symmetric(vertical: 16),
              alignment: Alignment.center,
              child: Text(
                "Continue",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    fontSize: 16),
              ),
            ),
          )
        ],
      ),
    );
  }
}
