import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:qaren/Constantes/constantes.dart';
import 'package:sizer/sizer.dart';

class Text_Field extends StatefulWidget {
  final String label;
  final bool stext;

  const Text_Field({Key? key, required this.label, required this.stext}) : super(key: key);

  @override
  _Text_FieldState createState() => _Text_FieldState(label, stext);
}

class _Text_FieldState extends State<Text_Field> {
   String label2;
   bool stext2;

  _Text_FieldState(this.label2, this.stext2);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 11.h,
      width: 90.w,
      // color: Colors.green,
      child: Column(
        children: [
          Container(
            height: 3.h,
            width: 85.w,
            // color: Colors.purple,
            child: Text(label2, style: TextStyle(color: kTextColor, fontWeight: FontWeight.w400, fontSize: 14),) ,
          ),
      Container(
        height: 7.h,
        width: 85.w,
        margin: EdgeInsets.only(top: 5.sp),
        // color: Colors.pink,
        child: TextFormField(
          obscureText: stext2,
          // keyboardType: TextInputType.visiblePassword,
          style: TextStyle(fontSize: 16,color: kPrimaryColor, fontWeight: FontWeight.w400),
          // controller: eTC,
          decoration: InputDecoration(
            fillColor: Color(0xffF9F9F9), filled: true,
              focusColor: Colors.green,
            contentPadding: EdgeInsets.fromLTRB(25, 20, 0, 20),
            // hintText: "Name",
            hintStyle: TextStyle(fontSize: 16,color: kTextColor, fontWeight: FontWeight.w400),
            // focusColor: Color(0xffF9F9F9),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(6),
                borderSide: BorderSide(
                  color: kPrimaryColor,
                )
            ),
            border: InputBorder.none,
            enabledBorder: InputBorder.none,
            errorBorder: InputBorder.none,
            disabledBorder: InputBorder.none,

          ),
        ),
      ),
        ],
      ),
    );
  }
}
