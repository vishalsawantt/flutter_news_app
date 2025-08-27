import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:newsapp/view/news_details/widget/desc_cont_widget.dart';
import 'package:newsapp/view/news_details/widget/image_widget.dart';
import 'package:newsapp/view/news_details/widget/pub_sou_widget.dart';
import 'package:newsapp/view/news_details/widget/title_widget.dart';


class NewsDetailsPage extends StatelessWidget {
  final dynamic newsItem;
  const NewsDetailsPage({super.key, required this.newsItem});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(newsItem['title'] ?? "News Dtails"),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ImageWidget(imageUrl: newsItem['urlToImage']),
            SizedBox(height: 16.h),
            TitleWidget(title: newsItem['title']),
            SizedBox(height: 8.h),
            DescriptionWidget(description: newsItem['desription'], content: newsItem['content']),
            SizedBox(height: 20.h),
            PublishedWidget(publishedAt: newsItem['publishedAt'], sourceName: newsItem['source']?['name']),
          ],
        ),
      ),
    );
  }
}