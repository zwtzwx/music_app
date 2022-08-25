import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:music_app/common/color_config.dart';
import 'package:music_app/views/main_controller.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      builder: (context, child) {
        return MaterialApp(
          theme: ThemeData(
            primaryColor: ColorConfig.primary,
            backgroundColor: ColorConfig.bgColor,
          ),
          showSemanticsDebugger: false,
          debugShowCheckedModeBanner: false,
          home: const MainControllerPage(),
          builder: EasyLoading.init(),
        );
      },
    );
  }
}
