import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../utils/app_styles.dart';
import 'dotted_line.dart';
import 'thick_container.dart';

class TicketView extends StatelessWidget {
  final Map<String, dynamic> ticket;

  const TicketView({Key? key, required this.ticket}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: Adaptive.w(85),
      height: Adaptive.px(200),
      child: Container(
        margin: EdgeInsets.only(
          right: Adaptive.px(16),
        ),
        child: Column(
          children: [
            /*
            Showing the blue part of the card
            */
            Container(
              decoration: BoxDecoration(
                color: Styles.blueColor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(
                    Adaptive.px(21),
                  ),
                  topRight: Radius.circular(
                    Adaptive.px(21),
                  ),
                ),
              ),
              padding: EdgeInsets.all(
                Adaptive.px(16),
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        ticket["from"]["code"],
                        style: Styles.headLineStyles3
                            .copyWith(color: Colors.white),
                      ),
                      const Spacer(),
                      const ThickContainer(),
                      const DottedLine(),
                      const ThickContainer(),
                      const Spacer(),
                      Text(
                        ticket["to"]["code"],
                        style: Styles.headLineStyles3
                            .copyWith(color: Colors.white),
                      ),
                    ],
                  ),
                  const Gap(3),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: Adaptive.px(100),
                        child: Text(
                          ticket["from"]["name"],
                          style: Styles.headLineStyles4.copyWith(
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Text(
                        ticket["flying_time"],
                        style: Styles.headLineStyles4.copyWith(
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        width: Adaptive.px(100),
                        child: Text(
                          ticket["to"]["name"],
                          textAlign: TextAlign.end,
                          style: Styles.headLineStyles4.copyWith(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            /*
            Showing the orange part of the card
            */
            Container(
              color: Styles.orangeColor,
              child: Row(
                children: [
                  SizedBox(
                    height: Adaptive.px(20),
                    width: Adaptive.px(10),
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(
                            Adaptive.px(10),
                          ),
                          bottomRight: Radius.circular(
                            Adaptive.px(10),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.all(Adaptive.px(12)),
                      child: LayoutBuilder(
                        builder:
                            (BuildContext context, BoxConstraints constraints) {
                          return Flex(
                            direction: Axis.horizontal,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            mainAxisSize: MainAxisSize.max,
                            children: List.generate(
                                (constraints.constrainWidth() / 15).floor(),
                                (index) => const SizedBox(
                                      width: 5,
                                      height: 1,
                                      child: DecoratedBox(
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                        ),
                                      ),
                                    )),
                          );
                        },
                      ),
                    ),
                  ),
                  SizedBox(
                    height: Adaptive.px(20),
                    width: Adaptive.px(10),
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(
                            Adaptive.px(10),
                          ),
                          bottomLeft: Radius.circular(
                            Adaptive.px(10),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: Styles.orangeColor,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(
                    Adaptive.px(21),
                  ),
                  bottomRight: Radius.circular(
                    Adaptive.px(21),
                  ),
                ),
              ),
              padding: EdgeInsets.only(
                left: Adaptive.px(16),
                top: Adaptive.px(10),
                right: Adaptive.px(16),
                bottom: Adaptive.px(16),
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            ticket["date"],
                            style: Styles.headLineStyles3.copyWith(
                              color: Colors.white,
                            ),
                          ),
                          const Gap(5),
                          Text(
                            "Date",
                            style: Styles.headLineStyles4.copyWith(
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            ticket["departure_time"],
                            style: Styles.headLineStyles3.copyWith(
                              color: Colors.white,
                            ),
                          ),
                          const Gap(5),
                          Text(
                            "Departure time",
                            style: Styles.headLineStyles4.copyWith(
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            ticket["number"].toString(),
                            style: Styles.headLineStyles3.copyWith(
                              color: Colors.white,
                            ),
                          ),
                          const Gap(5),
                          Text(
                            "Number",
                            style: Styles.headLineStyles4.copyWith(
                              color: Colors.white,
                            ),
                          ),
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
