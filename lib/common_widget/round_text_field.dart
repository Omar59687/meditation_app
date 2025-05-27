import 'package:flutter/material.dart';
import 'package:meditation_app/common/color_extension.dart';

class RoundTextField extends StatelessWidget {
  const RoundTextField(
      {super.key,
      this.hintText,
      this.controller,
      this.keyboardType,
      this.obscureText,
      this.right});

  final String? hintText;
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final bool? obscureText;
  final Widget? right;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      margin: const EdgeInsets.symmetric(horizontal: 20),
      padding: const EdgeInsets.only(top: 8),
      decoration: BoxDecoration(
        color: TColor.txtBG,
        borderRadius: BorderRadius.circular(15),
      ),
      child: TextField(
        controller: controller,
        keyboardType: keyboardType,
        obscureText: obscureText ?? false,
        style: TextStyle(
          color: TColor.primaryText,
          fontSize: 16,
        ),
        decoration: InputDecoration(
          enabledBorder: InputBorder.none,
          focusedBorder: InputBorder.none,
          hintText: hintText,
          hintStyle: TextStyle(
            color: TColor.secondaryText,
            fontSize: 16,
          ),
          contentPadding: const EdgeInsets.symmetric(horizontal: 20),
          suffixIcon: right,
        ),
      ),
    );
  }
}
