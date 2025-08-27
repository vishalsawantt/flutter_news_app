import 'package:get/get.dart';
import 'package:newsapp/res/routes/routes_name.dart';
import 'package:newsapp/view/home/home_view.dart';
import 'package:newsapp/view/news_details/newsdetails_view.dart';
import 'package:newsapp/view/splash_screen/splash_view.dart';

class AppRoutes {
  static appRoutes() => [
    GetPage(
      name: RouteName.splashScreen, 
      page: () => SplashScreen()),

    GetPage(
      name: RouteName.homePage,
      page: () => HomeView(),
    ),

    GetPage(
      name: RouteName.newsDetails,
      page: () => NewsDetailsPage(newsItem: Get.arguments),
    ),
  ];
}
