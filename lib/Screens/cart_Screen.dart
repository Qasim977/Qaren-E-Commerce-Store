import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:qaren/Constantes/constantes.dart';
import 'package:qaren/Widegts/button.dart';
import 'package:sizer/sizer.dart';

import 'darwer_screen.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  _CartScreenState createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 8.h,
        backgroundColor: kPrimaryColor,
        elevation: 0,
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        },
            icon: Icon(Icons.arrow_back, color: Colors.white,)),
        title: Text("Shipping Cart", style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600, fontSize: 13.sp),),
      ),
      drawer: Drawer(
        child: DrawerScreen(),
      ),
      body: Container(
        height: 100.h,
        width: 100.w,
        color: Colors.white,
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 4.h),
              height: 10.h,
              width: 90.w,
              color: Colors.white,
              child: RichText(
                text: TextSpan(
                  children:[
                    TextSpan(text: 'Your items', style: TextStyle(color: Colors.black, fontWeight: FontWeight.w700, fontSize: 15.sp,height: 1.5.sp)),
                    TextSpan(text: '\nYou have 2 item in your cart', style: TextStyle(color: Colors.black, height: 1.sp, fontSize: 13.sp,),),
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 4.h),
              height: 14.h,
              width: 90.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.white,
                  boxShadow: [BoxShadow(
                      color: Colors.black.withOpacity(0.2),
                      offset: const Offset(1,1),
                      blurRadius: 7.0,
                      spreadRadius: 3
                  )],),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 10.h,
                    width: 21.w,
                    color: Colors.white,
                    child: Image.asset("assets/hp280.png", fit: BoxFit.fill,),
                  ),
                  Container(
                    height: 10.h,
                    width: 65.w,
                    color: Colors.white,
                    child: RichText(
                      text: TextSpan(
                        children:[
                          TextSpan(text: 'HP 280 Pro G6 Microtower PC', style: TextStyle(color: Colors.black, fontWeight: FontWeight.w500, fontSize: 12.sp,height: 1.5.sp)),
                          TextSpan(text: '\n\nRP14.699.000', style: TextStyle(color: Colors.black, fontSize: 13.sp, fontWeight: FontWeight.w600),),
                        ],
                      ),
                    ),
                  ),
                ],
              )
            ),
            Container(
              margin: EdgeInsets.only(top: 4.h),
              height: 14.h,
              width: 90.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.white,
                  boxShadow: [BoxShadow(
                      color: Colors.black.withOpacity(0.2),
                      offset: const Offset(1,1),
                      blurRadius: 7.0,
                      spreadRadius: 3
                  )],),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 10.h,
                    width: 21.w,
                    color: Colors.white,
                    child: Image.asset("assets/hp280.png", fit: BoxFit.fill,),
                  ),
                  Container(
                    height: 10.h,
                    width: 65.w,
                    color: Colors.white,
                    child: RichText(
                      text: TextSpan(
                        children:[
                          TextSpan(text: 'HP 280 Pro G6 Microtower PC', style: TextStyle(color: Colors.black, fontWeight: FontWeight.w500, fontSize: 12.sp,height: 1.5.sp)),
                          TextSpan(text: '\n\nRP14.699.000', style: TextStyle(color: Colors.black, fontSize: 13.sp, fontWeight: FontWeight.w600),),
                        ],
                      ),
                    ),
                  ),
                ],
              )
            ),
            Container(
              margin: EdgeInsets.only(top: 14.sp),
              height: 16.h,
              width: 100.w,
              color: Colors.white,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 20.sp, right: 10.sp),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Subtotal", style: TextStyle(color: Colors.black, fontSize: 12.sp, fontWeight: FontWeight.w700),),
                        Text("RP14.699.000", style: TextStyle(color: Colors.black, fontSize: 11.sp, fontWeight: FontWeight.w600),),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 20.sp, right: 10.sp),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Shipping", style: TextStyle(color: Colors.black, fontSize: 12.sp, fontWeight: FontWeight.w700),),
                        Text("RP14.699.000", style: TextStyle(color: Colors.black, fontSize: 11.sp, fontWeight: FontWeight.w600),),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 20.sp, right: 10.sp),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Total", style: TextStyle(color: Colors.black, fontSize: 12.sp, fontWeight: FontWeight.w700),),
                        Text("RP14.699.000", style: TextStyle(color: Colors.black, fontSize: 11.sp, fontWeight: FontWeight.w600),),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 3.h,),
            Button(title: "CHECK OUT",)
          ],
        ),
      ),
    );
  }
}
