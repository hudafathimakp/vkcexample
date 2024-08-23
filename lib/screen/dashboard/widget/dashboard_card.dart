import 'package:flutter/material.dart';
import 'package:vkc_web_example/common_widget/color/color.dart';
import 'package:vkc_web_example/common_widget/svg/svg_widget.dart';
import 'package:vkc_web_example/common_widget/text/text.dart';

class DashboardCard extends StatelessWidget {
  final String path;
  final String title;
  final String count;
  const DashboardCard(
      {super.key,
      required this.path,
      required this.title,
      required this.count});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: AppColor.scaffoldBackgroundColor),
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Row(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                blackText(title, 16, fontWeight: FontWeight.w600),
                const SizedBox(
                  height: 10,
                ),
                blackText(count, 28, fontWeight: FontWeight.w700)
              ],
            ),
            const SizedBox(
              width: 25,
            ),
            svgWidget(path)
          ],
        ),
      ),
    );
  }
}
