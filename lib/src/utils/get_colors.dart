import 'package:flutter/material.dart';
import 'package:guarani_poke_test/src/core/base/colors.dart';
import 'package:guarani_poke_test/src/pages/modules/home/views/theme/pokemon_colors.dart';
import 'package:guarani_poke_test/src/pages/modules/home/views/theme/pokemon_type_colors.dart';

class GetColors {
  static Color getColorForType(String type) {
    return typeColors[type] ?? CustomColors.defaultColor;
  }

  static String? getPokemonCardColor(String type) {
    return pokemonTypeColors[type];
  }
}
