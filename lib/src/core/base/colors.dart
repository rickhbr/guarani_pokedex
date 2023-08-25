import 'package:flutter/material.dart';

Map<int, Color> _accentColor = {
  50: const Color.fromRGBO(253, 231, 206, 0.1),
  100: const Color.fromRGBO(253, 231, 206, 0.2),
  200: const Color.fromRGBO(253, 231, 206, 0.3),
  300: const Color.fromRGBO(253, 231, 206, 0.4),
  400: const Color.fromRGBO(253, 231, 206, 0.5),
  500: const Color.fromRGBO(253, 231, 206, 0.6),
  600: const Color.fromRGBO(253, 231, 206, 0.7),
  700: const Color.fromRGBO(253, 231, 206, 0.8),
  800: const Color.fromRGBO(253, 231, 206, 0.9),
  900: const Color.fromRGBO(253, 231, 206, 1.1),
};

Map<int, Color> _primaryColor = {
  50: const Color.fromRGBO(57, 10, 31, 0.1),
  100: const Color.fromRGBO(57, 10, 31, 0.2),
  200: const Color.fromRGBO(57, 10, 31, 0.3),
  300: const Color.fromRGBO(57, 10, 31, 0.4),
  400: const Color.fromRGBO(57, 10, 31, 0.5),
  500: const Color.fromRGBO(57, 10, 31, 0.6),
  600: const Color.fromRGBO(57, 10, 31, 0.7),
  700: const Color.fromRGBO(57, 10, 31, 0.8),
  800: const Color.fromRGBO(57, 10, 31, 0.9),
  900: const Color.fromRGBO(57, 10, 31, 1.1),
};

abstract class CustomColors {
  static MaterialColor customPrimaryColor =
      MaterialColor(0XFF39091F, _primaryColor);

  static MaterialColor customAccentColor =
      MaterialColor(0XFF131521, _accentColor);

  static Color white = const Color(0xffffffff);

  static Color primaryColor = const Color(0XFF390a1f);
  static Color primaryColorNegative = const Color(0XFFF0EAED);
  static Color secundaryColor = const Color(0XFFF89E3C);

  //Toast Colors
  static Color errorBackgroundColor = const Color(0xFFF44336);
  static Color errorTextColor = const Color.fromARGB(255, 105, 34, 29);

  static Color successBackgroundColor = const Color(0xFF4CAF50);
  static Color successTextColor = const Color.fromARGB(255, 20, 54, 21);

// Cards Pokemon
  static Color redPokemon = const Color(0xFFF10A34);
  static Color defaultColor = const Color(0xFF555252);

// General Colors
  static Color greyColor = const Color(0xFFF7F7F7);
  static Color blackColor = const Color(0XFF000000);
  static Color whiteColor = const Color(0XFFFFFFFF);
  static Color greyColorBox = const Color(0XFFf6f7fa);
  static Color iconGrey = const Color(0xFFAFB0B1);
  static Color titleColor = const Color(0xFF525252);
  static Color subTitleColor = const Color(0xFF4F4F4F);

  static Color buttonPerfil = const Color(0xFF040534);
  static Color buttonGreyPerfil = const Color(0xFFD9D9D9);

  //Borders
  static Color blueCircle = const Color(0xFF0804B4);
  static Color yellowCircle = const Color(0xFFFDC000);

  //Pokemon Colors
  static Color grassColor = const Color(0xFF70d090);
  static Color fireColor = const Color(0xFFEC8C4C);
  static Color waterColor = const Color(0xFF20C5F5);
  static Color normalColor = const Color(0xFFFFE0CA);
  static Color poisonColor = const Color(0xFFDDA1E7);
  static Color eletricColor = const Color(0xFFFCF47C);
  static Color groundColor = const Color(0xFF9E6E53);
  static Color fairyColor = const Color(0xFFFDB7DA);
  static Color bugColor = const Color(0xFFD0EC94);
  static Color fightingColor = const Color(0xFFB8B8B8);
  static Color phychicColor = const Color(0xFFA98DF8);
  static Color rockColor = const Color(0xFF9A8371);
  static Color steelColor = const Color(0xFF7A95AA);
  static Color ghostColor = const Color(0xFFCDCDCD);
  static Color dragonColor = const Color(0xFFB7DBFF);
  static Color darkColor = const Color(0xFF8D8ECB);
}
