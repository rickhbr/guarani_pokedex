import 'dart:io';

import 'package:guarani_poke_test/src/data/models/pokemon_model.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:path_provider/path_provider.dart';

class HiveConfig {
  static start() async {
    Directory dir = await getApplicationDocumentsDirectory();

    Hive.init(dir.path);
    Hive.initFlutter('pokemon_db');
    Hive.registerAdapter(PokemonModelAdapter());

    // await Hive.openBox('pokemon_details');
  }
}
