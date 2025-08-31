import 'package:flutter/material.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';

class SubmitButtonWidget extends StatelessWidget {
  final VoidCallback collectName;
  const SubmitButtonWidget({super.key, required this.collectName});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
        child:  ElevatedButton(
          style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.symmetric(vertical: 15),
            backgroundColor: Colors.blueAccent,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            elevation: 5,
          ),
          onPressed: collectName,
          child: Text(
            "continue_button".tr,
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
          ),
        )
    );
  }
}