import 'package:get/get.dart';
import 'package:guarani_poke_test/src/globals/controllers/overlay_controller.dart';
import 'package:guarani_poke_test/src/globals/controllers/tab_controller.dart';
import 'package:guarani_poke_test/src/pages/modules/home/controllers/home_controller.dart';

class LayoutController extends GetxController {
  final pageController = Get.put(PageTabController());
  final homeController = Get.put(HomeController());
  final overlayController = Get.put(OverlayController());
}
