import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:newsapp/utils/utils.dart';
import 'package:newsapp/view/home/home_view.dart';
import 'package:newsapp/view/user_name/widget/langauage_button.dart';
import 'package:newsapp/view/user_name/widget/name_input_widget.dart';
import 'package:newsapp/view/user_name/widget/submit_button_widget.dart';
import 'package:shared_preferences/shared_preferences.dart';

class UserNameView extends StatelessWidget {
  final TextEditingController _controller = TextEditingController();
  UserNameView({super.key});

  //funcation for collect and save name
  Future<void> collectName(BuildContext context) async {
    String name = _controller.text.trim();
    if (name.isNotEmpty) {
      SharedPreferences preferences = await SharedPreferences.getInstance();
      await preferences.setString('userName', name);
      Get.offAll(() => HomeView());
      Utils.toastMesage("welcome");
    } else {
      Utils.snackBarError("Error", "Please enter your name!");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFF89F7FE), Color(0xFF66A6FF)],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),

        child: Column(
          children: [
            const Align(
              alignment: Alignment.topRight,
              child: Padding(
                padding: EdgeInsets.only(top: 40, right: 16),
                child: LangauageButton(),
              ),
            ),

            Expanded(
              child: Center(
                child: Card(
                  elevation: 8,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  child: Padding(
                    padding: const EdgeInsets.all(24),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          "welcome_hint".tr + "👋",
                          style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                            color: Colors.blueGrey.shade800,
                          ),
                        ),
                        const SizedBox(height: 10),
                        Text(
                          "continue_hint".tr,
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.grey.shade600,
                          ),
                        ),
                        const SizedBox(height: 30),
                        NameInputWidget(controller: _controller),
                        const SizedBox(height: 20),
                        SubmitButtonWidget(
                          collectName: () => collectName(context),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
