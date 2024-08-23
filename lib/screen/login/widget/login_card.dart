import 'package:flutter/material.dart';
import 'package:vkc_web_example/common_widget/button/gradient_button.dart';
import 'package:vkc_web_example/common_widget/color/color.dart';
import 'package:vkc_web_example/common_widget/text/text.dart';
import 'package:vkc_web_example/screen/login/widget/forgot_password.dart';
import 'package:vkc_web_example/screen/login/widget/login_textfield.dart';

class LoginCard extends StatelessWidget {
  const LoginCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 450,
      width: 400,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: AppColor.scaffoldBackgroundColor,
        boxShadow: const [
          BoxShadow(
            color: Color(0x1A000000),
            blurRadius: 50,
            spreadRadius: 0,
            offset: Offset(0, 0),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 40, top: 50, right: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            colorText('Login', fontWeight: FontWeight.w700, fontSize: 30),
            const SizedBox(
              height: 30,
            ),
            blackText1(
              'Username',
              15,
              fontWeight: FontWeight.w700,
            ),
            const SizedBox(
              height: 10,
            ),
            const LoginTextField(
              hintText: 'admin',
            ),
            const SizedBox(
              height: 10,
            ),
            blackText('Password', 15, fontWeight: FontWeight.w700),
            const SizedBox(
              height: 10,
            ),
            const LoginTextField(
                hintText: '',
                textInputType: TextInputType.text,
                obscureText: true,
                suffixIcon: Icons.visibility_off),
            ForgotPasswordWidget(
              onPressed: () {},
            ),
            const SizedBox(
              height: 10,
            ),
            CommonButtonWithGradient(
              label: 'Login',
              click: () {},
            )
          ],
        ),
      ),
    );
  }
}
