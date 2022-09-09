import '../mocks/hotels_list.dart';
import '../mocks/tickets_list.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../utils/app_styles.dart';
import '../widgets/hotel_card.dart';
import '../widgets/ticket_view.dart';
import '../widgets/top_section.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        children: [
          const TopSection(),
          const Gap(15),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.only(
              left: Adaptive.px(20),
            ),
            child: Row(
                children: ticketList
                    .map((ticket) => TicketView(
                          ticket: ticket,
                        ))
                    .toList()),
          ),
          const Gap(15),
          const HotelsHeader(),
          const Gap(15),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.only(
              left: Adaptive.px(20),
            ),
            child: Row(
                children: hotelList
                    .map(
                      (hotel) => HotelCard(hotel: hotel),
                    )
                    .toList()),
          ),
        ],
      ),
    );
  }
}

class HotelsHeader extends StatelessWidget {
  const HotelsHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: Adaptive.px(20),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Hotels",
            style: Styles.headLineStyles2,
          ),
          InkWell(
            onTap: () => {print("You are tapped")},
            child: Text(
              "View all",
              style: Styles.textStyle.copyWith(color: Styles.primaryColor),
            ),
          )
        ],
      ),
    );
  }
}
