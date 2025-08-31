import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:newsapp/view/home/widget/articles_list.dart';
import 'package:newsapp/view/home/widget/category_list_widget.dart';
import 'package:newsapp/view/user_name/widget/langauage_button.dart';
import 'package:newsapp/view_model/controller/homeview/home_view_controller.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomeView extends StatelessWidget {
  final HomeViewModel controller = Get.put(HomeViewModel());

  // function to get user name
  Future<String?> _getUserName() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    return preferences.getString("userName");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: FutureBuilder<String?>(
          future: _getUserName(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Text("Loading...");
            } else if (snapshot.hasData && snapshot.data != null) {
              // user name found
              return Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Text(
                      "welcome_user".trParams({'name': snapshot.data!}),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  const LangauageButton(),
                ],
              );
            } else {
              // default text
              return Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Expanded(
                    child: Text(
                      "News App",
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  const LangauageButton(),
                ],
              );
            }
          },
        ),
      ),

      body: Column(
        children: [
           CategoryListWidget(),
          Expanded(child: ArticlesList()),
        ],
      ),
    );
  }
}
