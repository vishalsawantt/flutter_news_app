import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:newsapp/res/colors/app_color.dart';
import 'package:flutter/material.dart';

class Utils {
  static void fieldFocusChange(BuildContext context , FocusNode current , FocusNode nextFocus) {
    current.unfocus();
    FocusScope.of(context).requestFocus(nextFocus);
  }

  static toastMesage(String message) {
    Fluttertoast.showToast(
      msg: message,
      backgroundColor: AppColor.black,
      gravity: ToastGravity.BOTTOM,
    );
  }

  static snackBarError(String title, String message) {
    Get.snackbar(
      title, 
      message,
      backgroundColor: AppColor.red,
      colorText: Colors.white,
      snackPosition: SnackPosition.BOTTOM,
      margin: const EdgeInsets.all(12),
      borderRadius: 8,
    );
  }

  static snackBar(String title, String message) {
    Get.snackbar(
      title, 
      message, 
      backgroundColor: AppColor.green,
      colorText: Colors.white,
      snackPosition: SnackPosition.BOTTOM,
      margin: const EdgeInsets.all(12),
      borderRadius: 8,
    );
  }
}