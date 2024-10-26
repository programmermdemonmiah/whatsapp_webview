import 'package:wa7070/res/app_text_style/app_text_style.dart';
import 'package:wa7070/res/color_manager/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

PreferredSizeWidget customAppBar(
    {required String appBarTitle,
    required BuildContext context,
    bool? centerTitle,
    Color? appBarBg,
    Color? leadingColor,
    List<Widget>? actions,
    Function()? onBackTap,
    Color? textColor}) {
  return AppBar(
    backgroundColor: appBarBg ?? AppColors.primaryColor,
    centerTitle: centerTitle ?? false,
    actions: actions,
    leading: InkWell(
        onTap: onBackTap ??
            () {
              Get.back();
            },
        child: Icon(
          Icons.arrow_back,
          color: leadingColor ?? Colors.white,
          size: 25.sp,
        )),
    title: Text(
      appBarTitle,
      style: AppTextStyle.tittleBig2(
          context: context, color: textColor ?? Colors.white),
    ),
  );
}
