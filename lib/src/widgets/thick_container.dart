import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class ThickContainer extends StatelessWidget {
  const ThickContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(Adaptive.px(3.0)),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(Adaptive.px(20)),
        border: Border.all(
          width: Adaptive.px(2.5),
          color: Colors.white,
        ),
      ),
    );
  }
}
