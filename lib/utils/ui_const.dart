import 'package:flutter/material.dart';
import 'package:get/get.dart';

SizedBox gapH(double number) => SizedBox(
      height: Get.width * number / 100,
    );
SizedBox gapW(double number) => SizedBox(
      width: Get.width * number / 100,
    );
//screen padding 
EdgeInsets screenPaddingH() =>
    EdgeInsets.symmetric(horizontal: Get.width * 4 / 100);
//padding
EdgeInsets edgeInsetsAll(double number) =>
    EdgeInsets.all(Get.width * number / 100);
EdgeInsets edgeInsetsSym(double h, double v) => EdgeInsets.symmetric(
    horizontal: Get.width * h / 100, vertical: Get.width * v / 100);
EdgeInsets edgeInsetsLeft(double number) =>
    EdgeInsets.only(left: Get.width * number / 100);
EdgeInsets edgeInsetsRight(double number) =>
    EdgeInsets.only(right: Get.width * number / 100);
EdgeInsets edgeInsetsTop(double number) =>
    EdgeInsets.only(top: Get.width * number / 100);
EdgeInsets edgeInsetsBottom(double number) =>
    EdgeInsets.only(bottom: Get.width * number / 100);
EdgeInsets edgeInsetsOnly(
  double left,
  double right,
  double top,
  double bottom,
) =>
    EdgeInsets.only(
      left: Get.width * left / 100,
      right: Get.width * right / 100,
      top: Get.width * top / 100,
      bottom: Get.width * bottom / 100,
    );

//==========Divider ===========
Divider customDivider(Color? color, double numIndent, double numEndIndent) =>
    Divider(
      thickness: 1.3,
      color: color ?? Colors.black12.withOpacity(0.2),
      indent: Get.width * numIndent / 100,
      endIndent: Get.width * numEndIndent / 100,
    );

//==========radius=========================
BorderRadius radiusAll(double number) => BorderRadius.circular(Get.width * number / 100);
BorderRadius radiusTopleft(double number) => BorderRadius.only(topLeft: Radius.circular(Get.width * number / 100));
BorderRadius radiusTopRight(double number) => BorderRadius.only(topRight: Radius.circular(Get.width * number / 100));
BorderRadius radiusBottomRight(double number) => BorderRadius.only(bottomRight: Radius.circular(Get.width * number / 100));
BorderRadius radiusBottomLeft(double number) => BorderRadius.only(bottomLeft: Radius.circular(Get.width * number / 100));
BorderRadius radiusOnly(double topLeft, double topRight, double bottomLeft, double bottomRight)=>
 BorderRadius.only(
  topLeft: Radius.circular(Get.width * topLeft / 100),
   topRight: Radius.circular(Get.width * topRight / 100), 
   bottomLeft: Radius.circular(Get.width * bottomLeft / 100),
   bottomRight: Radius.circular(Get.width * bottomRight / 100),
   );





//======================
