import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:qaren/Constantes/constantes.dart';
import 'package:sizer/sizer.dart';

import 'buy_product.dart';
import 'darwer_screen.dart';
import 'price_compare.dart';

class StorePrices extends StatefulWidget {
  const StorePrices({Key? key}) : super(key: key);

  @override
  _StorePricesState createState() => _StorePricesState();
}

class _StorePricesState extends State<StorePrices> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 7.h,
        backgroundColor: kPrimaryColor,
        elevation: 0,
        title: Text("Daraz", style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600, fontSize: 13.sp),),
        actions: [
          Icon(Icons.share,size: 22.sp,),
          SizedBox(width: 4.w,),
          Icon(Icons.search_rounded,size: 22.sp,),
          SizedBox(width: 4.w,),
          Icon(Icons.person,size: 22.sp,),
          SizedBox(width: 3.w,),
        ],
      ),
      drawer: Drawer(
        child: DrawerScreen(),
      ),
      body: Container(
        height: 100.h,
        width: 100.w,
        color: Colors.white10,
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
                    RichText(
                      text: TextSpan(
                        children:[
                          TextSpan(text: 'HP 280 Pro G6 Microtower PC', style: TextStyle(color: Colors.black, fontWeight: FontWeight.w600, fontSize: 14.sp)),
                          TextSpan(text: '\n10th Generation Intel® Core™ i3', style: TextStyle(color: Colors.black, height: 1.2.sp, fontSize: 12.sp),),
                        ],
                      ),
                    ),
                    Icon(Icons.favorite,size: 22.sp, color: Colors.red,),
                  ],
                ),
              ),
            ),
            Container(
              height: 4.h,
              width: 100.w,
              color: Colors.white,
              margin: EdgeInsets.only(top: 1.sp),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.sp),
                // child: Row(
                //   mainAxisAlignment: MainAxisAlignment.end,
                //   children: [
                //     ElevatedButton(onPressed: (){}, child: Text("price alert")),
                //     SizedBox(width: 5.w,),
                //     ElevatedButton(onPressed: (){}, child: Text("compare")),
                //   ],
                // ),
              ),
            ),
            Container(
              height: 33.h,
              width: 100.w,
              color: Colors.white,
              child: Column(
                children: [
                  Container(
                    height: 24.h,
                    width: 60.w,
                    color: Colors.white,
                    child: Image.asset("assets/hp280.png", fit: BoxFit.fill,),
                  ),
                  Container(
                    height: 8.h,
                    width: 100.w,
                    color: Colors.white,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 5.sp),
                          height: 7.h,
                          width: 15.w,
                          decoration: BoxDecoration(
                            border: Border.all(width: 1.sp, color: kTextColor)
                          ),
                          child: Image.asset("assets/hp280.png", fit: BoxFit.fill,),
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 5.sp),
                          height: 7.h,
                          width: 15.w,
                          decoration: BoxDecoration(
                              border: Border.all(width: 1.sp, color: kTextColor)
                          ),
                          child: Image.asset("assets/hp280.png", fit: BoxFit.fill,),
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 5.sp),
                          height: 7.h,
                          width: 15.w,
                          decoration: BoxDecoration(
                              border: Border.all(width: 1.sp, color: kTextColor)
                          ),
                          child: Image.asset("assets/hp280.png", fit: BoxFit.fill,),
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 5.sp),
                          height: 7.h,
                          width: 15.w,
                          decoration: BoxDecoration(
                              border: Border.all(width: 1.sp, color: kTextColor)
                          ),
                          child: Image.asset("assets/hp280.png", fit: BoxFit.fill,),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.sp),
              child: Container(
                height: 7.h,
                width: 100.w,
                color: Colors.white,
                child: Row(
                  children: [
                    RichText(
                      text: TextSpan(
                        children:[
                          TextSpan(text: 'RP14.699.000', style: TextStyle(color: Colors.red, fontWeight: FontWeight.w700, fontSize: 14.sp)),
                          TextSpan(text: '\nAvailable at 10 stores', style: TextStyle(color: Colors.blue, fontSize: 12.sp),),
                        ],
                      ),
                    ),
                    Spacer(),
                    Text("Compare Prices", style: TextStyle(color: kTextColor, fontSize: 11.sp),),
                    Icon(Icons.arrow_forward_ios_rounded, size: 16.sp, color: kTextColor,)
                  ],
                ),
              ),
            ),
            Container(
              height: 4.h,
              width: 100.w,
              color: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  ElevatedButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => BuyProduct(),));
                  }, child: Text("Buy Now"),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(kPrimaryColor),
                    ),),
                  SizedBox(width: 5.w,),
                  ElevatedButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => PriceCompare()));
                  }, child: Text("Compare Prices"),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Color(0xffF9E421)),
                    ),
                  ),
                  SizedBox(width: 5.w,),
                ],
              )
            ),
            Container(
              margin: EdgeInsets.only(top: 12.sp, bottom: 8.sp),
              height: 4.h,
              width: 90.w,
              child: Text("Information",style: TextStyle(color: Colors.black, fontWeight: FontWeight.w600, fontSize: 11.sp),),
            ),
            Container(
              height: 20.h,
              width: 90.w,
              color: Colors.white,
              child: Center(child: Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Eget sed tellus amet neque feugiat quis pulvinar. Diam arcu odio diam luctus volutpat, laoreet enim netus. Tellus consequat aenean nullam pulvinar vitae suscipit integer aliquam. Id est blandit euismod et.",
              style: TextStyle(color: kPrimaryColor, fontSize: 10.sp), textAlign: TextAlign.justify,),),
            )
          ],
        ),
      ),
    );
  }
}
