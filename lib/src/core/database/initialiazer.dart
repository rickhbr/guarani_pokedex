import 'package:guarani_poke_test/src/data/models/pokemon_model.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
// Importe todos os seus adaptadores aqui

class HiveInitializer {
  static Future<void> initialize() async {
    await Hive.initFlutter();

    final List<TypeAdapter> adapters = [
      PokemonModelAdapter(),
      AbilityAdapter(),
      SpeciesAdapter(),
      GameIndexAdapter(),
      HeldItemAdapter(),
      VersionDetailAdapter(),
      MoveAdapter(),
      VersionGroupDetailAdapter(),
      SpritesAdapter(),
      OtherAdapter(),
      OfficialArtworkAdapter(),
      StatAdapter(),
    ];

    for (var adapter in adapters) {
      Hive.registerAdapter(adapter);
    }
  }
}
