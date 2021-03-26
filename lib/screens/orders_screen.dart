import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mallige/screens/order_detail_screen.dart';

class OrdersScreen extends StatefulWidget {
  @override
  _OrdersScreenState createState() => _OrdersScreenState();
}

class _OrdersScreenState extends State<OrdersScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Theme.of(context).primaryColor),
        backgroundColor: Colors.white,
        title: Text(
          "Orders",
          style: TextStyle(
            color: Get.theme.primaryColor,
          ),
        ),
      ),
      body: Container(
        child: ListView.builder(
          itemCount: 16,
          itemBuilder: (context, index) {
            return InkWell(
              onTap: () {
                Get.to(OrderDetailScreen(), transition: Transition.cupertino);
              },
              child: Card(
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Username: Demo User",
                        style: TextStyle(
                            fontSize: 16,
                            color: Theme.of(context).primaryColor),
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
            );
          },
        ),
      ),
    );
  }
}
