import 'package:get/get.dart';
import 'package:newsapp/res/routes/routes_name.dart';
import 'package:newsapp/view/splash_screen/splash_view.dart';
import 'package:newsapp/view/user_name/user_name_view.dart';
import 'package:newsapp/view/home/home_view.dart';
import 'package:newsapp/view/news_details/newsdetails_view.dart';

class AppRoutes {
  static List<GetPage> appRoutes() => [
        GetPage(
          name: RouteName.splashScreen,
          page: () => const SplashScreen(),
          transition: Transition.fadeIn,
          transitionDuration: const Duration(milliseconds: 500),
        ),

        GetPage(
          name: RouteName.userNameScreen,
          page: () => UserNameView(),
          transition: Transition.rightToLeft,
        ),

        GetPage(
          name: RouteName.homePage,
          page: () => HomeView(),
          transition: Transition.fade,
        ),
        
        GetPage(
          name: RouteName.newsDetails,
          page: () => NewsDetailsPage(newsItem: Get.arguments),
          transition: Transition.downToUp,
        ),
      ];
}
