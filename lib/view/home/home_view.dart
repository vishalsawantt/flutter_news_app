import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:newsapp/view/home/widget/articles_list.dart';
import 'package:newsapp/view/home/widget/category_list_widget.dart';
import 'package:newsapp/view_model/controller/homeview/home_view_controller.dart';

class HomeView extends StatelessWidget {
  final HomeViewModel controller = Get.put(HomeViewModel());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("News App")),
      body: Column(
        children: [
         CategoryListWidget(),
         Expanded(child: ArticlesList()),
        ],
      ),
    );
  }
}