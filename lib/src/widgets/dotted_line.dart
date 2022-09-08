import 'package:flutter/material.dart';

class DottedLine extends StatelessWidget {
  const DottedLine({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Stack(
        children: [
          SizedBox(
            height: 24,
            child: LayoutBuilder(
              builder: (BuildContext context, BoxConstraints constrains) {
                return Flex(
                  direction: Axis.horizontal,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  mainAxisSize: MainAxisSize.max,
                  children: List.generate(
                    (constrains.constrainWidth() / 6).floor(),
                    (index) => const SizedBox(
                      width: 3,
                      height: 1,
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          Center(
            child: Transform.rotate(
              angle: 1.5,
              child: const Icon(
                Icons.local_airport_rounded,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
