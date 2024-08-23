library;

import 'package:flutter/material.dart';
import 'package:vkc_web_example/common_widget/color/color.dart';

class CommonButtonWithGradient extends StatelessWidget {
  final String label;
  final Function click;
  final bool? isLoading;
  final bool? isArrowRight;
  final double? borderRadius;
  const CommonButtonWithGradient(
      {super.key,
      this.isArrowRight = false,
      required this.label,
      required this.click,
      this.borderRadius = 6,
      this.isLoading = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
          gradient: AppColor.commonGradient,
          borderRadius: BorderRadius.circular(borderRadius!)),
      height: MediaQuery.of(context).size.height * .06,
      child: Center(
        child: isLoading == true
            ? const CircularProgressIndicator(
                color: Colors.white,
              )
            : Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    label,
                    style: const TextStyle(
                        color: Colors.white, fontWeight: FontWeight.w600),
                  ),
                  if (isArrowRight!)
                    const Icon(
                      Icons.arrow_forward,
                      color: Colors.white,
                    )
                ],
              ),
      ),
    );
  }
}
