import 'package:get/get.dart';
import 'package:guarani_poke_test/src/pages/modules/favorite/views/favorite_view.dart';
import 'package:guarani_poke_test/src/pages/modules/home/bindings/home_binding.dart';
import 'package:guarani_poke_test/src/pages/modules/home/views/home_view.dart';
import 'package:guarani_poke_test/src/pages/modules/layout/bindings/layout_binding.dart';
import 'package:guarani_poke_test/src/pages/modules/layout/views/layout_view.dart';
import 'package:guarani_poke_test/src/pages/modules/perfil/views/perfil_view.dart';
import 'package:guarani_poke_test/src/pages/modules/splash/view/splash_screen_view.dart';

abstract class AppPages {
  static final pages = <GetPage>[
    GetPage(
      name: PagesRoutes.splashScreen,
      page: () => const SplashView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: PagesRoutes.mainScren,
      page: () => const MainScreen(),
      binding: LayoutBinding(),
    ),
    GetPage(
      name: PagesRoutes.home,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: PagesRoutes.favorite,
      page: () => FavoriteView(),
    ),
    GetPage(
      name: PagesRoutes.perfil,
      page: () => PerfilView(),
    ),
  ];
}

abstract class PagesRoutes {
  static const String splashScreen = '/';
  static const String mainScren = '/main';
  static const String home = '/home';
  static const String favorite = '/favorite';
  static const String perfil = '/perfil';
}
