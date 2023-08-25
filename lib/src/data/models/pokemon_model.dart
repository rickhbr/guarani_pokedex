import 'package:guarani_poke_test/src/data/models/relations_model.dart';
import 'package:hive/hive.dart';

part 'pokemon_model.g.dart';

@HiveType(typeId: 0)
class PokemonModel extends HiveObject {
  PokemonModel(
      {this.abilities,
      this.baseExperience,
      this.forms,
      this.gameIndices,
      this.height,
      this.heldItems,
      this.id,
      this.isDefault,
      this.locationAreaEncounters,
      this.moves,
      this.name,
      this.order,
      this.pastTypes,
      this.species,
      this.sprites,
      this.stats,
      this.types,
      this.weight,
      this.typeRelations,
      this.evolutions,
      this.evolutionChainUrl,
      this.description});

  @HiveField(0)
  final List<Ability>? abilities;
  @HiveField(1)
  final int? baseExperience;
  @HiveField(2)
  final List<Species>? forms;
  @HiveField(3)
  final List<GameIndex>? gameIndices;
  @HiveField(4)
  final int? height;
  @HiveField(5)
  final List<HeldItem>? heldItems;
  @HiveField(6)
  final int? id;
  @HiveField(7)
  final bool? isDefault;
  @HiveField(8)
  final String? locationAreaEncounters;
  @HiveField(9)
  final List<Move>? moves;
  @HiveField(10)
  final String? name;
  @HiveField(11)
  final int? order;
  @HiveField(12)
  final List<dynamic>? pastTypes;
  @HiveField(13)
  final Species? species;
  @HiveField(14)
  final Sprites? sprites;
  @HiveField(15)
  final List<Stat>? stats;
  @HiveField(16)
  final List<Type>? types;
  @HiveField(17)
  final int? weight;
  @HiveField(18)
  TypeRelations? typeRelations;
  @HiveField(19)
  String? description;
  @HiveField(20)
  List<PokemonModel>? evolutions;
  @HiveField(21)
  String? evolutionChainUrl;

  factory PokemonModel.fromJson(Map<String, dynamic> json) {
    return PokemonModel(
      abilities: json["abilities"] == null
          ? []
          : List<Ability>.from(
              json["abilities"]!.map((x) => Ability.fromJson(x))),
      baseExperience: json["base_experience"],
      forms: json["forms"] == null
          ? []
          : List<Species>.from(json["forms"]!.map((x) => Species.fromJson(x))),
      gameIndices: json["game_indices"] == null
          ? []
          : List<GameIndex>.from(
              json["game_indices"]!.map((x) => GameIndex.fromJson(x))),
      height: json["height"],
      heldItems: json["held_items"] == null
          ? []
          : List<HeldItem>.from(
              json["held_items"]!.map((x) => HeldItem.fromJson(x))),
      id: json["id"],
      isDefault: json["is_default"],
      locationAreaEncounters: json["location_area_encounters"],
      moves: json["moves"] == null
          ? []
          : List<Move>.from(json["moves"]!.map((x) => Move.fromJson(x))),
      name: json["name"],
      order: json["order"],
      pastTypes: json["past_types"] == null
          ? []
          : List<dynamic>.from(json["past_types"]!.map((x) => x)),
      species:
          json["species"] == null ? null : Species.fromJson(json["species"]),
      sprites:
          json["sprites"] == null ? null : Sprites.fromJson(json["sprites"]),
      stats: json["stats"] == null
          ? []
          : List<Stat>.from(json["stats"]!.map((x) => Stat.fromJson(x))),
      types: json["types"] == null
          ? []
          : List<Type>.from(json["types"]!.map((x) => Type.fromJson(x))),
      weight: json["weight"],
      description: null,
      typeRelations: json["type_relations"] == null
          ? null
          : TypeRelations.fromJson(json["type_relations"]),
    );
  }

  Map<String, dynamic> toJson() => {
        "abilities": abilities?.map((x) => x.toJson()).toList(),
        "base_experience": baseExperience,
        "forms": forms?.map((x) => x.toJson()).toList(),
        "game_indices": gameIndices?.map((x) => x.toJson()).toList(),
        "height": height,
        "held_items": heldItems?.map((x) => x.toJson()).toList(),
        "id": id,
        "is_default": isDefault,
        "location_area_encounters": locationAreaEncounters,
        "moves": moves?.map((x) => x.toJson()).toList(),
        "name": name,
        "order": order,
        "past_types": pastTypes?.map((x) => x).toList(),
        "species": species?.toJson(),
        "sprites": sprites?.toJson(),
        "type_relations": typeRelations?.toJson(),
        "stats": stats?.map((x) => x.toJson()).toList(),
        "types": types?.map((x) => x.toJson()).toList(),
        "weight": weight,
      };
}

@HiveType(typeId: 1)
class Ability {
  Ability({
    required this.ability,
    required this.isHidden,
    required this.slot,
  });

  @HiveField(0)
  final Species? ability;
  @HiveField(1)
  final bool? isHidden;
  @HiveField(2)
  final int? slot;

  factory Ability.fromJson(Map<String, dynamic> json) {
    return Ability(
      ability:
          json["ability"] == null ? null : Species.fromJson(json["ability"]),
      isHidden: json["is_hidden"],
      slot: json["slot"],
    );
  }

  Map<String, dynamic> toJson() => {
        "ability": ability?.toJson(),
        "is_hidden": isHidden,
        "slot": slot,
      };
}

@HiveType(typeId: 2)
class Species {
  Species({
    required this.name,
    required this.url,
  });

  @HiveField(0)
  final String? name;
  @HiveField(1)
  final String? url;

  factory Species.fromJson(Map<String, dynamic> json) {
    return Species(
      name: json["name"],
      url: json["url"],
    );
  }

  Map<String, dynamic> toJson() => {
        "name": name,
        "url": url,
      };
}

@HiveType(typeId: 3)
class GameIndex {
  GameIndex({
    required this.gameIndex,
    required this.version,
  });

  @HiveField(0)
  final int? gameIndex;
  @HiveField(1)
  final Species? version;

  factory GameIndex.fromJson(Map<String, dynamic> json) {
    return GameIndex(
      gameIndex: json["game_index"],
      version:
          json["version"] == null ? null : Species.fromJson(json["version"]),
    );
  }

  Map<String, dynamic> toJson() => {
        "game_index": gameIndex,
        "version": version?.toJson(),
      };
}

@HiveType(typeId: 4)
class HeldItem {
  HeldItem({
    required this.item,
    required this.versionDetails,
  });

  @HiveField(0)
  final Species? item;
  @HiveField(1)
  final List<VersionDetail> versionDetails;

  factory HeldItem.fromJson(Map<String, dynamic> json) {
    return HeldItem(
      item: json["item"] == null ? null : Species.fromJson(json["item"]),
      versionDetails: json["version_details"] == null
          ? []
          : List<VersionDetail>.from(
              json["version_details"]!.map((x) => VersionDetail.fromJson(x))),
    );
  }

  Map<String, dynamic> toJson() => {
        "item": item?.toJson(),
        "version_details": versionDetails.map((x) => x.toJson()).toList(),
      };
}

@HiveType(typeId: 5)
class VersionDetail {
  VersionDetail({
    required this.rarity,
    required this.version,
  });

  @HiveField(0)
  final int? rarity;
  @HiveField(1)
  final Species? version;

  factory VersionDetail.fromJson(Map<String, dynamic> json) {
    return VersionDetail(
      rarity: json["rarity"],
      version:
          json["version"] == null ? null : Species.fromJson(json["version"]),
    );
  }

  Map<String, dynamic> toJson() => {
        "rarity": rarity,
        "version": version?.toJson(),
      };
}

@HiveType(typeId: 6)
class Move {
  Move({
    required this.move,
    required this.versionGroupDetails,
  });

  @HiveField(0)
  final Species? move;
  @HiveField(1)
  final List<VersionGroupDetail> versionGroupDetails;

  factory Move.fromJson(Map<String, dynamic> json) {
    return Move(
      move: json["move"] == null ? null : Species.fromJson(json["move"]),
      versionGroupDetails: json["version_group_details"] == null
          ? []
          : List<VersionGroupDetail>.from(json["version_group_details"]!
              .map((x) => VersionGroupDetail.fromJson(x))),
    );
  }

  Map<String, dynamic> toJson() => {
        "move": move?.toJson(),
        "version_group_details":
            versionGroupDetails.map((x) => x.toJson()).toList(),
      };
}

@HiveType(typeId: 7)
class VersionGroupDetail {
  VersionGroupDetail({
    required this.levelLearnedAt,
    required this.moveLearnMethod,
    required this.versionGroup,
  });

  @HiveField(0)
  final int? levelLearnedAt;
  @HiveField(1)
  final Species? moveLearnMethod;
  @HiveField(2)
  final Species? versionGroup;

  factory VersionGroupDetail.fromJson(Map<String, dynamic> json) {
    return VersionGroupDetail(
      levelLearnedAt: json["level_learned_at"],
      moveLearnMethod: json["move_learn_method"] == null
          ? null
          : Species.fromJson(json["move_learn_method"]),
      versionGroup: json["version_group"] == null
          ? null
          : Species.fromJson(json["version_group"]),
    );
  }

  Map<String, dynamic> toJson() => {
        "level_learned_at": levelLearnedAt,
        "move_learn_method": moveLearnMethod?.toJson(),
        "version_group": versionGroup?.toJson(),
      };
}

class GenerationV {
  GenerationV({
    required this.blackWhite,
  });

  final Sprites? blackWhite;

  factory GenerationV.fromJson(Map<String, dynamic> json) {
    return GenerationV(
      blackWhite: json["black-white"] == null
          ? null
          : Sprites.fromJson(json["black-white"]),
    );
  }

  Map<String, dynamic> toJson() => {
        "black-white": blackWhite?.toJson(),
      };
}

class GenerationIv {
  GenerationIv({
    required this.diamondPearl,
    required this.heartgoldSoulsilver,
    required this.platinum,
  });

  final Sprites? diamondPearl;
  final Sprites? heartgoldSoulsilver;
  final Sprites? platinum;

  factory GenerationIv.fromJson(Map<String, dynamic> json) {
    return GenerationIv(
      diamondPearl: json["diamond-pearl"] == null
          ? null
          : Sprites.fromJson(json["diamond-pearl"]),
      heartgoldSoulsilver: json["heartgold-soulsilver"] == null
          ? null
          : Sprites.fromJson(json["heartgold-soulsilver"]),
      platinum:
          json["platinum"] == null ? null : Sprites.fromJson(json["platinum"]),
    );
  }

  Map<String, dynamic> toJson() => {
        "diamond-pearl": diamondPearl?.toJson(),
        "heartgold-soulsilver": heartgoldSoulsilver?.toJson(),
        "platinum": platinum?.toJson(),
      };
}

class Versions {
  Versions({
    required this.generationI,
    required this.generationIi,
    required this.generationIii,
    required this.generationIv,
    required this.generationV,
    required this.generationVi,
    required this.generationVii,
    required this.generationViii,
  });

  final GenerationI? generationI;
  final GenerationIi? generationIi;
  final GenerationIii? generationIii;
  final GenerationIv? generationIv;
  final GenerationV? generationV;
  final Map<String, Home> generationVi;
  final GenerationVii? generationVii;
  final GenerationViii? generationViii;

  factory Versions.fromJson(Map<String, dynamic> json) {
    return Versions(
      generationI: json["generation-i"] == null
          ? null
          : GenerationI.fromJson(json["generation-i"]),
      generationIi: json["generation-ii"] == null
          ? null
          : GenerationIi.fromJson(json["generation-ii"]),
      generationIii: json["generation-iii"] == null
          ? null
          : GenerationIii.fromJson(json["generation-iii"]),
      generationIv: json["generation-iv"] == null
          ? null
          : GenerationIv.fromJson(json["generation-iv"]),
      generationV: json["generation-v"] == null
          ? null
          : GenerationV.fromJson(json["generation-v"]),
      generationVi: Map.from(json["generation-vi"])
          .map((k, v) => MapEntry<String, Home>(k, Home.fromJson(v))),
      generationVii: json["generation-vii"] == null
          ? null
          : GenerationVii.fromJson(json["generation-vii"]),
      generationViii: json["generation-viii"] == null
          ? null
          : GenerationViii.fromJson(json["generation-viii"]),
    );
  }

  Map<String, dynamic> toJson() => {
        "generation-i": generationI?.toJson(),
        "generation-ii": generationIi?.toJson(),
        "generation-iii": generationIii?.toJson(),
        "generation-iv": generationIv?.toJson(),
        "generation-v": generationV?.toJson(),
        "generation-vi": Map.from(generationVi)
            .map((k, v) => MapEntry<String, dynamic>(k, v?.toJson())),
        "generation-vii": generationVii?.toJson(),
        "generation-viii": generationViii?.toJson(),
      };
}

@HiveType(typeId: 8)
class Sprites {
  Sprites({
    required this.backDefault,
    required this.backFemale,
    required this.backShiny,
    required this.backShinyFemale,
    required this.frontDefault,
    required this.frontFemale,
    required this.frontShiny,
    required this.frontShinyFemale,
    required this.other,
    this.versions,
    required this.animated,
  });

  @HiveField(0)
  final String? backDefault;
  @HiveField(1)
  final String? backFemale;
  @HiveField(2)
  final String? backShiny;
  @HiveField(3)
  final String? backShinyFemale;
  @HiveField(4)
  final String? frontDefault;
  @HiveField(5)
  final String? frontFemale;
  @HiveField(6)
  final String? frontShiny;
  @HiveField(7)
  final String? frontShinyFemale;
  @HiveField(8)
  final Other? other;
  final Versions? versions;
  @HiveField(9)
  final Sprites? animated;

  factory Sprites.fromJson(Map<String, dynamic> json) {
    return Sprites(
      backDefault: json["back_default"],
      backFemale: json["back_female"],
      backShiny: json["back_shiny"],
      backShinyFemale: json["back_shiny_female"],
      frontDefault: json["front_default"],
      frontFemale: json["front_female"],
      frontShiny: json["front_shiny"],
      frontShinyFemale: json["front_shiny_female"],
      other: json["other"] == null ? null : Other.fromJson(json["other"]),
      versions:
          json["versions"] == null ? null : Versions.fromJson(json["versions"]),
      animated:
          json["animated"] == null ? null : Sprites.fromJson(json["animated"]),
    );
  }

  Map<String, dynamic> toJson() => {
        "back_default": backDefault,
        "back_female": backFemale,
        "back_shiny": backShiny,
        "back_shiny_female": backShinyFemale,
        "front_default": frontDefault,
        "front_female": frontFemale,
        "front_shiny": frontShiny,
        "front_shiny_female": frontShinyFemale,
        "other": other?.toJson(),
        "versions": versions?.toJson(),
        "animated": animated?.toJson(),
      };
}

class GenerationI {
  GenerationI({
    required this.redBlue,
    required this.yellow,
  });

  final RedBlue? redBlue;
  final RedBlue? yellow;

  factory GenerationI.fromJson(Map<String, dynamic> json) {
    return GenerationI(
      redBlue:
          json["red-blue"] == null ? null : RedBlue.fromJson(json["red-blue"]),
      yellow: json["yellow"] == null ? null : RedBlue.fromJson(json["yellow"]),
    );
  }

  Map<String, dynamic> toJson() => {
        "red-blue": redBlue?.toJson(),
        "yellow": yellow?.toJson(),
      };
}

class RedBlue {
  RedBlue({
    required this.backDefault,
    required this.backGray,
    required this.backTransparent,
    required this.frontDefault,
    required this.frontGray,
    required this.frontTransparent,
  });

  final String? backDefault;
  final String? backGray;
  final String? backTransparent;
  final String? frontDefault;
  final String? frontGray;
  final String? frontTransparent;

  factory RedBlue.fromJson(Map<String, dynamic> json) {
    return RedBlue(
      backDefault: json["back_default"],
      backGray: json["back_gray"],
      backTransparent: json["back_transparent"],
      frontDefault: json["front_default"],
      frontGray: json["front_gray"],
      frontTransparent: json["front_transparent"],
    );
  }

  Map<String, dynamic> toJson() => {
        "back_default": backDefault,
        "back_gray": backGray,
        "back_transparent": backTransparent,
        "front_default": frontDefault,
        "front_gray": frontGray,
        "front_transparent": frontTransparent,
      };
}

class GenerationIi {
  GenerationIi({
    required this.crystal,
    required this.gold,
    required this.silver,
  });

  final Crystal? crystal;
  final Gold? gold;
  final Gold? silver;

  factory GenerationIi.fromJson(Map<String, dynamic> json) {
    return GenerationIi(
      crystal:
          json["crystal"] == null ? null : Crystal.fromJson(json["crystal"]),
      gold: json["gold"] == null ? null : Gold.fromJson(json["gold"]),
      silver: json["silver"] == null ? null : Gold.fromJson(json["silver"]),
    );
  }

  Map<String, dynamic> toJson() => {
        "crystal": crystal?.toJson(),
        "gold": gold?.toJson(),
        "silver": silver?.toJson(),
      };
}

class Crystal {
  Crystal({
    required this.backDefault,
    required this.backShiny,
    required this.backShinyTransparent,
    required this.backTransparent,
    required this.frontDefault,
    required this.frontShiny,
    required this.frontShinyTransparent,
    required this.frontTransparent,
  });

  final String? backDefault;
  final String? backShiny;
  final String? backShinyTransparent;
  final String? backTransparent;
  final String? frontDefault;
  final String? frontShiny;
  final String? frontShinyTransparent;
  final String? frontTransparent;

  factory Crystal.fromJson(Map<String, dynamic> json) {
    return Crystal(
      backDefault: json["back_default"],
      backShiny: json["back_shiny"],
      backShinyTransparent: json["back_shiny_transparent"],
      backTransparent: json["back_transparent"],
      frontDefault: json["front_default"],
      frontShiny: json["front_shiny"],
      frontShinyTransparent: json["front_shiny_transparent"],
      frontTransparent: json["front_transparent"],
    );
  }

  Map<String, dynamic> toJson() => {
        "back_default": backDefault,
        "back_shiny": backShiny,
        "back_shiny_transparent": backShinyTransparent,
        "back_transparent": backTransparent,
        "front_default": frontDefault,
        "front_shiny": frontShiny,
        "front_shiny_transparent": frontShinyTransparent,
        "front_transparent": frontTransparent,
      };
}

class Gold {
  Gold({
    required this.backDefault,
    required this.backShiny,
    required this.frontDefault,
    required this.frontShiny,
    required this.frontTransparent,
  });

  final String? backDefault;
  final String? backShiny;
  final String? frontDefault;
  final String? frontShiny;
  final String? frontTransparent;

  factory Gold.fromJson(Map<String, dynamic> json) {
    return Gold(
      backDefault: json["back_default"],
      backShiny: json["back_shiny"],
      frontDefault: json["front_default"],
      frontShiny: json["front_shiny"],
      frontTransparent: json["front_transparent"],
    );
  }

  Map<String, dynamic> toJson() => {
        "back_default": backDefault,
        "back_shiny": backShiny,
        "front_default": frontDefault,
        "front_shiny": frontShiny,
        "front_transparent": frontTransparent,
      };
}

class GenerationIii {
  GenerationIii({
    required this.emerald,
    required this.fireredLeafgreen,
    required this.rubySapphire,
  });

  final OfficialArtwork? emerald;
  final Gold? fireredLeafgreen;
  final Gold? rubySapphire;

  factory GenerationIii.fromJson(Map<String, dynamic> json) {
    return GenerationIii(
      emerald: json["emerald"] == null
          ? null
          : OfficialArtwork.fromJson(json["emerald"]),
      fireredLeafgreen: json["firered-leafgreen"] == null
          ? null
          : Gold.fromJson(json["firered-leafgreen"]),
      rubySapphire: json["ruby-sapphire"] == null
          ? null
          : Gold.fromJson(json["ruby-sapphire"]),
    );
  }

  Map<String, dynamic> toJson() => {
        "emerald": emerald?.toJson(),
        "firered-leafgreen": fireredLeafgreen?.toJson(),
        "ruby-sapphire": rubySapphire?.toJson(),
      };
}

@HiveType(typeId: 10)
class OfficialArtwork {
  OfficialArtwork({
    required this.frontDefault,
    this.frontShiny,
  });

  @HiveField(0)
  final String? frontDefault;
  final String? frontShiny;

  factory OfficialArtwork.fromJson(Map<String, dynamic> json) {
    return OfficialArtwork(
      frontDefault: json["front_default"],
      frontShiny: json["front_shiny"],
    );
  }

  Map<String, dynamic> toJson() => {
        "front_default": frontDefault,
        "front_shiny": frontShiny,
      };
}

class Home {
  Home({
    required this.frontDefault,
    required this.frontFemale,
    required this.frontShiny,
    required this.frontShinyFemale,
  });

  final String? frontDefault;
  final String? frontFemale;
  final String? frontShiny;
  final String? frontShinyFemale;

  factory Home.fromJson(Map<String, dynamic> json) {
    return Home(
      frontDefault: json["front_default"],
      frontFemale: json["front_female"],
      frontShiny: json["front_shiny"],
      frontShinyFemale: json["front_shiny_female"],
    );
  }

  Map<String, dynamic> toJson() => {
        "front_default": frontDefault,
        "front_female": frontFemale,
        "front_shiny": frontShiny,
        "front_shiny_female": frontShinyFemale,
      };
}

class GenerationVii {
  GenerationVii({
    required this.icons,
    required this.ultraSunUltraMoon,
  });

  final DreamWorld? icons;
  final Home? ultraSunUltraMoon;

  factory GenerationVii.fromJson(Map<String, dynamic> json) {
    return GenerationVii(
      icons: json["icons"] == null ? null : DreamWorld.fromJson(json["icons"]),
      ultraSunUltraMoon: json["ultra-sun-ultra-moon"] == null
          ? null
          : Home.fromJson(json["ultra-sun-ultra-moon"]),
    );
  }

  Map<String, dynamic> toJson() => {
        "icons": icons?.toJson(),
        "ultra-sun-ultra-moon": ultraSunUltraMoon?.toJson(),
      };
}

class DreamWorld {
  DreamWorld({
    required this.frontDefault,
    required this.frontFemale,
  });

  final String? frontDefault;
  final String? frontFemale;

  factory DreamWorld.fromJson(Map<String, dynamic> json) {
    return DreamWorld(
      frontDefault: json["front_default"],
      frontFemale: json["front_female"],
    );
  }

  Map<String, dynamic> toJson() => {
        "front_default": frontDefault,
        "front_female": frontFemale,
      };
}

class GenerationViii {
  GenerationViii({
    required this.icons,
  });

  final DreamWorld? icons;

  factory GenerationViii.fromJson(Map<String, dynamic> json) {
    return GenerationViii(
      icons: json["icons"] == null ? null : DreamWorld.fromJson(json["icons"]),
    );
  }

  Map<String, dynamic> toJson() => {
        "icons": icons?.toJson(),
      };
}

@HiveType(typeId: 9)
class Other {
  Other({
    this.dreamWorld,
    this.home,
    required this.officialArtwork,
  });

  final DreamWorld? dreamWorld;
  final Home? home;
  @HiveField(0)
  final OfficialArtwork? officialArtwork;

  factory Other.fromJson(Map<String, dynamic> json) {
    return Other(
      dreamWorld: json["dream_world"] == null
          ? null
          : DreamWorld.fromJson(json["dream_world"]),
      home: json["home"] == null ? null : Home.fromJson(json["home"]),
      officialArtwork: json["official-artwork"] == null
          ? null
          : OfficialArtwork.fromJson(json["official-artwork"]),
    );
  }

  Map<String, dynamic> toJson() => {
        "dream_world": dreamWorld?.toJson(),
        "home": home?.toJson(),
        "official-artwork": officialArtwork?.toJson(),
      };
}

@HiveType(typeId: 11)
class Stat {
  Stat({
    required this.baseStat,
    required this.effort,
    required this.stat,
  });
  @HiveField(0)
  final int? baseStat;
  @HiveField(1)
  final int? effort;
  @HiveField(2)
  final Species? stat;

  factory Stat.fromJson(Map<String, dynamic> json) {
    return Stat(
      baseStat: json["base_stat"],
      effort: json["effort"],
      stat: json["stat"] == null ? null : Species.fromJson(json["stat"]),
    );
  }

  Map<String, dynamic> toJson() => {
        "base_stat": baseStat,
        "effort": effort,
        "stat": stat?.toJson(),
      };
}

class Type {
  Type({
    required this.slot,
    required this.type,
  });

  final int? slot;
  final Species? type;

  factory Type.fromJson(Map<String, dynamic> json) {
    return Type(
      slot: json["slot"],
      type: json["type"] == null ? null : Species.fromJson(json["type"]),
    );
  }

  Map<String, dynamic> toJson() => {
        "slot": slot,
        "type": type?.toJson(),
      };
}
