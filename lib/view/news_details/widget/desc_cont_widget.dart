import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DescriptionWidget extends StatelessWidget {
  final String? description;
  final String? content;
  const DescriptionWidget({super.key, this.description, this.content});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'description' ?? "No description available",
          style: const TextStyle(fontSize: 16),
        ),

        const SizedBox(height: 16),
        Text(content ?? "", style: TextStyle(fontSize: 14.sp)),
      ],
    );
  }
}
