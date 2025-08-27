import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PublishedWidget extends StatelessWidget {
  final String? publishedAt;
  final String? sourceName;
  const PublishedWidget({super.key, this.publishedAt, this.sourceName});

   @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Published at: ${publishedAt ?? ""}",
            style: const TextStyle(fontSize: 12, color: Colors.grey)),
        SizedBox(height: 8.h),
        Text("Source: ${sourceName ?? "Not Found"}",
            style: const TextStyle(fontSize: 12, color: Colors.grey)),
      ],
    );
  }
}