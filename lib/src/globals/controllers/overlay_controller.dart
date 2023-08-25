import 'package:get/get.dart';
import 'package:guarani_poke_test/src/data/models/pokemon_model.dart';

class OverlayController extends GetxController {
  var isOverlayVisible = false.obs;
  var selectedPokemon = Rx<PokemonModel?>(null);
}
