import 'dart:collection';

import 'package:wa7070/res/app_text_style/app_text_style.dart';
import 'package:wa7070/res/color_manager/app_colors.dart';
import 'package:wa7070/view_model/controller/web_view/web_show_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class WebViewPage extends StatefulWidget {
  final String webUrl;

  const WebViewPage({super.key, required this.webUrl});

  @override
  State<WebViewPage> createState() => _WebViewPageState();
}

class _WebViewPageState extends State<WebViewPage> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<WebShowViewModel>(builder: (controller) {
      SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
        statusBarColor: AppColors.primaryColor,
        statusBarBrightness: Brightness.dark,
        statusBarIconBrightness: Brightness.light,
      ));
      return WillPopScope(
        onWillPop: () async {
          if (await controller.webController.canGoBack()) {
            controller.webController.goBack();
            return false;
          } else {
            _showExitDialog();
            return false;
          }
        },
        child: Scaffold(
          body: SafeArea(
            child: Obx(
              () => RefreshIndicator(
                backgroundColor: AppColors.goldColor,
                color: AppColors.whiteBg,
                onRefresh: () async {
                  await Future.delayed(
                    const Duration(seconds: 1),
                    () async {
                      // print("reload access again");
                      await controller.webController.reload();
                    },
                  );
                },
                child: Stack(
                  children: [
                    _inAppBarWebView(controller, widget.webUrl),
                    if (controller.progress.value < 1)
                      LinearProgressIndicator(
                        value: controller.progress.value,
                        minHeight: 5.sp,
                        color: Colors.green,
                        backgroundColor: AppColors.whiteBg,
                      ),
                  ],
                ),
              ),
            ),
          ),
        ),
      );
    });
  }

  Widget _inAppBarWebView(WebShowViewModel controller, String webUrl) {
    // Common desktop User-Agent for Chrome on Windows
    const desktopUserAgent =
        "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) "
        "Chrome/91.0.4472.124 Safari/537.36";

    return InAppWebView(
      initialUrlRequest: URLRequest(url: WebUri(webUrl)),
      initialOptions: InAppWebViewGroupOptions(
        crossPlatform: InAppWebViewOptions(
          userAgent: desktopUserAgent, // Sets the WebView to desktop mode
          javaScriptEnabled: true,
          useShouldOverrideUrlLoading: true,
          clearCache: false, //cookies save
          useOnDownloadStart: true,
          allowFileAccessFromFileURLs: true,
          allowUniversalAccessFromFileURLs: true,
          cacheEnabled: true, //cookies save
        ),
      ),
      onWebViewCreated: (wcontroller) {
        controller.webController = wcontroller;
      },
      onProgressChanged: (wcontroller, progress) {
        controller.progress.value = progress / 100;
        debugPrint('WebView loading progress: $progress%');
      },
      shouldOverrideUrlLoading: (controller, request) async {
        debugPrint('Loading URL: ${request.request.url}');
        return NavigationActionPolicy.ALLOW;
      },
      onLoadError: (controller, url, code, message) {
        debugPrint('Load Error: Code $code, Message $message');
      },
      onLoadHttpError: (controller, url, statusCode, description) {
        debugPrint(
            'HTTP Error: StatusCode $statusCode, Description $description');
      },
      onReceivedServerTrustAuthRequest: (controller, challenge) async {
        return ServerTrustAuthResponse(
          action: ServerTrustAuthResponseAction.PROCEED,
        );
      },
    );
  }

  void _showExitDialog() {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          content: SingleChildScrollView(
            child: Text(
              "Are you sure you want to exit the app?",
              style: AppTextStyle.text2(context: context),
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: Text(
                "No",
                style: AppTextStyle.tittleSmall3(context: context),
              ),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            TextButton(
              child: Text(
                "Exit",
                style: AppTextStyle.tittleSmall3(context: context),
              ),
              onPressed: () {
                Navigator.of(context).pop();
                _exitApp();
              },
            ),
          ],
        );
      },
    );
  }

  void _exitApp() {
    Future.delayed(const Duration(milliseconds: 100), () {
      SystemNavigator.pop();
    });
  }
}
