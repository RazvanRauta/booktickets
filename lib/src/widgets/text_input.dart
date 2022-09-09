import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../utils/app_styles.dart';

class TextInput extends StatelessWidget {
  final IconData icon;
  final Color bgColor;
  final Color iconColor;
  final String placeholder;
  final TextStyle textStyle;

  const TextInput({
    Key? key,
    required this.icon,
    required this.bgColor,
    required this.iconColor,
    required this.placeholder,
    required this.textStyle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(
          Adaptive.px(10),
        ),
      ),
      padding: EdgeInsets.symmetric(
        horizontal: Adaptive.px(12),
        vertical: Adaptive.px(12),
      ),
      child: Row(
        children: [
          Icon(
            icon,
            color: iconColor,
          ),
          Gap(
            Adaptive.px(10),
          ),
          Text(
            placeholder,
            style: textStyle,
          )
        ],
      ),
    );
  }
}
