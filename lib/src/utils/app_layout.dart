import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppLayout {
  static getSize(BuildContext context) {
    return MediaQuery.of(context).size;
  }

  static getScreenHeight() {
    return Get.height;
  }

  static getScreenWidth() {
    return Get.width;
  }

  static getHeight(double pixels) {
    const double referenceScreenHeight = 640;

    return getScreenHeight() * pixels / referenceScreenHeight;
  }

  static getWidth(double pixels) {
    const double referenceScreenWidth = 360;

    return getScreenWidth() * pixels / referenceScreenWidth;
  }
}
