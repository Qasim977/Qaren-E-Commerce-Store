import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:qaren/Constantes/constantes.dart';
import 'package:sizer/sizer.dart';

import '../Widegts/button.dart';
import '../Widegts/text_field.dart';
import 'home_screen.dart';
import 'signup.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          height: 100.h,
          width: 100.w,
          color: Colors.white,
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 10.h),
                height: 20.h,
                width: 50.w,
                // color: Colors.pinkAccent,
                child: Image.asset("assets/qarn.png", fit: BoxFit.fill,),
              ),
              Container(
                height: 5.h,
                width: 85.w,
                // color: Colors.deepOrange,
                child: Text("Login", style: TextStyle(color: kPrimaryColor, fontWeight: FontWeight.w700, fontSize: 24),),
              ),
              SizedBox(height: 4.h,),
              Text_Field(label: "Username/Email", stext: false,),
              SizedBox(height: 3.h,),
              Text_Field(label: "Password", stext: true,),
              SizedBox(height: 2.h,),
              Container(
                height: 3.h,
                width: 85.w,
                // color: Colors.deepOrange,
                child: Text("Forgot password?", style: TextStyle(fontSize: 14, color: kTextColor,), textAlign: TextAlign.right,),
              ),
              SizedBox(height: 4.h,),
              GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => HomeSceeen(),),);
                  },
                  child: Button(title: "Login",)),
              Container(
                height: 12.h,
                width: 85.w,
                // color: Colors.green,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      height: 6.5.h,
                      width: 13.w,
                      // color: Colors.deepOrange,
                      child: Image.asset("assets/fb.png", fit: BoxFit.fill,),
                    ),
                    SizedBox(width: 5.w,),
                    Container(
                      height: 6.5.h,
                      width: 13.w,
                      child: Image.asset("assets/google.png",fit: BoxFit.fill,),
                    ),
                    SizedBox(width: 5.w,),
                    Container(
                      height: 6.5.h,
                      width: 13.w,
                      child: Image.asset("assets/appel.png",fit: BoxFit.fill),
                    ),
                  ],
                ),
              ),
              Container(
                height: 5.h,
                width: 85.w,
                // color: Colors.pink,
                child: Center(
                  child: GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => SignupScreen()));
                    },
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(text: 'Don’t have an account? Register? ', style: TextStyle(fontWeight: FontWeight.w400, color: kTextColor, fontSize: 14)),
                          TextSpan(text: ' Register?', style: TextStyle(fontWeight: FontWeight.w700, color: kPrimaryColor, fontSize: 14)),
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
