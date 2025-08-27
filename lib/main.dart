import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:newsapp/res/routes/routes.dart';
import 'package:newsapp/res/routes/routes_name.dart';
import 'view/home/home_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'News App',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          initialRoute: RouteName.splashScreen, 
          getPages: AppRoutes.appRoutes(),
        );
      },
      child: HomeView(),
    );
  }
}
