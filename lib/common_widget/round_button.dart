import 'package:flutter/material.dart';
import 'package:meditation_app/common/color_extension.dart';

enum RoundButtonType { primary, secondary }

class RoundButton extends StatelessWidget {
  const RoundButton(
      {super.key,
      required this.title,
      this.onPressed,
      this.type = RoundButtonType.primary});

  final String title;
  final VoidCallback? onPressed;
  final RoundButtonType type;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: MaterialButton(
        onPressed: onPressed,
        minWidth: double.infinity,
        elevation: 0,
        color:
            type == RoundButtonType.primary ? TColor.primary : TColor.secondary,
        height: 60,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
          side: BorderSide.none,
        ),
        child: Text(
          title,
          style: TextStyle(
            color: type == RoundButtonType.primary
                ? Colors.white
                : TColor.primaryText,
            fontSize: 14,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
