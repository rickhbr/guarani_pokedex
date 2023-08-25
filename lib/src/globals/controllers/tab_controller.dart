import 'package:get/get.dart';
import 'package:guarani_poke_test/src/utils/page_state.dart';

class PageTabController extends GetxController {
  var currentPage = PageState.home.obs;
  var currentIndex = 0.obs;
}
