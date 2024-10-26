import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

showToast(String title, String message) {
  Get.snackbar(title, message,
      backgroundColor: Colors.white,
      animationDuration: const Duration(milliseconds: 600),
      boxShadows: [
        const BoxShadow(color: Colors.white, blurRadius: 32, spreadRadius: 12)
      ],
      margin: EdgeInsets.only(top: 8.sp, left: 8, right: 8),
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
      borderRadius: 5,
      colorText: Colors.lightBlue[500]);
}

showSuccessTost(String title, String message) {
  Get.snackbar(title, message,
      backgroundColor: Colors.white,
      animationDuration: const Duration(milliseconds: 600),
      boxShadows: [
        const BoxShadow(color: Colors.white, blurRadius: 32, spreadRadius: 12)
      ],
      margin: EdgeInsets.only(top: 8.sp, left: 8, right: 8),
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
      borderRadius: 5,
      colorText: Colors.green[500]);
}

showErrorTost(String title, String message) {
  Get.snackbar(title, message,
      backgroundColor: Colors.white,
      animationDuration: const Duration(milliseconds: 600),
      boxShadows: [
        const BoxShadow(color: Colors.white, blurRadius: 32, spreadRadius: 12)
      ],
      margin: EdgeInsets.only(top: 8.sp, left: 8, right: 8),
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
      borderRadius: 5,
      colorText: Colors.red[500]);
}
