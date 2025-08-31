import 'package:flutter/material.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';

class NameInputWidget extends StatelessWidget {
  final TextEditingController controller;
  const NameInputWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      style: const TextStyle(fontSize: 18),
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.grey.shade100,
        labelText: "enter_name".tr,
        labelStyle: TextStyle(color: Colors.grey.shade700),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: const BorderSide(
            color: Colors.black,
            width:1.5,
          ),
        )
      ),
    );
  }
}