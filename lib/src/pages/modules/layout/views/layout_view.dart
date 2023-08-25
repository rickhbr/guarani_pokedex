import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:guarani_poke_test/src/pages/modules/favorite/views/favorite_view.dart';
import 'package:guarani_poke_test/src/pages/modules/home/views/home_view.dart';
import 'package:guarani_poke_test/src/pages/modules/layout/controllers/layout_controller.dart';
import 'package:guarani_poke_test/src/pages/modules/perfil/views/perfil_view.dart';
import 'package:guarani_poke_test/src/utils/page_state.dart';
import 'package:guarani_poke_test/src/widgets/navigation_bar/navigation_bar.dart';

class MainScreen extends GetView<LayoutController> {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() {
        switch (controller.pageController.currentPage.value) {
          case PageState.home:
            return HomeView();
          case PageState.favorito:
            return FavoriteView();
          case PageState.perfil:
            return PerfilView();
          default:
            return const SizedBox.shrink();
        }
      }),
      bottomNavigationBar:
          Obx(() => buildBottomNavigationBar(controller.pageController)),
    );
  }
}
