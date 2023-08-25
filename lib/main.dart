import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:guarani_poke_test/src/core/base/colors.dart';
import 'package:guarani_poke_test/src/pages/modules/layout/bindings/layout_binding.dart';
import 'package:guarani_poke_test/src/routes/app_routes.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // await Hive.initFlutter();
  // await HiveInitializer.initialize();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Teste Pokemon Guarani',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: CustomColors.customAccentColor,
        scaffoldBackgroundColor: CustomColors.customPrimaryColor,
      ),
      initialRoute: PagesRoutes.splashScreen,
      getPages: AppPages.pages,
      initialBinding: LayoutBinding(),
    );
  }
}
