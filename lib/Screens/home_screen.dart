import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:qaren/Constantes/constantes.dart';
import 'package:qaren/Widegts/product_card.dart';
import 'package:qaren/Widegts/search.dart';
import 'package:sizer/sizer.dart';

import 'computers.dart';
import 'darwer_screen.dart';

class HomeSceeen extends StatefulWidget {
  const HomeSceeen({Key? key}) : super(key: key);

  @override
  _HomeSceeenState createState() => _HomeSceeenState();
}

class _HomeSceeenState extends State<HomeSceeen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 7.h,
        backgroundColor: kPrimaryColor,
        elevation: 0,
        title: Text("Comparison", style: TextStyle(color: Colors.white, fontWeight: FontWeight.w700, fontSize: 24),),
      ),
      drawer: Drawer(
        child: DrawerScreen(),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          height: 100.h,
          width: 100.w,
          color: Color(0xffEEF2F4),
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 5.sp, bottom: 5.sp),
                height: 4.h,
                width: 93.w,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(100),
                  boxShadow: [BoxShadow(
                      color: Colors.black.withOpacity(0.2),
                      offset: const Offset(0,2),
                      blurRadius: 7.0,
                      spreadRadius: 3
                  )],
                ),
                child: TextFormField(
                  cursorColor: kPrimaryColor,
                  style: TextStyle(fontSize: 10.sp,color: kPrimaryColor, fontWeight: FontWeight.w400),
                  // controller: eTC,
                  decoration: InputDecoration(
                    hintText: "Search product",
                    // fillColor: Color(0xffF9F9F9), filled: true,
                    focusColor: Colors.green,
                    suffixIcon: Icon(Icons.search_rounded, color: kTextColor,),
                    contentPadding: EdgeInsets.fromLTRB(20.sp, 20.sp, 0.sp, 6.sp),
                    hintStyle: TextStyle(fontSize: 9.sp,color: kTextColor, fontWeight: FontWeight.w400),
                    // focusColor: Color(0xffF9F9F9),
                    // focusedBorder: OutlineInputBorder(
                    //     borderRadius: BorderRadius.circular(100),
                    //     borderSide: BorderSide(
                    //       color: kPrimaryColor,
                    //     )
                    // ),
                    border: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    errorBorder: InputBorder.none,
                    disabledBorder: InputBorder.none,
                    focusedBorder: null,

                  ),
                ),
              ),
              Container(
                height: 11.h,
                width: 100.w,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(0),
                      topRight: Radius.circular(0),
                      bottomLeft: Radius.circular(25),
                      bottomRight: Radius.circular(25)),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => Computer()));},
                        child: tabbar("Computer", "assets/Pc.png")),
                    tabbar("Air Coler", "assets/Air col.png"),
                    tabbar("Washe machine", "assets/Wash.png"),
                    tabbar("Fridge", "assets/Freezer.png"),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 1.sp),
                height: 70.h,
                width: 100.w,
                  color: Color(0xffEEF2F4),
                child: ListView(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 5.sp, left: 5.w,right: 5.w),
                      child: Container(
                        height: 5.h,
                        width: 90.w,
                        color: Color(0xffEEF2F4),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text("Best Seller", style: TextStyle(fontSize: 18.sp, color: kPrimaryColor, fontWeight: FontWeight.w500),),
                            Text("More", style: TextStyle(fontSize: 10.sp, color: Color(0xff708EF8), fontWeight: FontWeight.w400),),
                          ],
                        ),
                      ),
                    ),
                    ProductCard(),
                    Padding(
                      padding: EdgeInsets.only(top: 5.sp, left: 5.w,right: 5.w),
                      child: Container(
                        height: 5.h,
                        width: 90.w,
                        color: Color(0xffEEF2F4),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text("Featured Brands", style: TextStyle(fontSize: 18.sp, color: kPrimaryColor, fontWeight: FontWeight.w500),),
                            Text("More", style: TextStyle(fontSize: 10.sp, color: Color(0xff708EF8), fontWeight: FontWeight.w400),),
                          ],
                        ),
                      ),
                    ),
                    ProductCard(),
                    ProductCard(),
                  ],
                )
              ),
            ],
          ),
        ),
      ),
    );
  }
  Widget tabbar(String title, String icn,){
    return Container(
      height: 10.h,
      width: 25.w,
      // color: Colors.blue,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 6.h,
            width: 13.w,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          boxShadow: [BoxShadow(
              color: Colors.black.withOpacity(0.2),
              offset: const Offset(1,1),
              blurRadius: 7.0,
              spreadRadius: 3
          )],
          color: Colors.white,
          ),
          child: Padding(
            padding: EdgeInsets.all(8.sp),
            child: ClipRRect(
                borderRadius: BorderRadius.circular(0),
                child: Image.asset(icn, fit: BoxFit.fill,)),
          ),
          ),
          Container(
            height: 3.h,
            width: 25.w,
            // color: Colors.purple,
            child: Padding(
              padding: EdgeInsets.only(top: 4.sp),
              child: Text(title, style: TextStyle(
                color: kPrimaryColor,
                fontSize: 8.sp,
                fontWeight: FontWeight.w500,
              ), textAlign: TextAlign.center,),
            ),
          ),
        ],
      ),
    );
  }
}
