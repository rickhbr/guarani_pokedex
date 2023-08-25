// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemon_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class PokemonModelAdapter extends TypeAdapter<PokemonModel> {
  @override
  final int typeId = 0;

  @override
  PokemonModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return PokemonModel(
      abilities: (fields[0] as List?)?.cast<Ability>(),
      baseExperience: fields[1] as int?,
      forms: (fields[2] as List?)?.cast<Species>(),
      gameIndices: (fields[3] as List?)?.cast<GameIndex>(),
      height: fields[4] as int?,
      heldItems: (fields[5] as List?)?.cast<HeldItem>(),
      id: fields[6] as int?,
      isDefault: fields[7] as bool?,
      locationAreaEncounters: fields[8] as String?,
      moves: (fields[9] as List?)?.cast<Move>(),
      name: fields[10] as String?,
      order: fields[11] as int?,
      pastTypes: (fields[12] as List?)?.cast<dynamic>(),
      species: fields[13] as Species?,
      sprites: fields[14] as Sprites?,
      stats: (fields[15] as List?)?.cast<Stat>(),
      types: (fields[16] as List?)?.cast<Type>(),
      weight: fields[17] as int?,
      typeRelations: fields[18] as TypeRelations?,
      evolutions: (fields[20] as List?)?.cast<PokemonModel>(),
      evolutionChainUrl: fields[21] as String?,
      description: fields[19] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, PokemonModel obj) {
    writer
      ..writeByte(22)
      ..writeByte(0)
      ..write(obj.abilities)
      ..writeByte(1)
      ..write(obj.baseExperience)
      ..writeByte(2)
      ..write(obj.forms)
      ..writeByte(3)
      ..write(obj.gameIndices)
      ..writeByte(4)
      ..write(obj.height)
      ..writeByte(5)
      ..write(obj.heldItems)
      ..writeByte(6)
      ..write(obj.id)
      ..writeByte(7)
      ..write(obj.isDefault)
      ..writeByte(8)
      ..write(obj.locationAreaEncounters)
      ..writeByte(9)
      ..write(obj.moves)
      ..writeByte(10)
      ..write(obj.name)
      ..writeByte(11)
      ..write(obj.order)
      ..writeByte(12)
      ..write(obj.pastTypes)
      ..writeByte(13)
      ..write(obj.species)
      ..writeByte(14)
      ..write(obj.sprites)
      ..writeByte(15)
      ..write(obj.stats)
      ..writeByte(16)
      ..write(obj.types)
      ..writeByte(17)
      ..write(obj.weight)
      ..writeByte(18)
      ..write(obj.typeRelations)
      ..writeByte(19)
      ..write(obj.description)
      ..writeByte(20)
      ..write(obj.evolutions)
      ..writeByte(21)
      ..write(obj.evolutionChainUrl);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PokemonModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class AbilityAdapter extends TypeAdapter<Ability> {
  @override
  final int typeId = 1;

  @override
  Ability read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Ability(
      ability: fields[0] as Species?,
      isHidden: fields[1] as bool?,
      slot: fields[2] as int?,
    );
  }

  @override
  void write(BinaryWriter writer, Ability obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.ability)
      ..writeByte(1)
      ..write(obj.isHidden)
      ..writeByte(2)
      ..write(obj.slot);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AbilityAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class SpeciesAdapter extends TypeAdapter<Species> {
  @override
  final int typeId = 2;

  @override
  Species read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Species(
      name: fields[0] as String?,
      url: fields[1] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, Species obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.name)
      ..writeByte(1)
      ..write(obj.url);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SpeciesAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class GameIndexAdapter extends TypeAdapter<GameIndex> {
  @override
  final int typeId = 3;

  @override
  GameIndex read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return GameIndex(
      gameIndex: fields[0] as int?,
      version: fields[1] as Species?,
    );
  }

  @override
  void write(BinaryWriter writer, GameIndex obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.gameIndex)
      ..writeByte(1)
      ..write(obj.version);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is GameIndexAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class HeldItemAdapter extends TypeAdapter<HeldItem> {
  @override
  final int typeId = 4;

  @override
  HeldItem read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return HeldItem(
      item: fields[0] as Species?,
      versionDetails: (fields[1] as List).cast<VersionDetail>(),
    );
  }

  @override
  void write(BinaryWriter writer, HeldItem obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.item)
      ..writeByte(1)
      ..write(obj.versionDetails);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is HeldItemAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class VersionDetailAdapter extends TypeAdapter<VersionDetail> {
  @override
  final int typeId = 5;

  @override
  VersionDetail read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return VersionDetail(
      rarity: fields[0] as int?,
      version: fields[1] as Species?,
    );
  }

  @override
  void write(BinaryWriter writer, VersionDetail obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.rarity)
      ..writeByte(1)
      ..write(obj.version);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is VersionDetailAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class MoveAdapter extends TypeAdapter<Move> {
  @override
  final int typeId = 6;

  @override
  Move read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Move(
      move: fields[0] as Species?,
      versionGroupDetails: (fields[1] as List).cast<VersionGroupDetail>(),
    );
  }

  @override
  void write(BinaryWriter writer, Move obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.move)
      ..writeByte(1)
      ..write(obj.versionGroupDetails);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MoveAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class VersionGroupDetailAdapter extends TypeAdapter<VersionGroupDetail> {
  @override
  final int typeId = 7;

  @override
  VersionGroupDetail read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return VersionGroupDetail(
      levelLearnedAt: fields[0] as int?,
      moveLearnMethod: fields[1] as Species?,
      versionGroup: fields[2] as Species?,
    );
  }

  @override
  void write(BinaryWriter writer, VersionGroupDetail obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.levelLearnedAt)
      ..writeByte(1)
      ..write(obj.moveLearnMethod)
      ..writeByte(2)
      ..write(obj.versionGroup);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is VersionGroupDetailAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class SpritesAdapter extends TypeAdapter<Sprites> {
  @override
  final int typeId = 8;

  @override
  Sprites read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Sprites(
      backDefault: fields[0] as String?,
      backFemale: fields[1] as String?,
      backShiny: fields[2] as String?,
      backShinyFemale: fields[3] as String?,
      frontDefault: fields[4] as String?,
      frontFemale: fields[5] as String?,
      frontShiny: fields[6] as String?,
      frontShinyFemale: fields[7] as String?,
      other: fields[8] as Other?,
      animated: fields[9] as Sprites?,
    );
  }

  @override
  void write(BinaryWriter writer, Sprites obj) {
    writer
      ..writeByte(10)
      ..writeByte(0)
      ..write(obj.backDefault)
      ..writeByte(1)
      ..write(obj.backFemale)
      ..writeByte(2)
      ..write(obj.backShiny)
      ..writeByte(3)
      ..write(obj.backShinyFemale)
      ..writeByte(4)
      ..write(obj.frontDefault)
      ..writeByte(5)
      ..write(obj.frontFemale)
      ..writeByte(6)
      ..write(obj.frontShiny)
      ..writeByte(7)
      ..write(obj.frontShinyFemale)
      ..writeByte(8)
      ..write(obj.other)
      ..writeByte(9)
      ..write(obj.animated);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SpritesAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class OfficialArtworkAdapter extends TypeAdapter<OfficialArtwork> {
  @override
  final int typeId = 10;

  @override
  OfficialArtwork read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return OfficialArtwork(
      frontDefault: fields[0] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, OfficialArtwork obj) {
    writer
      ..writeByte(1)
      ..writeByte(0)
      ..write(obj.frontDefault);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is OfficialArtworkAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class OtherAdapter extends TypeAdapter<Other> {
  @override
  final int typeId = 9;

  @override
  Other read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Other(
      officialArtwork: fields[0] as OfficialArtwork?,
    );
  }

  @override
  void write(BinaryWriter writer, Other obj) {
    writer
      ..writeByte(1)
      ..writeByte(0)
      ..write(obj.officialArtwork);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is OtherAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class StatAdapter extends TypeAdapter<Stat> {
  @override
  final int typeId = 11;

  @override
  Stat read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Stat(
      baseStat: fields[0] as int?,
      effort: fields[1] as int?,
      stat: fields[2] as Species?,
    );
  }

  @override
  void write(BinaryWriter writer, Stat obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.baseStat)
      ..writeByte(1)
      ..write(obj.effort)
      ..writeByte(2)
      ..write(obj.stat);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is StatAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
