library;

import 'package:flutter/material.dart';

class ForgotPasswordWidget extends StatelessWidget {
  final Function onPressed;
  const ForgotPasswordWidget({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          TextButton(
            onPressed: () {
              onPressed();
            },
            child: const Text(
              "Forgot Password ?",
              style: TextStyle(
                color: Color(0xff8C8C8C),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
