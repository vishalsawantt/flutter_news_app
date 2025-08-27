import 'package:flutter/widgets.dart';

class TitleWidget extends StatelessWidget {
  final String? title;
  const TitleWidget({super.key, this.title});

  @override
  Widget build(BuildContext context) {
    return Text(
      title ?? "loading..",
      style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
    );
  }
}
