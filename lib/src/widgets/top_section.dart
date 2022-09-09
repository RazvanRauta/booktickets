import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../utils/app_styles.dart';
import 'text_header_with_button.dart';
import 'text_input.dart';

class TopSection extends StatelessWidget {
  const TopSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: Adaptive.px(20),
      ),
      child: Column(
        children: [
          Gap(
            Adaptive.px(20),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Good Morning!",
                    style: Styles.headLineStyles3,
                  ),
                  Gap(
                    Adaptive.px(5),
                  ),
                  Text(
                    "Book Tickets",
                    style: Styles.headlineStyles1,
                  ),
                ],
              ),
              Container(
                height: Adaptive.px(50),
                width: Adaptive.px(50),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    Adaptive.px(10),
                  ),
                  image: const DecorationImage(
                    fit: BoxFit.fitHeight,
                    image: AssetImage("lib/src/assets/images/img_1.png"),
                  ),
                ),
              ),
            ],
          ),
          Gap(
            Adaptive.px(25),
          ),
          TextInput(
            bgColor: const Color(0xFFF4F6FD),
            icon: FluentSystemIcons.ic_fluent_search_regular,
            iconColor: const Color(0xFFBFC205),
            placeholder: "Search",
            textStyle: Styles.headLineStyles4,
          ),
          Gap(
            Adaptive.px(40),
          ),
          const TextHeaderWithButton(
            headingText: "Upcoming Flights",
            buttonText: "View all",
          )
        ],
      ),
    );
  }
}
