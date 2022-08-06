import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:qaren/Constantes/constantes.dart';
import 'package:sizer/sizer.dart';

class DrawerScreen extends StatefulWidget {
  const DrawerScreen({Key? key}) : super(key: key);

  @override
  _DrawerScreenState createState() => _DrawerScreenState();
}

class _DrawerScreenState extends State<DrawerScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.h,
      width: 100.w,
      color: Colors.white,
      child: ListView(
        children: [
          Container(
            height: 15.h,
            width: 100.w,
            decoration: BoxDecoration(
                // color: Colors.red,
                ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 14.h,
                  width: 30.w,
                  // color: Colors.pink,
                  // margin: EdgeInsets.only(top: 45, right: 20.sp),
                  child: Image.asset(
                    'assets/qarn.png',
                    fit: BoxFit.fill,
                  ),
                ),
              ],
            ),
          ),
          DrawerCard(
            label: "Home",
            icon: (Icons.home_outlined),
          ),
          DrawerCard(
            label: "Compare products",
            icon: (Icons.compare_rounded),
          ),
          DrawerCard(
            label: "Top 10 Mobiles",
            icon: (Icons.mobile_screen_share_rounded),
          ),
          DrawerCard(
            label: "Deals",
            icon: (Icons.money_off_csred_rounded),
          ),
          DrawerCard(
            label: "Latest News & Reviews",
            icon: (Icons.next_week_sharp),
          ),
          Container(
            margin: EdgeInsets.only(top: 5.sp, bottom: 5.sp),
            height: 7.h,
            width: 100.w,
            color: Color(0xffEEF2F4),
            child: Center(
                child: Text(
              "Categories",
              style: TextStyle(
                  color: kPrimaryColor,
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w700),
            )),
          ),
          DrawerCard(
            label: "Mobiles",
            icon: (Icons.mobile_friendly_rounded),
          ),
          DrawerCard(
            label: "Tablets",
            icon: (Icons.tab_rounded),
          ),
          DrawerCard(
            label: "Laptops",
            icon: (Icons.laptop_rounded),
          ),
          DrawerCard(
            label: "Televisions",
            icon: (Icons.tv),
          ),
        ],
      ),
    );
  }
}

class DrawerCard extends StatelessWidget {
  final String label;
  final IconData icon;

  const DrawerCard({Key? key, required this.label, required this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 7.h,
      width: 100.w,
      // color: Colors.lightGreen,
      child: Row(
        children: [
          SizedBox(
            width: 5.w,
          ),
          Icon(
            icon,
            color: Color(0xffFFB906),
            size: 24.sp,
          ),
          SizedBox(
            width: 4.w,
          ),
          Text(
            label,
            style: TextStyle(
              color: kTextColor,
              fontSize: 12.sp,
              fontWeight: FontWeight.w400,
            ),
          )
        ],
      ),
    );
  }
}
