class TypeRelations {
  final List<String> doubleDamageFrom;
  final List<String> doubleDamageTo;
  final List<String> halfDamageFrom;
  final List<String> halfDamageTo;
  final List<String> noDamageFrom;
  final List<String> noDamageTo;

  TypeRelations({
    required this.doubleDamageFrom,
    required this.doubleDamageTo,
    required this.halfDamageFrom,
    required this.halfDamageTo,
    required this.noDamageFrom,
    required this.noDamageTo,
  });

  factory TypeRelations.fromJson(Map<String, dynamic> json) {
    return TypeRelations(
      doubleDamageFrom: (json['damage_relations']['double_damage_from'] as List)
          .map((e) => e['name'] as String)
          .toList(),
      doubleDamageTo: (json['damage_relations']['double_damage_to'] as List)
          .map((e) => e['name'] as String)
          .toList(),
      halfDamageFrom: (json['damage_relations']['half_damage_from'] as List)
          .map((e) => e['name'] as String)
          .toList(),
      halfDamageTo: (json['damage_relations']['half_damage_to'] as List)
          .map((e) => e['name'] as String)
          .toList(),
      noDamageFrom: (json['damage_relations']['no_damage_from'] as List)
          .map((e) => e['name'] as String)
          .toList(),
      noDamageTo: (json['damage_relations']['no_damage_to'] as List)
          .map((e) => e['name'] as String)
          .toList(),
    );
  }

  Map<String, dynamic> toJson() => {
        "double_damage_from": doubleDamageFrom,
        "double_damage_to": doubleDamageTo,
        "half_damage_from": halfDamageFrom,
        "half_damage_to": halfDamageTo,
        "no_damage_from": noDamageFrom,
        "no_damage_to": noDamageTo,
      };
}
