import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mallige/data/constants.dart';
import 'package:mallige/screens/stock_updated_screen.dart';

class MalligeAddStockScreen extends StatefulWidget {
  @override
  _MalligeAddStockScreenState createState() => _MalligeAddStockScreenState();
}

class _MalligeAddStockScreenState extends State<MalligeAddStockScreen> {
  int selectedAtti = 1;
  int selectedChendu = 1;
  int selectedIndividual = 50;

  dropDown(int selected, String title, List<int> lists) {
    return Container(
      child: DropdownButtonFormField<int>(
        value: selected,
        isExpanded: true,
        decoration: InputDecoration(
          labelText: title,
        ),
        items: lists.map((int value) {
          return DropdownMenuItem<int>(
            value: value,
            child: Text(value.toString()),
          );
        }).toList(),
        onChanged: (val) {
          selected = val;
          setState(() {});
        },
      ),
    );
  }

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
      body: Container(
        child: Column(
          children: [
            Expanded(
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
                    height: Get.height * 0.1,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    child: Column(
                      children: [
                        dropDown(
                            selectedAtti, "Selected Atti", Constants.stockList),
                        dropDown(selectedChendu, "Selected Chendu",
                            Constants.stockList),
                        dropDown(selectedIndividual, "Selected Individual",
                            Constants.individualList)
                      ],
                    ),
                  )
                ],
              ),
            ),
            InkWell(
              onTap: () {
                Get.to(StockUpdatedScreen(), transition: Transition.cupertino);
              },
              child: Container(
                color: Theme.of(context).primaryColor,
                width: double.infinity,
                padding: EdgeInsets.symmetric(vertical: 16),
                alignment: Alignment.center,
                child: Text(
                  "Update Stock",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontSize: 16),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
