import 'package:flutter/material.dart';
import 'package:guarani_poke_test/src/core/base/colors.dart';
import 'package:guarani_poke_test/src/core/base/images.dart';
import 'package:guarani_poke_test/src/globals/controllers/tab_controller.dart';
import 'package:guarani_poke_test/src/utils/page_state.dart';

BottomNavigationBar buildBottomNavigationBar(PageTabController controller) {
  return BottomNavigationBar(
    selectedItemColor: CustomColors.redPokemon,
    unselectedItemColor: CustomColors.defaultColor,
    currentIndex: controller.currentIndex.value,
    selectedLabelStyle: const TextStyle(fontWeight: FontWeight.bold),
    unselectedLabelStyle: const TextStyle(fontWeight: FontWeight.bold),
    items: [
      BottomNavigationBarItem(
        icon: Image.asset(
          Images.homeTab,
          height: 65,
          color: controller.currentIndex.value == 0
              ? CustomColors.redPokemon
              : CustomColors.defaultColor,
        ),
        label: 'Home',
      ),
      BottomNavigationBarItem(
        icon: Image.asset(
          Images.favoriteTab,
          height: 65,
          color: controller.currentIndex.value == 1
              ? CustomColors.redPokemon
              : CustomColors.defaultColor,
        ),
        label: 'Favoritos',
      ),
      BottomNavigationBarItem(
        icon: Image.asset(
          Images.profileTab,
          height: 65,
          color: controller.currentIndex.value == 2
              ? CustomColors.redPokemon
              : CustomColors.defaultColor,
        ),
        label: 'Perfil',
      ),
    ],
    onTap: (index) {
      controller.currentPage.value = PageState.values[index];
      controller.currentIndex.value = index;
    },
  );
}
