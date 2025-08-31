import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:newsapp/res/assets/image_assets.dart';

class ImageWidget extends StatelessWidget {
  final String? imageUrl;
  const ImageWidget({super.key, this.imageUrl});

  @override
  Widget build(BuildContext context) {
    //showing image with progress bar
     if (imageUrl == null || imageUrl!.isEmpty) {
      return ClipRRect(
        borderRadius: BorderRadius.circular(12.r),
        child: Image.asset(
          ImageAssets.brokenImage, // <-- your fallback asset
          height: 200.h,
          width: double.infinity,
          fit: BoxFit.cover,
        ),
      );
    }
    
    return ClipRRect(
      borderRadius: BorderRadius.circular(12.r),
      child: Image.network(
        imageUrl!,
        height: 200,
        width: double.infinity,
        fit: BoxFit.cover,

        loadingBuilder: (context, child, loadingProgress) {
          if (loadingProgress == null) return child;

          return Container(
            height: 200,
            width: double.infinity,
            color: Colors.grey[300],
            child: const Center(child: CircularProgressIndicator()),
          );
        },
        //  errorBuilder: (context, error, stackTrace) {
        //   return Container(
        //     height: 200,
        //     width: double.infinity,
        //     color: Colors.grey[300],
        //     child: const Icon(Icons.broken_image, size: 50, color: Colors.red),
        //   );
        // },
      ),
    ); 
  }
}
