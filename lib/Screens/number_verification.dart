import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:qaren/Constantes/constantes.dart';
import 'package:qaren/Widegts/button.dart';
import 'package:sizer/sizer.dart';

import 'otp.dart';

class NumberVerification extends StatefulWidget {
  const NumberVerification({Key? key}) : super(key: key);

  @override
  _NumberVerificationState createState() => _NumberVerificationState();
}

class _NumberVerificationState extends State<NumberVerification> {
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
                height: 30.h,
                width: 85.w,
                // color: Colors.pink,
                child: Image.asset("assets/verification.png", fit: BoxFit.fill,),
              ),
              Container(
                height: 8.h,
                width: 90.w,
                // color: Colors.green,
                child: Center(
                  child: Text("Verify your number", style: GoogleFonts.roboto(textStyle: TextStyle(color: kPrimaryColor,fontSize: 35, fontWeight: FontWeight.w700)),),
                ),
              ),
              Container(
                height: 7.h,
                width: 85.w,
                color: Colors.white,
                child: Center(
                  child: Text("Please enter your mobile number\nto receive verification code", style: GoogleFonts.roboto(textStyle: TextStyle(color: Colors.black,fontSize: 18, fontWeight: FontWeight.w400),), textAlign: TextAlign.center,),
                ),
              ),
              SizedBox(height: 8.h,),
              Container(
                height: 10.h,
                width: 85.w,
                // color: Colors.yellow,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      height: 6.h,
                      width: 13.w,
                  decoration: BoxDecoration(

                    border: Border(
                      bottom: BorderSide(width: 1.sp, color: Colors.black),
                    ),
                    ),
                    child: TextFormField(
                      keyboardType: TextInputType.number,
                      style: TextStyle(fontSize: 16,color: kPrimaryColor, fontWeight: FontWeight.w400),
                      // controller: eTC,
                      decoration: InputDecoration(
                        hintStyle: TextStyle(fontSize: 16,color: kTextColor, fontWeight: FontWeight.w400),
                        // focusColor: Color(0xffF9F9F9),
                        border: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        errorBorder: InputBorder.none,
                        disabledBorder: InputBorder.none,

                      ),
                    ),
                    ),
                    SizedBox(width: 5.w,),
                    Container(
                      height: 6.h,
                      width: 50.w,
                      decoration: BoxDecoration(
                        // color: Colors.blue,
                        border: Border(
                          bottom: BorderSide(width: 1.sp, color: Colors.black),
                        ),
                      ),
                      child: TextFormField(
                        keyboardType: TextInputType.number,
                        style: TextStyle(fontSize: 16,color: kPrimaryColor, fontWeight: FontWeight.w400),
                        // controller: eTC,
                        decoration: InputDecoration(
                          hintStyle: TextStyle(fontSize: 16,color: kTextColor, fontWeight: FontWeight.w400),
                          // focusColor: Color(0xffF9F9F9),
                          border: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          enabledBorder: InputBorder.none,
                          errorBorder: InputBorder.none,
                          disabledBorder: InputBorder.none,

                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 5.h,),
              GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => OtpScreen()));},
                  child: Button(title: "Send",)),
            ],
          ),
        ),
      ),
    );
  }
}
