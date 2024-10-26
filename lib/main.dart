import 'package:wa7070/all_bindings/get_di.dart';
import 'package:wa7070/res/app_routes/app_routes.dart';
import 'package:wa7070/res/app_routes/app_routes_name.dart';
import 'package:wa7070/res/color_manager/app_colors.dart';
import 'package:wa7070/utils/app_constant.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await init();
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: AppColors.primaryColor,
    statusBarBrightness: Brightness.dark,
    statusBarIconBrightness: Brightness.light,
  ));
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);

  if (!kIsWeb &&
      kDebugMode &&
      defaultTargetPlatform == TargetPlatform.android) {
    await InAppWebViewController.setWebContentsDebuggingEnabled(kDebugMode);
  }

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: AppColors.primaryColor,
      statusBarBrightness: Brightness.dark,
      statusBarIconBrightness: Brightness.light,
    ));
    return ScreenUtilInit(
        designSize: const Size(428, 926),
        builder: (_, __) {
          return GetMaterialApp(
            theme: ThemeData(
                scaffoldBackgroundColor: AppColors.whiteBg,
                fontFamily: AppConstant.manrope),
            getPages: AppRoutes.appRoutes(),
            initialRoute: AppRoutesName.splashView,
            debugShowCheckedModeBanner: false,
          );
        });
  }
}
