import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:qaren/Constantes/constantes.dart';
import 'package:qaren/Screens/home_screen.dart';
import 'package:qaren/Widegts/button.dart';
import 'package:sizer/sizer.dart';

class VerifiedScreen extends StatefulWidget {
  const VerifiedScreen({Key? key}) : super(key: key);

  @override
  _VerifiedScreenState createState() => _VerifiedScreenState();
}

class _VerifiedScreenState extends State<VerifiedScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 100.h,
        width: 100.w,
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 17.h, bottom: 5.h),
              height: 35.h,
              width: 100.w,
              child: Image.asset("assets/verified.png"),
            ),
            Text('Verified', textAlign: TextAlign.center, style: TextStyle(
                color: kPrimaryColor,
                fontFamily: 'Roboto',
                fontSize: 26.sp,
                fontWeight: FontWeight.w600,
                height: 1
            ),),
            SizedBox(height: 1.h,),
            Text(
              "You have successfully verified\nthe account",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontSize: 15.sp,
              ),
            ),
            SizedBox(height: 5.h,),
            GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => HomeSceeen()));
                  },
                child: Button(title: "GO TO THE DASHBOARD",)),
          ],
        ),
      ),
    );
  }
}
