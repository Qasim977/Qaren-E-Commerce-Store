import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:qaren/Constantes/constantes.dart';
import 'package:sizer/sizer.dart';

import 'darwer_screen.dart';

class PriceCompare extends StatelessWidget {
  const PriceCompare({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 7.h,
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        },
            icon: Icon(Icons.arrow_back, color: kPrimaryColor,)),
        actions: [
          Icon(Icons.share, color: kPrimaryColor,),
          SizedBox(width: 4.w,),
          Icon(Icons.more_vert_rounded, color: kPrimaryColor,),
          SizedBox(width: 2.w,),
        ],
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
              height: 25.h,
              width: 100.w,
              color: Colors.white,
              child: Container(
                margin: EdgeInsets.only(left: 25.w, right: 25.w,top: 2.h),
                height: 20.h,
                width: 50.w,
                color: Colors.white,
                child: Image.asset("assets/hp280.png", fit: BoxFit.fill,),
              ),
            ),
            Container(
              height: 10.h,
              width: 100.w,
              color: Colors.white,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 14.sp),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    RichText(
                      text: TextSpan(
                        children:[
                          TextSpan(text: 'HP 280 Pro G6 Microtower PC', style: TextStyle(color: Colors.black, fontWeight: FontWeight.w600, fontSize: 14.sp)),
                          TextSpan(text: '\n10th Generation Intel® Core™ i3\n processor', style: TextStyle(color: Colors.black, height: 1.sp, fontSize: 12.sp),),
                        ],
                      ),
                    ),
                    Icon(Icons.local_offer_outlined,size: 20.sp, color: kTextColor,),
                    Icon(Icons.favorite,size: 20.sp, color: Colors.red,),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 14.sp),
              child: Container(
                height: 3.h,
                width: 100.w,
                color: Colors.white,
                child: Row(
                  children: [
                    Icon(Icons.star, color: Colors.yellow,),
                    Icon(Icons.star, color: Colors.yellow,),
                    Icon(Icons.star, color: Colors.yellow,),
                    Icon(Icons.star, color: Colors.yellow,),
                    Icon(Icons.star, color: Colors.yellow,),
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 3.h),
              height: 48.5.h,
              width: 100.w,
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    offset: const Offset(1,1),
                    blurRadius: 7.0,
                    spreadRadius: 3
                )],
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25),
                    topRight: Radius.circular(25),
                    bottomLeft: Radius.circular(0),
                    bottomRight: Radius.circular(0)),
              ),
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 4.h),
                    color: Colors.white,
                    height: 3.5.h,
                    width: 100.w,
                    child: Padding(
                        padding: EdgeInsets.only(top: 0.sp,left: 12.sp),
                        child: Text("Compare price from 10 stores", style: TextStyle(color: Colors.black, fontSize: 13.sp, fontWeight: FontWeight.w600),)),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 2.h),
                    height: 7.h,
                    width: 95.w,
                    color: Colors.white,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          height: 6.h,
                          width: 24.w,
                          color: Colors.white,
                          child: Image.asset("assets/amazon.png", fit: BoxFit.fill,),
                        ),
                        Text("RP14.699.000", style: TextStyle(color: Colors.black, fontSize: 10.sp, fontWeight: FontWeight.w700),),
                        Container(
                          height: 6.h,
                          width: 35.w,
                          decoration: BoxDecoration(
                            color: kPrimaryColor,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(
                            child: Text("GO TO STORE", style: TextStyle(fontWeight: FontWeight.w800, fontSize: 12.sp,color: Colors.white),),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 7.h,
                    width: 95.w,
                    color: Colors.white,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          height: 6.h,
                          width: 24.w,
                          color: Colors.white,
                          child: Image.asset("assets/amazon.png", fit: BoxFit.fill,),
                        ),
                        Text("RP14.699.000", style: TextStyle(color: Colors.black, fontSize: 10.sp, fontWeight: FontWeight.w700),),
                        Container(
                          height: 6.h,
                          width: 35.w,
                          decoration: BoxDecoration(
                            color: kPrimaryColor,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(
                            child: Text("GO TO STORE", style: TextStyle(fontWeight: FontWeight.w800, fontSize: 12.sp,color: Colors.white),),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 7.h,
                    width: 95.w,
                    color: Colors.white,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          height: 6.h,
                          width: 24.w,
                          color: Colors.white,
                          child: Image.asset("assets/amazon.png", fit: BoxFit.fill,),
                        ),
                        Text("RP14.699.000", style: TextStyle(color: Colors.black, fontSize: 10.sp, fontWeight: FontWeight.w700),),
                        Container(
                          height: 6.h,
                          width: 35.w,
                          decoration: BoxDecoration(
                            color: kPrimaryColor,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(
                            child: Text("GO TO STORE", style: TextStyle(fontWeight: FontWeight.w800, fontSize: 12.sp,color: Colors.white),),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 7.h,
                    width: 95.w,
                    color: Colors.white,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          height: 6.h,
                          width: 24.w,
                          color: Colors.white,
                          child: Image.asset("assets/amazon.png", fit: BoxFit.fill,),
                        ),
                        Text("RP14.699.000", style: TextStyle(color: Colors.black, fontSize: 10.sp, fontWeight: FontWeight.w700),),
                        Container(
                          height: 6.h,
                          width: 35.w,
                          decoration: BoxDecoration(
                            color: kPrimaryColor,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(
                            child: Text("GO TO STORE", style: TextStyle(fontWeight: FontWeight.w800, fontSize: 12.sp,color: Colors.white),),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 7.h,
                    width: 95.w,
                    color: Colors.white,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          height: 6.h,
                          width: 24.w,
                          color: Colors.white,
                          child: Image.asset("assets/amazon.png", fit: BoxFit.fill,),
                        ),
                        Text("RP14.699.000", style: TextStyle(color: Colors.black, fontSize: 10.sp, fontWeight: FontWeight.w700),),
                        Container(
                          height: 6.h,
                          width: 35.w,
                          decoration: BoxDecoration(
                            color: kPrimaryColor,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(
                            child: Text("GO TO STORE", style: TextStyle(fontWeight: FontWeight.w800, fontSize: 12.sp,color: Colors.white),),
                          ),
                        ),
                      ],
                    ),
                  ),



                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
