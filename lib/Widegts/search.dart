import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:sizer/sizer.dart';
class Search extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: EdgeInsets.only(top: 0.sp,bottom: 0.sp),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Spacer(),
          Flexible(
            flex: 16,
            child: Container(
              height: 60.h,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black12, width: 1.sp),
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(40.sp)
              ),
              child: Padding(
                padding: EdgeInsets.only(left: 15.sp, right: 20.sp,),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(Icons.search,size: 25.sp,),
                    Padding(padding: EdgeInsets.only(left: 10.sp)),
                    Text("Search", style: TextStyle(fontSize: 12.sp, color: Colors.black, fontWeight: FontWeight.w400, fontFamily: 'Ephesis',),),
                  ],
                ),
              ),
            ),
          ),
          Spacer(),
          Flexible(
            flex: 3,
            child: Container(
              height: 55.h,
                width: 50.w,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(100.sp),
                border: Border.all(color: Colors.black12, width: 1.sp),
              ),
              // child: Consumer<Cart>(
              //   builder: (_, cart, ch) => Badge(
              //       child: GestureDetector(child: Icon(Icons.shopping_cart),
              //           onTap: (){
              //              Navigator.push(context,
              //               MaterialPageRoute(builder: (context) => CartDetail(),),
              //   );
              //   }
              //       ),
              //       value: cart.itemCount.toString(),
              //       color: Colors.pinkAccent),
              //   // child: IconButton(
              //   // icon: Icon(Icons.shopping_cart_rounded, color: Colors.black, size: 30.sp,),
              //   //     onPressed: (){
              //   //   Navigator.pushReplacement(context,
              //   //       MaterialPageRoute(builder: (context) => CartDetail(),),
              //   //   );
              //   //     }
              //   // )
              //   ),
              )
            ),
          Spacer(),
        ],
      ),
    );
  }
}
