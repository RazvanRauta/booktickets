import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import 'src/screens/bottom_bar.dart';
import 'src/utils/app_styles.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(builder: (context, orientation, deviceType) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primaryColor: primary,
        ),
        home: const BottomBar(),
      );
    });
  }
}
