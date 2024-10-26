import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTextStyle {
  // static TextStyle drawerTextStyle() {
  //   return TextStyle(
  //       color: drawerTextColor,
  //       fontSize: Get.width * 0.34 / 100, fontFamily: 'Manrope',
  //       fontWeight: FontWeight.w400);
  // }

  static TextStyle tittleBig1({color, required context}) {
    return TextStyle(
      color: color ?? Colors.black,
      fontFamily: 'Arial',
      fontSize: 18.5.sp,
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle tittleBig2({
    color,
    required context,
    TextDecoration? decoration,
    double? decorationThickness,
  }) {
    return TextStyle(
      color: color ?? Colors.black,
      fontFamily: 'Arial',
      decoration: decoration ?? TextDecoration.none,
      decorationThickness: decorationThickness,
      fontSize: 17.5.sp,
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle tittleBig3({color, required context}) {
    return TextStyle(
      color: color ?? Colors.black,
      fontFamily: 'Arial',
      fontSize: 16.5.sp,
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle tittleBig4({
    color,
    required context,
    TextDecoration? decoration,
    double? decorationThickness,
  }) {
    return TextStyle(
      color: color ?? Colors.black87,
      fontFamily: 'Arial',
      decoration: decoration ?? TextDecoration.none,
      decorationThickness: decorationThickness,
      fontSize: 15.5.sp,
      fontWeight: FontWeight.w600,
    );
  }

  //======================
  static TextStyle tittleSmall1(
      {Color? color, double? size, required BuildContext context}) {
    return TextStyle(
      color: color ?? Colors.black,
      fontFamily: 'Arial',
      fontSize: 14.5.sp,
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle tittleSmall2(
      {Color? color,
      TextDecoration? decoration,
      double? decorationThickness,
      required BuildContext context}) {
    return TextStyle(
      color: color ?? Colors.black,
      fontFamily: 'Arial',
      fontSize: 14.sp,
      decoration: decoration ?? TextDecoration.none,
      decorationThickness: decorationThickness,
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle tittleSmall3(
      {Color? color, double? size, required BuildContext context}) {
    return TextStyle(
      color: color ?? Colors.black,
      fontFamily: 'Arial',
      fontSize: 13.sp,
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle tittleSmall4(
      {Color? color, double? size, required BuildContext context}) {
    return TextStyle(
      color: color ?? Colors.black,
      fontFamily: 'Arial',
      fontSize: 11.8.sp,
      fontWeight: FontWeight.w600,
    );
  }

  // //================
  // static TextStyle subTittleSmallB1(
  //     {Color? color, double? size, required BuildContext context}) {
  //   return TextStyle(
  //     color: color ?? Colors.black,
  //     fontFamily: 'Manrope',

  //     fontSize: size ?? Get.width * 0.040,
  //     fontWeight: FontWeight.w600,
  //   );
  // }

  // static TextStyle subTittleSmallB2(
  //     {Color? color, double? size, required BuildContext context}) {
  //   return TextStyle(
  //     color: color ?? Colors.black,
  //     fontFamily: 'Manrope',

  //     fontSize: size ?? Get.width * 0.035,
  //     fontWeight: FontWeight.w600,
  //   );
  // }

  // //================
  // static TextStyle subTittleSmall1(
  //     {Color? color, double? size, required BuildContext context}) {
  //   return TextStyle(
  //     fontFamily: 'Manrope',

  //     color: color ?? Colors.black,
  //     fontSize: 17.sp,
  //     fontWeight: FontWeight.w500,
  //   );
  // }

  // static TextStyle subTittleSmall2(
  //     {Color? color, double? size, required BuildContext context}) {
  //   return TextStyle(
  //     color: color ?? Colors.black,
  //     fontSize: 16.sp,
  //     fontWeight: FontWeight.w500,
  //     fontFamily: 'Manrope',

  //   );
  // }

  //=============text====
  static TextStyle text1({Color? color, fontWeight, required context}) {
    return TextStyle(
      color: color ?? Colors.black,
      fontFamily: 'Arial',
      fontSize: 15.5.sp,
      fontWeight: fontWeight ?? FontWeight.w500,
    );
  }

  static TextStyle text2({Color? color, fontWeight, required context}) {
    return TextStyle(
      color: color ?? Colors.black,
      fontFamily: 'Arial',
      fontSize: 14.5.sp,
      fontWeight: fontWeight ?? FontWeight.w500,
    );
  }

  static TextStyle text3({Color? color, required context}) {
    return TextStyle(
      color: color ?? Colors.black,
      fontFamily: 'Arial',
      fontSize: 13.5.sp,
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle text4({Color? color, fontWeight, required context}) {
    return TextStyle(
      color: color ?? Colors.black,
      fontSize: 12.5.sp,
      fontFamily: 'Arial',
      fontWeight: FontWeight.w500,
    );
  }

  //=====================paragraph=======
  static TextStyle paragraph1({Color? color, required context}) {
    return TextStyle(
      color: color ?? Colors.black54,
      fontSize: 15.5.sp,
      fontWeight: FontWeight.w400,
      fontFamily: 'Arial',
    );
  }

  static TextStyle paragraph2({Color? color, required context}) {
    return TextStyle(
      color: color ?? Colors.black54,
      fontSize: 14.sp,
      fontWeight: FontWeight.w400,
      fontFamily: 'Arial',
    );
  }

  static TextStyle paragraph3({Color? color, required context}) {
    return TextStyle(
      color: color ?? Colors.black54,
      fontFamily: 'Arial',
      fontSize: 12.5.sp,
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle paragraph4({Color? color, required context}) {
    return TextStyle(
      color: color ?? Colors.black54,
      fontFamily: 'Arial',
      fontSize: 11.sp,
      fontWeight: FontWeight.w400,
    );
  }
}
