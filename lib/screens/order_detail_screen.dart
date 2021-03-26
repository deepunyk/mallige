import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mallige/screens/order_confirm_screen.dart';

class OrderDetailScreen extends StatefulWidget {
  @override
  _OrderDetailScreenState createState() => _OrderDetailScreenState();
}

class _OrderDetailScreenState extends State<OrderDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Theme.of(context).primaryColor),
        backgroundColor: Colors.white,
        title: Text(
          "Confirm Order",
          style: TextStyle(
            color: Get.theme.primaryColor,
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Username: Demo User",
                    style: TextStyle(
                        fontSize: 16, color: Theme.of(context).primaryColor),
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  Text(
                    "Mobile: 9481517627",
                    style: TextStyle(fontSize: 14),
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  Text(
                    "Hotspot Selected: Udyavara",
                    style: TextStyle(fontSize: 14),
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  Text(
                    "Quantity: 10",
                    style: TextStyle(fontSize: 14),
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  Text(
                    "Payment: COD",
                    style: TextStyle(fontSize: 14),
                  ),
                ],
              ),
            ),
          ),
          InkWell(
            onTap: () {
              Get.to(OrderConfirmScreen(), transition: Transition.cupertino);
            },
            child: Container(
              color: Theme.of(context).primaryColor,
              width: double.infinity,
              padding: EdgeInsets.symmetric(vertical: 16),
              alignment: Alignment.center,
              child: Text(
                "Confirm Order",
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
