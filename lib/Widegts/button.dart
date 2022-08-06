import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:qaren/Constantes/constantes.dart';
import 'package:sizer/sizer.dart';

class Button extends StatelessWidget {
  final String title;

  const Button({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 8.h,
      width: 85.w,
      decoration: BoxDecoration(
        color: kPrimaryColor,
        borderRadius: BorderRadius.circular(10)
      ),
      child: Center(child: Text(title, style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700, color: Colors.white),)),
    );
  }
}
