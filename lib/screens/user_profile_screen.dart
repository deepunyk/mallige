import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mallige/data/constants.dart';
import 'package:mallige/widgets/custom_network_image.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class ChartSampleData {
  final String x;
  final int y;
  final String text;

  ChartSampleData({this.x, this.y, this.text});
}

class UserProfileScreen extends StatefulWidget {
  @override
  _UserProfileScreenState createState() => _UserProfileScreenState();
}

class _UserProfileScreenState extends State<UserProfileScreen> {
  List<PieSeries<ChartSampleData, String>> _getDefaultPieSeries() {
    final List<ChartSampleData> pieData = <ChartSampleData>[
      ChartSampleData(x: 'Mon', y: 1500, text: 'Mon \n ₹1500'),
      ChartSampleData(x: 'Tue', y: 350, text: 'Tue \n ₹350'),
      ChartSampleData(x: 'Wed', y: 750, text: 'Wed \n ₹750'),
      ChartSampleData(x: 'Thur', y: 450, text: 'Thur \n ₹450'),
      ChartSampleData(x: 'Fri', y: 735, text: 'Fri \n ₹735'),
      ChartSampleData(x: 'Sat', y: 600, text: 'Sat \n ₹600'),
      ChartSampleData(x: 'Sun', y: 800, text: 'Sun \n ₹800'),
    ];
    return <PieSeries<ChartSampleData, String>>[
      PieSeries<ChartSampleData, String>(
          explode: true,
          explodeIndex: 0,
          explodeOffset: '10%',
          dataSource: pieData,
          xValueMapper: (ChartSampleData data, _) => data.x,
          yValueMapper: (ChartSampleData data, _) => data.y,
          dataLabelMapper: (ChartSampleData data, _) => data.text,
          startAngle: 90,
          endAngle: 90,
          dataLabelSettings: DataLabelSettings(isVisible: true)),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Theme.of(context).primaryColor),
        backgroundColor: Colors.white,
        title: Text(
          "Profile",
          style: TextStyle(
            color: Get.theme.primaryColor,
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Container(
                width: double.infinity,
                child: Column(
                  children: [
                    Card(
                      child: Container(
                        width: double.infinity,
                        child: Column(
                          children: [
                            SizedBox(
                              height: Get.height * 0.05,
                            ),
                            Container(
                              height: Get.width * 0.3,
                              width: Get.width * 0.3,
                              decoration: BoxDecoration(shape: BoxShape.circle),
                              child: ClipOval(
                                child: CustomNetWorkImage(
                                    Constants.userProfilePic),
                              ),
                            ),
                            SizedBox(
                              height: 16,
                            ),
                            Text(
                              Constants.userName,
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w500),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              Constants.userPhone,
                              style: TextStyle(
                                  fontSize: 14,
                                  color: Theme.of(context).primaryColor),
                            ),
                            SizedBox(
                              height: 16,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Card(
                        child: Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                      child: Column(
                        children: [
                          Text(
                            "Today's Report",
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Theme.of(context).primaryColor),
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          Text(
                            "Stocks:",
                            style: TextStyle(fontSize: 16),
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Text(
                            "Atti: 16, Chendu: 0, Individual: 50",
                            style: TextStyle(
                              fontSize: 16,
                            ),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 32),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Recieved Orders: 10",
                                  style: TextStyle(fontSize: 16),
                                ),
                                Text(
                                  "Revencue: ₹1500",
                                  style: TextStyle(fontSize: 16),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    )),
                    Card(
                      child: Container(
                        padding: EdgeInsets.symmetric(vertical: 16),
                        child: Column(
                          children: [
                            Text(
                              "Weekly Report",
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: Theme.of(context).primaryColor),
                            ),
                            SizedBox(
                              height: 16,
                            ),
                            SizedBox(
                              height: Get.height * 0.4,
                              child: SfCircularChart(
                                series: _getDefaultPieSeries(),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          InkWell(
            onTap: () {},
            child: Container(
              color: Theme.of(context).primaryColor,
              width: double.infinity,
              padding: EdgeInsets.symmetric(vertical: 16),
              alignment: Alignment.center,
              child: Text(
                "Edit Profile",
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
