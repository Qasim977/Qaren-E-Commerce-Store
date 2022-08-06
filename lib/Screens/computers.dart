import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:qaren/Constantes/constantes.dart';
import 'package:sizer/sizer.dart';

import 'darwer_screen.dart';
import 'price_compare.dart';
import 'store_prices.dart';

class Computer extends StatefulWidget {
  const Computer({Key? key}) : super(key: key);

  @override
  _ComputerState createState() => _ComputerState();
}

class _ComputerState extends State<Computer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 7.h,
        backgroundColor: kPrimaryColor,
        elevation: 0,
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        },
            icon: Icon(Icons.arrow_back)),
        title: Text("HP 280 Pro G6 Microtower PC", style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500, fontSize: 12.sp),),
     actions: [
       Icon(Icons.search_rounded),
       SizedBox(width: 2.w,),
       Icon(Icons.more_vert_rounded),
       SizedBox(width: 1.w,),
     ],
      ),
      drawer: Drawer(
        child: DrawerScreen(),
      ),
      body: Container(
        height: 100.h,
        width: 100.w,
        color: Color(0xffEEF2F4),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
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
                      Text("1,363 items", style: TextStyle(color: kPrimaryColor, fontWeight: FontWeight.w500, fontSize: 14.sp),),
                      SizedBox(width: 8.w,),
                      Icon(Icons.sort_by_alpha_rounded,size: 22.sp,),
                      Text("Sorting", style: TextStyle(color: kPrimaryColor, fontWeight: FontWeight.w500, fontSize: 14.sp),),
                      Icon(Icons.format_align_center_rounded,size: 22.sp,),
                      Text("Filter", style: TextStyle(color: kPrimaryColor, fontWeight: FontWeight.w500, fontSize: 14.sp),),
                    ],
                  ),
                ),
              ),
              ComputerCard(),
              ComputerCard(),
              ComputerCard(),
            ],
          ),
        ),
      ),
    );
  }
}


class ComputerCard extends StatelessWidget {
  const ComputerCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10.sp),
      height: 28.h,
      width: 100.w,
      decoration: BoxDecoration(
          color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [BoxShadow(
            color: Colors.black.withOpacity(0.2),
            offset: const Offset(0,2),
            blurRadius: 7.0,
            spreadRadius: 3
        )],
      ),
      child: Column(
        children: [
          GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => StorePrices()));
              },
            child: Container(
              height: 23.4.h,
              width: 100.w,
              // color: Colors.blue,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 15.sp),
                    height: 13.h,
                    width: 25.w,
                    color: Colors.white,
                    child: Image.asset("assets/hp280.png", fit: BoxFit.fill,),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 3.sp),
                    height: 22.h,
                    width: 62.w,
                    // color: Colors.deepOrange,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("HP 280 Pro G6 Microtower PC", style: TextStyle(fontSize: 11.sp, fontWeight: FontWeight.w600),),
                        Text("10th Generation Intel® Core™ i3\nprocessor", style: TextStyle(fontSize: 10.sp, fontWeight: FontWeight.w400)),
                        Container(
                          margin: EdgeInsets.only(top: 10.sp, bottom: 10.sp),
                          height: 3.5.h,
                          width: 25.w,
                          decoration: BoxDecoration(
                            color: Color(0xffFFB906),
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Center(child: Text("HP PC", style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500, fontSize: 14.sp),)),
                        ),
                        Text("RP14.699.000", style: TextStyle(color: Colors.black, fontSize: 14.sp, fontWeight: FontWeight.w700),)
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          Container(
            height: 4.h,
            width: 100.w,
            // color: Colors.greenAccent,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.sp),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(Icons.favorite_border_rounded, color: kPrimaryColor,),
                  Icon(Icons.local_offer_outlined, color: kPrimaryColor,),
                  GestureDetector(
                    onTap: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => PriceCompare()));
                    },
                    child: Container(
                      height: 4.h,
                      width: 28.w,
                      // color: Colors.deepOrange,
                      child: Center(child: Text("COMPARE PRICE", style: TextStyle(color: Colors.blue, fontSize: 9.sp, fontWeight: FontWeight.w600),))
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

