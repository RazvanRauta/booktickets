import '../utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../widgets/text_input.dart';
import '../widgets/text_header_with_button.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(
          horizontal: Adaptive.px(20),
          vertical: Adaptive.px(20),
        ),
        children: [
          Text(
            "What are\nyou looking for?",
            style: Styles.headlineStyles1.copyWith(
              fontSize: Adaptive.px(35),
            ),
          ),
          Gap(
            Adaptive.px(20),
          ),
          const Tabs(),
          Gap(
            Adaptive.px(25),
          ),
          const SearchInputs(),
          Gap(
            Adaptive.px(40),
          ),
          const TextHeaderWithButton(
            headingText: "Discounts",
            buttonText: "View all",
          ),
          Gap(
            Adaptive.px(10),
          ),
          const Discounts(),
        ],
      ),
    );
  }
}

class Tabs extends StatelessWidget {
  const Tabs({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      child: Container(
        padding: EdgeInsets.all(
          Adaptive.px(3.5),
        ),
        decoration: BoxDecoration(
          color: const Color(0xFFF4F6FD),
          borderRadius: BorderRadius.circular(
            Adaptive.px(50),
          ),
        ),
        child: Row(
          children: [
            Container(
              width: Adaptive.w(44),
              padding: EdgeInsets.symmetric(
                vertical: Adaptive.px(7),
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.horizontal(
                  left: Radius.circular(
                    Adaptive.px(50),
                  ),
                ),
              ),
              child: const Center(
                child: Text("Airline tickets"),
              ),
            ),
            Container(
              width: Adaptive.w(44),
              padding: EdgeInsets.symmetric(
                vertical: Adaptive.px(7),
              ),
              decoration: BoxDecoration(
                color: Colors.transparent,
                borderRadius: BorderRadius.horizontal(
                  right: Radius.circular(
                    Adaptive.px(50),
                  ),
                ),
              ),
              child: const Center(
                child: Text("Hotels"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SearchInputs extends StatelessWidget {
  const SearchInputs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextInput(
          bgColor: Colors.white,
          icon: Icons.flight_takeoff_rounded,
          iconColor: const Color(0xFFBFC2D5),
          placeholder: "Departure",
          textStyle: Styles.textStyle,
        ),
        Gap(
          Adaptive.px(20),
        ),
        TextInput(
          bgColor: Colors.white,
          icon: Icons.flight_land_rounded,
          iconColor: const Color(0xFFBFC2D5),
          placeholder: "Arrival",
          textStyle: Styles.textStyle,
        ),
        Gap(
          Adaptive.px(25),
        ),
        Container(
          decoration: BoxDecoration(
            color: const Color(0xD91139CE),
            borderRadius: BorderRadius.circular(
              Adaptive.px(10),
            ),
          ),
          padding: EdgeInsets.symmetric(
            horizontal: Adaptive.px(15),
            vertical: Adaptive.px(18),
          ),
          child: Center(
            child: Text(
              "Find tickets",
              style: Styles.textStyle.copyWith(
                color: Colors.white,
                // fontSize: Adaptive.px(21),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class Discounts extends StatelessWidget {
  const Discounts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          padding: EdgeInsets.all(
            Adaptive.px(10),
          ),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(
              Adaptive.px(10),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: Adaptive.w(30),
                height: Adaptive.px(190),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    Adaptive.px(10),
                  ),
                  image: const DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage("lib/src/assets/images/sit.jpg"),
                  ),
                ),
              ),
              Gap(
                Adaptive.px(15),
              ),
              Text(
                "20% discount\non business\nclass\ntickets from\nAirline One\nInternational",
                style: Styles.headLineStyles3,
              )
            ],
          ),
        ),
        Column(
          children: [
            Container(
              child: Text("hello"),
            ),
            Container(
              child: Text("hello again"),
            )
          ],
        )
      ],
    );
  }
}
