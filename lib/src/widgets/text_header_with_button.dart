import 'package:flutter/material.dart';

import '../utils/app_styles.dart';

class TextHeaderWithButton extends StatelessWidget {
  final String headingText;
  final String buttonText;

  const TextHeaderWithButton({
    Key? key,
    required this.headingText,
    required this.buttonText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          headingText,
          style: Styles.headLineStyles2,
        ),
        InkWell(
          onTap: () => {print("You are tapped")},
          child: Text(
            buttonText,
            style: Styles.textStyle.copyWith(color: Styles.primaryColor),
          ),
        )
      ],
    );
  }
}
