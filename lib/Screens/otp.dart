import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:qaren/Constantes/constantes.dart';
import 'package:qaren/Widegts/button.dart';
import 'package:sizer/sizer.dart';

import 'verified.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({Key? key}) : super(key: key);

  @override
  _OtpScreenState createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          height: 100.h,
          width: 100.w,
          color: Colors.white,
          child:  Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 10.h),
                height: 30.h,
                width: 85.w,
                // color: Colors.pink,
                child: Image.asset("assets/otp.png", fit: BoxFit.fill,),
              ),
              Container(
                height: 8.h,
                width: 85.w,
                // color: Colors.green,
                child: Center(
                  child: Text("Enter OTP", style: GoogleFonts.roboto(textStyle: TextStyle(color: kPrimaryColor,fontSize: 36, fontWeight: FontWeight.w700)),),
                ),
              ),
              Container(
                height: 7.h,
                width: 85.w,
                color: Colors.white,
                child: Center(
                  child: Text("We have sent you access code via\nSMS for mobile verification", style: GoogleFonts.roboto(textStyle: TextStyle(color: Colors.black,fontSize: 18, fontWeight: FontWeight.w400),), textAlign: TextAlign.center,),
                ),
              ),
              SizedBox(height: 2.h,),
              Container(
                height: 10.h,
                width: 85.w,
                // color: Colors.yellow,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      height: 4.h,
                      width: 8.w,
                      decoration: BoxDecoration(
                          boxShadow: [BoxShadow(
                              color: Colors.black.withOpacity(0.2),
                              offset: const Offset(1,1),
                              blurRadius: 7.0,
                              spreadRadius: 3
                          )],
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)
                      ),
                      child: TextFormField(
                        maxLengthEnforcement: MaxLengthEnforcement.enforced,
                        maxLength: 1,
                        textAlign: TextAlign.center,
                        showCursor: false,
                        keyboardType: TextInputType.number,
                        style: TextStyle(fontSize: 16,color: Colors.black, fontWeight: FontWeight.w600),
                        // controller: eTC,
                        decoration: InputDecoration(
                          counterText: '',
                          hintStyle: TextStyle(fontSize: 16,color: Colors.black, fontWeight: FontWeight.w600),
                          // focusColor: Color(0xffF9F9F9),
                          border: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          enabledBorder: InputBorder.none,
                          errorBorder: InputBorder.none,
                          disabledBorder: InputBorder.none,

                        ),
                      ),
                    ),
                    Container(
                      height: 4.h,
                      width: 8.w,
                      decoration: BoxDecoration(
                          boxShadow: [BoxShadow(
                              color: Colors.black.withOpacity(0.2),
                              offset: const Offset(1,1),
                              blurRadius: 7.0,
                              spreadRadius: 3
                          )],
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)
                      ),
                      child: TextFormField(
                        maxLengthEnforcement: MaxLengthEnforcement.enforced,
                        maxLength: 1,
                        textAlign: TextAlign.center,
                        showCursor: false,
                        keyboardType: TextInputType.number,
                        style: TextStyle(fontSize: 16,color: Colors.black, fontWeight: FontWeight.w600),
                        // controller: eTC,
                        decoration: InputDecoration(
                          counterText: '',
                          hintStyle: TextStyle(fontSize: 16,color: Colors.black, fontWeight: FontWeight.w600),
                          // focusColor: Color(0xffF9F9F9),
                          border: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          enabledBorder: InputBorder.none,
                          errorBorder: InputBorder.none,
                          disabledBorder: InputBorder.none,

                        ),
                      ),
                    ),
                    Container(
                      height: 4.h,
                      width: 8.w,
                      decoration: BoxDecoration(
                          boxShadow: [BoxShadow(
                              color: Colors.black.withOpacity(0.2),
                              offset: const Offset(1,1),
                              blurRadius: 7.0,
                              spreadRadius: 3
                          )],
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)
                      ),
                      child: TextFormField(
                        maxLengthEnforcement: MaxLengthEnforcement.enforced,
                        maxLength: 1,
                        textAlign: TextAlign.center,
                        showCursor: false,
                        keyboardType: TextInputType.number,
                        style: TextStyle(fontSize: 16,color: Colors.black, fontWeight: FontWeight.w600),
                        // controller: eTC,
                        decoration: InputDecoration(
                          counterText: '',
                          hintStyle: TextStyle(fontSize: 16,color: Colors.black, fontWeight: FontWeight.w600),
                          // focusColor: Color(0xffF9F9F9),
                          border: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          enabledBorder: InputBorder.none,
                          errorBorder: InputBorder.none,
                          disabledBorder: InputBorder.none,

                        ),
                      ),
                    ),
                    Container(
                      height: 4.h,
                      width: 8.w,
                      decoration: BoxDecoration(
                          boxShadow: [BoxShadow(
                              color: Colors.black.withOpacity(0.2),
                              offset: const Offset(1,1),
                              blurRadius: 7.0,
                              spreadRadius: 3
                          )],
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)
                      ),
                      child: TextFormField(
                        maxLengthEnforcement: MaxLengthEnforcement.enforced,
                        maxLength: 1,
                        textAlign: TextAlign.center,
                        showCursor: false,
                        keyboardType: TextInputType.number,
                        style: TextStyle(fontSize: 16,color: Colors.black, fontWeight: FontWeight.w600),
                        // controller: eTC,
                        decoration: InputDecoration(
                          counterText: '',
                          hintStyle: TextStyle(fontSize: 16,color: Colors.black, fontWeight: FontWeight.w600),
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
              SizedBox(height: 2.h,),
              GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => VerifiedScreen()));},
                  child: Button(title: "VERIFY",)),
              Container(
                margin: EdgeInsets.only(top: 4.h),
                height: 4.h,
                width: 85.w,
                // color: Colors.green,
                child: Text("Don’t receive the OTP?", style: TextStyle(fontSize: 18, color: Colors.black), textAlign: TextAlign.center,),
              ),
              Container(
                margin: EdgeInsets.only(top: 1.h),
                height: 4.h,
                width: 85.w,
                // color: Colors.green,
                child: Text("Resend code", style: TextStyle(fontSize: 18, color: Colors.black, fontWeight: FontWeight.w700), textAlign: TextAlign.center,),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
