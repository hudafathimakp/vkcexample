library;

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:vkc_web_example/common_widget/color/color.dart';

class LoginTextField extends StatelessWidget {
  final String hintText;
  final bool? isEnable;
  final FormFieldValidator? validator;
  final IconData? prefixIcon;
  final IconData? suffixIcon;
  final bool? inputFormate;
  final TextInputType? textInputType;
  final bool obscureText;
  final Function? suffixIconClick;
  final TextEditingController? textEditingController;

  const LoginTextField(
      {super.key,
      this.isEnable,
      this.textInputType,
      this.suffixIconClick,
      this.prefixIcon,
      this.inputFormate,
      this.suffixIcon,
      required this.hintText,
      this.obscureText = false,
      this.textEditingController,
      this.validator});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: validator,
      obscureText: obscureText,
      controller: textEditingController,
      inputFormatters: inputFormate == null
          ? null
          : [
              FilteringTextInputFormatter.digitsOnly,
            ],
      enabled: isEnable ?? true,
      style: const TextStyle(fontSize: 15),
      keyboardType: textInputType ?? TextInputType.text,
      decoration: InputDecoration(
        fillColor: AppColor.textfieldColor,
        hintStyle: const TextStyle(fontSize: 14),
        filled: true,
        isDense: true,
        prefixIcon: prefixIcon == null
            ? null
            : Icon(
                prefixIcon,
                size: 20,
              ),
        suffixIcon: suffixIcon == null
            ? null
            : IconButton(
                onPressed: () => suffixIconClick!(),
                icon: Icon(
                  suffixIcon,
                  size: 20,
                  color: Colors.grey.withOpacity(.6),
                ),
              ),
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(6),
        ),
        hintText: hintText,
      ),
    );
  }
}
