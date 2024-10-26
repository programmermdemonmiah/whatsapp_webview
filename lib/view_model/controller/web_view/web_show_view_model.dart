import 'package:flutter/services.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:wa7070/res/color_manager/app_colors.dart';
import 'package:get/get.dart';

class WebShowViewModel extends GetxController {
  late InAppWebViewController webController;
  RxDouble progress = 0.0.obs;

  // @override
  // void onClose() {
  //   if (webController != null) {
  //     webController.dispose();
  //   }
  //   super.onClose();
  // }
  @override
  void onInit() {
    super.onInit();
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: AppColors.primaryColor,
      statusBarBrightness: Brightness.dark,
      statusBarIconBrightness: Brightness.light,
    ));
  }
}
