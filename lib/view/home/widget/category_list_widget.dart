import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:newsapp/view_model/controller/homeview/home_view_controller.dart';

class CategoryListWidget extends StatelessWidget {
  final HomeViewModel controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.h,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: controller.categories.length,
        itemBuilder: (context, index) {
          final category = controller.categories[index];

          return Obx(() {
            final isSelected = controller.selectedCategory.value == category;

            return GestureDetector(
              onTap: () => controller.changeCategory(category),
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 8.w, vertical: 10.h),
                padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
                decoration: BoxDecoration(
                  color: isSelected ? Colors.blue : Colors.grey[300],
                  borderRadius: BorderRadius.circular(20.r),
                ),
                child: Center(
                  child: Text(
                    category[0].toUpperCase() + category.substring(1),
                    style: TextStyle(
                      color: isSelected ? Colors.white : Colors.black,
                    ),
                  ),
                ),
              ),
            );
          });
        },
      ),
    );
  }
}
