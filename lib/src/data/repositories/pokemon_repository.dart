import 'package:guarani_poke_test/src/data/models/pokemon_model.dart';
import 'package:guarani_poke_test/src/data/models/relations_model.dart';
import 'package:guarani_poke_test/src/data/providers/pokemon_provider.dart';

class PokemonRepository {
  final PokemonProvider _pokemonProvider;

  PokemonRepository(this._pokemonProvider);

  Future<List<PokemonModel>> fetchPokemonList(
      {int limit = 20, int offset = 0}) {
    return _pokemonProvider.fetchPokemonList(limit: limit, offset: offset);
  }

  Future<TypeRelations> fetchTypeRelations(int typeId) {
    return _pokemonProvider.fetchTypeRelations(typeId);
  }
}
