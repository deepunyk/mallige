import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:mallige/data/constants.dart';
import 'package:mallige/screens/orders_screen.dart';
import 'package:mallige/screens/splash_screen.dart';
import 'package:mallige/screens/user_profile_screen.dart';
import 'package:mallige/widgets/custom_network_image.dart';

class CustomDrawer extends StatefulWidget {
  @override
  _CustomDrawerState createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {
  profileTile(double height, width, BuildContext context) {
    return InkWell(
      onTap: () {
        Get.close(1);
        Get.to(UserProfileScreen(), transition: Transition.leftToRight);
      },
      child: Container(
        padding: EdgeInsets.symmetric(
            vertical: height * 0.05, horizontal: width * 0.08),
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 70,
              width: 70,
              decoration: BoxDecoration(shape: BoxShape.circle),
              child: ClipOval(
                child: CustomNetWorkImage(Constants.userProfilePic),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              Constants.userName,
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
              textAlign: TextAlign.start,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
            SizedBox(
              height: 2,
            ),
            Text(
              Constants.userPhone,
              style: TextStyle(color: Get.theme.primaryColor, fontSize: 13),
            ),
          ],
        ),
      ),
    );
  }

  drawerItem(
    String title,
    IconData iconData,
    Function onTap,
    int index,
  ) {
    return ListTile(
      onTap: () {
        Get.close(1);
        onTap();
      },
      tileColor: 0 == index
          ? Get.theme.primaryColor.withOpacity(0.05)
          : Colors.transparent,
      title: Text(
        "$title",
        style:
            TextStyle(color: 0 == index ? Get.theme.primaryColor : Colors.grey),
      ),
      leading: Icon(
        iconData,
        color: 0 == index ? Get.theme.primaryColor : Colors.grey,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          profileTile(Get.height, Get.width, context),
          drawerItem("Home", Icons.home, () {}, 0),
          drawerItem("Orders", Icons.shopping_cart, () {
            Get.to(OrdersScreen(), transition: Transition.leftToRight);
          }, 1),
          drawerItem("Logout", Icons.logout, () {
            GetStorage().erase();
            Get.to(SplashScreen());
          }, 1),
        ],
      ),
    );
  }
}
