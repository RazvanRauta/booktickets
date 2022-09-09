import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../utils/app_styles.dart';

class HotelCard extends StatelessWidget {
  final Map<String, dynamic> hotel;

  const HotelCard({Key? key, required this.hotel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60.w,
      height: Adaptive.px(350),
      padding: EdgeInsets.symmetric(
        horizontal: Adaptive.px(15),
        vertical: Adaptive.px(17),
      ),
      margin: EdgeInsets.only(
        right: Adaptive.px(17),
        top: Adaptive.px(5),
      ),
      decoration: BoxDecoration(
          color: Styles.primaryColor,
          borderRadius: BorderRadius.circular(
            Adaptive.px(24),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade200,
              blurRadius: 20,
              spreadRadius: 5,
            )
          ]),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: Adaptive.px(180),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                Adaptive.px(12),
              ),
              color: Styles.primaryColor,
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage("lib/src/assets/images/${hotel["image"]}"),
              ),
            ),
          ),
          const Gap(10),
          Text(
            hotel["place"],
            style: Styles.headLineStyles2.copyWith(
              color: Styles.kakiColor,
            ),
          ),
          const Gap(5),
          Text(
            hotel["destination"],
            style: Styles.headLineStyles3.copyWith(
              color: Colors.white,
            ),
          ),
          const Gap(8),
          Text(
            "\$${hotel["price"]}/night",
            style: Styles.headlineStyles1.copyWith(
              color: Styles.kakiColor,
            ),
          ),
        ],
      ),
    );
  }
}
