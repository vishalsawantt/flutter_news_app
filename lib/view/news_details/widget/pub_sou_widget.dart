import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PublishedWidget extends StatelessWidget {
  final String? publishedAt;
  final String? sourceName;
  const PublishedWidget({super.key, this.publishedAt, this.sourceName});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Icon(Icons.calendar_today, size: 14, color: Colors.grey),
            SizedBox(width: 6.w),
            Text(
              publishedAt ?? "Unknown date",
              style: TextStyle(fontSize: 12.sp, color: Colors.grey[600]),
            ),
          ],
        ),
        Row(
          children: [
            Icon(Icons.source, size: 14, color: Colors.grey),
            SizedBox(width: 6.w),
            Text(
              sourceName ?? "Not Found",
              style: TextStyle(fontSize: 12.sp, color: Colors.grey[600]),
            ),
          ],
        ),
      ],
    );
  }
}
