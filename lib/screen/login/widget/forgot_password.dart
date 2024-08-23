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
            child: Text(
              "Forgot Password ?",
              style: TextStyle(
                color: Colors.grey.shade600,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
