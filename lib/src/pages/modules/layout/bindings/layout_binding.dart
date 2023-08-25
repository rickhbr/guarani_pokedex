import 'package:get/get.dart';
import 'package:guarani_poke_test/src/pages/modules/layout/controllers/layout_controller.dart';

class LayoutBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LayoutController>(
      () => LayoutController(),
    );
  }
}
