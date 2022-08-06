import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:qaren/Constantes/constantes.dart';
import 'package:sizer/sizer.dart';

import 'cart_Screen.dart';
import 'darwer_screen.dart';

class BuyProduct extends StatefulWidget {
  const BuyProduct({Key? key}) : super(key: key);

  @override
  _BuyProductState createState() => _BuyProductState();
}

class _BuyProductState extends State<BuyProduct> {
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
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [BoxShadow(
                color: Colors.black.withOpacity(0.2),
                offset: const Offset(1,1),
                blurRadius: 7.0,
                spreadRadius: 3
            )],),
              child: Container(
                margin: EdgeInsets.only(left: 25.w, right: 25.w,top: 2.h),
                height: 20.h,
                width: 50.w,
                color: Colors.white,
                child: Image.asset("assets/hp280.png", fit: BoxFit.fill,),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 0.1.h),
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
              margin: EdgeInsets.only(top: 8.sp, bottom: 0.sp),
              height: 4.h,
              width: 90.w,
              child: Text("Information",style: TextStyle(color: kTextColor, fontWeight: FontWeight.w600, fontSize: 11.sp),),
            ),
            Container(
              height: 18.h,
              width: 90.w,
              color: Colors.white,
              child: Center(child: Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Eget sed tellus amet neque feugiat quis pulvinar. Diam arcu odio diam luctus volutpat, laoreet enim netus. Tellus consequat aenean nullam pulvinar vitae suscipit integer aliquam. Id est blandit euismod et.",
                style: TextStyle(color: kPrimaryColor, fontSize: 10.sp), textAlign: TextAlign.justify,),),
            ),
            Container(
              height: 10.h,
              width: 100.w,
              color: Colors.white,
              child: Padding(
                padding: EdgeInsets.only(left: 20.sp, top: 6.sp),
                child: Row(
                  children:[
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Quantity"),
                      Container(
                        height: 5.5.h,
                        width: 23.w,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(5),
                          boxShadow: [BoxShadow(
                              color: Colors.black.withOpacity(0.2),
                              offset: const Offset(1,1),
                              blurRadius: 7.0,
                              spreadRadius: 3
                          )],),
                      ),

                    ],
                  ),
                    Container(
                      margin: EdgeInsets.only(top: 10.sp, left: 10.sp),
                      height: 5.5.h,
                      width: 40.w,
                      child: ElevatedButton(onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => CartScreen(),),);
                      },
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(Colors.yellow),
                        ),
                          child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(Icons.add_shopping_cart_outlined),
                          Text("ADD TO CART")
                        ],
                      )),
                    )]
                ),
              ),
            ),
            Container(
              height: 16.h,
              width: 100.w,
              color: Colors.white,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                      padding: EdgeInsets.only(top: 16.sp, left: 8.sp),
                      child: Text("Order info", style: TextStyle(color: Colors.black, fontSize: 11.sp, fontWeight: FontWeight.w600),)),
                  Padding(
                    padding: EdgeInsets.only(left: 20.sp, right: 10.sp),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Shipping", style: TextStyle(color: kTextColor, fontSize: 12.sp),),
                        Text("RP14.699.000", style: TextStyle(color: kTextColor, fontSize: 11.sp),),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 20.sp, right: 10.sp),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Shipping", style: TextStyle(color: kTextColor, fontSize: 12.sp),),
                        Text("RP14.699.000", style: TextStyle(color: kTextColor, fontSize: 11.sp),),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 20.sp, right: 10.sp),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Shipping", style: TextStyle(color: kTextColor, fontSize: 12.sp),),
                        Text("RP14.699.000", style: TextStyle(color: kTextColor, fontSize: 11.sp),),
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
