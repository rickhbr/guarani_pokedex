import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class NavigationService {
  static void push(String route) {
    Get.toNamed(route);
  }

  static void pushTransition(Widget page) {
    Get.to(page,
        transition: Transition.fade, duration: const Duration(seconds: 1));
  }

  static void pushWithParamsArgs(String routeName, {Object? arguments}) {
    Get.toNamed(routeName, arguments: arguments);
  }

  static void pushWithParams({
    required String route,
    required Map<String, dynamic> params,
  }) {
    Get.toNamed(route, arguments: params);
  }

  static void replace(String route) {
    Get.offNamed(route);
  }

  static void replaceWithParams({
    required String route,
    required Map<String, dynamic> params,
  }) {
    Get.offNamed(route, arguments: params);
  }

  static void goBack() {
    Get.back();
  }
}
