import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:qaren/Constantes/constantes.dart';
import 'package:qaren/Widegts/button.dart';
import 'package:qaren/Widegts/text_field.dart';
import 'package:sizer/sizer.dart';

import 'login_screen.dart';
import 'number_verification.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  _SignupScreenState createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  bool? value = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          // height: 100.h,
          width: 100.w,
          color: Colors.white,
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 3.h),
                height: 20.h,
                width: 50.w,
                // color: Colors.pinkAccent,
                child: Image.asset("assets/qarn.png", fit: BoxFit.fill,),
              ),
              Container(
                height: 5.h,
                width: 85.w,
                // color: Colors.deepOrange,
                child: Text("Register", style: TextStyle(color: kPrimaryColor, fontWeight: FontWeight.w700, fontSize: 24),),
              ),
              SizedBox(height: 3.h,),
              Text_Field(label: "Username", stext: false,),
              SizedBox(height: 2.h,),
              Text_Field(label: "Email", stext: false,),
              SizedBox(height: 2.h,),
              Text_Field(label: "Password", stext: true,),
              SizedBox(height: 2.h,),
              Text_Field(label: "Phone Number", stext: false,),
              Container(
                height: 8.h,
                width: 85.w,
                // color: Colors.green,
                child:  Container(
                  height: 6.h,
                  width: 100.w,
                  // color: Colors.greenAccent,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Transform.scale(
                        scale: 1.3,
                        child: Checkbox(
                          activeColor: kPrimaryColor,
                          value: this.value,
                          onChanged: (bool? value) {
                            setState(() {
                              this.value = value;
                            });
                          },
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 1.sp),
                        // color: Colors.green,
                        width: 70.w,
                        child: Text("Activate notifications",
                          style: TextStyle(fontSize: 12.sp, fontWeight: FontWeight.w400, color: kPrimaryColor),
                        ),
                      ),
                    ],),),),
              GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => NumberVerification()));
                  },
                  child: Button(title: "Register",)),
              SizedBox(height: 1.h,),
              Container(
                height: 5.h,
                width: 85.w,
                // color: Colors.pink,
                child: Center(
                  child: GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen()));
                    },
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(text: 'Already have an account? ', style: TextStyle(fontWeight: FontWeight.w400, color: kTextColor, fontSize: 14)),
                          TextSpan(text: ' Login', style: TextStyle(fontWeight: FontWeight.w700, color: kPrimaryColor, fontSize: 14)),
                        ],
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

