import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:qaren/Constantes/constantes.dart';
import 'package:qaren/Screens/store_prices.dart';
import 'package:sizer/sizer.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context) => StorePrices()));
      },
      child: Container(
        // margin: EdgeInsets.all(10.sp),
        height: 29.h,
        width: 100.w,
        color: Color(0xffEEF2F4),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            card(),
            card(),
          ],
        ),
      ),
    );
  }
  Widget card(){
    return Container(
      height: 27.h,
      width: 44.w,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [BoxShadow(
            color: Colors.black.withOpacity(0.2),
            offset: const Offset(0,2),
            blurRadius: 7.0,
            spreadRadius: 3
        )],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 12.h,
            width: 30.w,
            // color: Colors.blue,
            child: Image.asset("assets/computer.png", fit: BoxFit.fill,),
          ),
          Container(
            height: 3.h,
            width: 40.w,
            // color: Colors.purple,
            child: Text("1,15,000 pkr", style: TextStyle(fontWeight: FontWeight.w600,fontSize: 10.sp, color: Color(0xffFF0826)),),
          ),
          Container(
            height: 5.7.h,
            width: 40.w,
            // color: Colors.purple,
            child: Text("HP (2021)\n240 G7 Ci3 10th 4GB 1TB 14", style: TextStyle(fontWeight: FontWeight.w400,fontSize: 10.sp, color: Colors.black, height: 0.8.sp),),
          ),
          Container(
            height: 3.5.h,
            width: 40.w,
            // color: Colors.greenAccent,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(Icons.favorite_border_rounded, color: kPrimaryColor,),
                Icon(Icons.local_offer_outlined, color: kPrimaryColor,),
                Container(
                  height: 3.5.h,
                  width: 12.w,
                  // color: Colors.deepOrange,
                  child: Image.asset("assets/amazon.png", fit: BoxFit.fill,),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
