import 'package:flutter/material.dart';
import 'package:vkc_web_example/common_widget/color/color.dart';
import 'package:vkc_web_example/screen/login/widget/login_card.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.scaffoldBackgroundColor,
      body: Row(
        children: [
          Image.asset('asset/image/login_logo.png', height: double.infinity),
          Padding(
            padding: const EdgeInsets.only(top: 50, left: 150),
            child: Column(
              children: [
                Image.asset(
                  'asset/image/VKC Parivar App Logo 1.png',
                  height: 50,
                ),
                const SizedBox(
                  height: 80,
                ),
                const LoginCard(),
            
              ],
            ),
          )
        ],
      ),
    );
  }
}
