import 'package:guarani_poke_test/src/data/models/pokemon_model.dart';
import 'package:guarani_poke_test/src/data/models/relations_model.dart';
import 'package:guarani_poke_test/src/data/network/http_manager.dart';
import 'package:guarani_poke_test/src/utils/capitalize_letters.dart';

class PokemonProvider {
  final HttpManager _httpManager = HttpManager();

  Future<List<PokemonModel>> fetchPokemonList(
      {int limit = 20, int offset = 0}) async {
    final List<PokemonModel> pokemons = [];
    // final pokemonBox = await Hive.openBox<PokemonModel>('pokemon_details');

    // if (pokemonBox.isNotEmpty) {
    //   return pokemonBox.values.toList();
    // }

    final result = await _httpManager.restRequest(
        url: 'https://pokeapi.co/api/v2/pokemon/?limit=$limit&offset=$offset',
        method: HttpMethods.get);

    if (result['statusCode'] == 200) {
      for (var pokemonData in result['response']['results']) {
        final detailResult = await _httpManager.restRequest(
            url: pokemonData['url'], method: HttpMethods.get);

        if (detailResult['statusCode'] == 200) {
          PokemonModel pokemon =
              PokemonModel.fromJson(detailResult['response']);

          String speciesUrl = detailResult['response']['species']['url'];
          String description = await fetchPokemonSpeciesDescription(speciesUrl);
          pokemon.description = description;

          for (var type in pokemon.types!) {
            var typeRelations = await fetchTypeRelations(
                CapitalizeLetters.extractTypeIdFromUrl(type.type!.url!));

            pokemon.typeRelations = typeRelations;
            break;
          }
          pokemons.add(pokemon);
        } else {
          throw Exception('Failed to load details for ${pokemonData['name']}');
        }
      }
    } else {
      throw Exception('Failed to load Pokemon list');
    }

    return pokemons;
  }

  Future<TypeRelations> fetchTypeRelations(int typeId) async {
    final result = await _httpManager.restRequest(
        url: 'https://pokeapi.co/api/v2/type/$typeId/',
        method: HttpMethods.get);

    if (result['statusCode'] == 200) {
      return TypeRelations.fromJson(result['response']);
    } else {
      throw Exception('Failed to load type relations');
    }
  }

  Future<String> fetchPokemonSpeciesDescription(String speciesUrl) async {
    final speciesResult = await _httpManager.restRequest(
        url: speciesUrl, method: HttpMethods.get);

    if (speciesResult['statusCode'] == 200) {
      List flavorTextEntries = speciesResult['response']['flavor_text_entries'];
      for (var entry in flavorTextEntries) {
        if (entry['language']['name'] == 'en') {
          return entry['flavor_text']
              .replaceAll('\n', ' ')
              .replaceAll('\f', ' ');
        }
      }
    } else {
      throw Exception('Failed to load Pokemon species description');
    }

    return 'No description available';
  }
}
