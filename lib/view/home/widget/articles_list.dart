import 'package:newsapp/res/routes/routes_name.dart';
import 'package:newsapp/view/home/widget/news_card_widget.dart';
import 'package:newsapp/view_model/controller/homeview/home_view_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ArticlesList extends StatelessWidget {
  //Give me the already-created HomeViewModel so I can use it in this widget
  final HomeViewModel controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      if (controller.isLoading.value) {
        return Center(child: CircularProgressIndicator());
      }
      if (controller.articles.isEmpty) {
        return Center(child: Text("No news available"));
      }

      return ListView.builder(
        itemCount: controller.articles.length,
        itemBuilder: (context, index) {
          final article = controller.articles[index];
          return NewsCardWidget(
            article: article,
            onTap: () {
              Get.toNamed(RouteName.newsDetails, arguments: article);
            },
          );
        },
      );
    });
  }
}
