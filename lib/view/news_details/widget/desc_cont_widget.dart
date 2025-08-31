import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';

class DescriptionWidget extends StatelessWidget {
  final String? content;
  final String? description;
  const DescriptionWidget({super.key, this.content, this.description});

  @override
  Widget build(BuildContext context) {
    final String displayDescription = (description != null && description!.isNotEmpty)
      ? description!
      :"No description available for this article";

    final String displayContent = (content != null && content!.isNotEmpty)
        ? content!
        : "No content available for this article.";

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        //Description
        Text(
          'description_hint'.tr,
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 8),
        Text(
          displayDescription,
          style: TextStyle(fontSize: 14.sp, color: Color(0xFF444444)),
        ),

         const SizedBox(height: 20),
         Divider(height: 10),

        //Content
        Text(
          'content_hint'.tr,
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 16),
        Text(
          displayContent,
          style: TextStyle(fontSize: 14.sp, color: const Color(0xFF444444)),
        ),
      ],
    );
  }
}
