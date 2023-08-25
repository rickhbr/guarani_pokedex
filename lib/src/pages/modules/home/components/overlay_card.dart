import 'package:flutter/material.dart';
import 'package:guarani_poke_test/src/core/base/colors.dart';
import 'package:guarani_poke_test/src/core/base/images.dart';
import 'package:guarani_poke_test/src/data/models/pokemon_model.dart';
import 'package:guarani_poke_test/src/pages/modules/home/components/stats_row.dart';
import 'package:guarani_poke_test/src/pages/modules/home/controllers/home_controller.dart';
import 'package:guarani_poke_test/src/utils/capitalize_letters.dart';
import 'package:guarani_poke_test/src/utils/get_colors.dart';
import 'package:guarani_poke_test/src/widgets/clippers/custom_clipper.dart';
import 'package:guarani_poke_test/src/widgets/text/custom_text.dart';

class OverlayCardPokemon extends StatefulWidget {
  final void Function()? onTapOverlay;
  final HomeController homeController;
  final PokemonModel pokemon;
  final bool isFav;
  final void Function()? onPokemonFavorited;
  final List<Type>? types;
  const OverlayCardPokemon(
      {super.key,
      this.onTapOverlay,
      required this.homeController,
      required this.isFav,
      this.onPokemonFavorited,
      this.types,
      required this.pokemon});

  @override
  State<OverlayCardPokemon> createState() => _OverlayCardPokemonState();
}

class _OverlayCardPokemonState extends State<OverlayCardPokemon> {
  late Color colorBanner =
      GetColors.getColorForType(widget.pokemon.types!.first.type!.name!);
  late bool _isFavorite;

  @override
  void initState() {
    super.initState();
    _isFavorite = widget.isFav;
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          top: 0,
          left: 0,
          right: 0,
          bottom: MediaQuery.of(context).size.height * 0.51,
          child: GestureDetector(
            onTap: widget.onTapOverlay,
            child: Container(
              color: Colors.black.withOpacity(0.5),
            ),
          ),
        ),
        Positioned(
          top: 100,
          left: 0,
          right: 0,
          height: MediaQuery.of(context).size.height * 0.75,
          child: ClipPath(
            clipper: RampClipper(),
            child: Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(topLeft: Radius.circular(40)),
                color: Colors.white,
              ),
              child: Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.red,
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            colorBanner.withOpacity(0.9),
                            colorBanner.withOpacity(0.9),
                            colorBanner,
                          ],
                          stops: const [
                            0.0,
                            0.85,
                            1.0
                          ], // Ajustar os pontos de parada conforme necessário
                        )),
                    height: MediaQuery.of(context).size.height * 0.34,
                    child: Stack(
                      children: [
                        Positioned(
                          top: 85,
                          right: 20,
                          child: InkWell(
                            onTap: () {
                              setState(() {
                                widget.homeController.toggleFavoritePokemon(
                                    widget.pokemon, context);
                                _isFavorite = !_isFavorite;
                              });
                              if (widget.onPokemonFavorited != null) {
                                widget.onPokemonFavorited!();
                              }
                            },
                            child: Image.asset(
                              _isFavorite
                                  ? Images.icFavSelected
                                  : Images.icFavUnselected,
                            ),
                          ),
                        ),
                        Positioned(
                          top: 160,
                          right: 10,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CustomText(
                                text: widget.pokemon.id.toString().length > 2
                                    ? "#0${widget.pokemon.id}"
                                    : "#00${widget.pokemon.id}",
                                fontSize: 13.0,
                                fontWeight: FontWeight.w400,
                                color: CustomColors.white,
                              ),
                              const SizedBox(
                                height: 8.0,
                              ),
                              CustomText(
                                text: CapitalizeLetters.capitalizeFirstLetter(
                                    widget.pokemon.name!),
                                fontSize: 30.0,
                                fontWeight: FontWeight.w700,
                                color: CustomColors.white,
                              ),
                              const SizedBox(
                                height: 16.0,
                              ),
                              Row(
                                children: [
                                  Image.asset(GetColors.getPokemonCardColor(
                                      widget
                                          .pokemon.types!.first.type!.name!)!),
                                  widget.pokemon.types!.length == 2
                                      ? Padding(
                                          padding:
                                              const EdgeInsets.only(left: 8.0),
                                          child: Image.asset(
                                              GetColors.getPokemonCardColor(
                                                  widget.pokemon.types!.last
                                                      .type!.name!)!),
                                        )
                                      : Container(),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                          top: 140,
                          child: Image.asset(
                            Images.icPokeShadow,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        Positioned(
          top: 193,
          left: 0,
          child: Image.network(
            widget.pokemon.sprites?.other?.officialArtwork?.frontDefault ??
                Images.bulba,
            width: 225,
            height: 215,
          ),
        ),
        Positioned(
          bottom: 270,
          left: 30,
          child: SizedBox(
            width: MediaQuery.of(context).size.width * 0.85,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    widget.homeController.selectAbout();
                  },
                  child: CustomText(
                    text: 'About',
                    fontSize: 14.0,
                    fontWeight: widget.homeController.isAbout.value
                        ? FontWeight.bold
                        : FontWeight.w500,
                    color: widget.homeController.isAbout.value
                        ? CustomColors.redPokemon
                        : CustomColors.blackColor,
                    isUnderlined: widget.homeController.isAbout.value,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    widget.homeController.selectStats();
                  },
                  child: CustomText(
                    text: 'Stats',
                    fontSize: 14.0,
                    fontWeight: widget.homeController.isStats.value
                        ? FontWeight.bold
                        : FontWeight.w500,
                    color: widget.homeController.isStats.value
                        ? CustomColors.redPokemon
                        : CustomColors.blackColor,
                    isUnderlined: widget.homeController.isStats.value,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    widget.homeController.selectEvolution();
                  },
                  child: CustomText(
                    text: 'Evolution',
                    fontSize: 14.0,
                    fontWeight: widget.homeController.isEvolution.value
                        ? FontWeight.bold
                        : FontWeight.w500,
                    color: widget.homeController.isEvolution.value
                        ? CustomColors.redPokemon
                        : CustomColors.blackColor,
                    isUnderlined: widget.homeController.isEvolution.value,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    widget.homeController.selectMoves();
                  },
                  child: CustomText(
                    text: 'Moves',
                    fontSize: 14.0,
                    fontWeight: widget.homeController.isMoves.value
                        ? FontWeight.bold
                        : FontWeight.w500,
                    color: widget.homeController.isMoves.value
                        ? CustomColors.redPokemon
                        : CustomColors.blackColor,
                    isUnderlined: widget.homeController.isMoves.value,
                  ),
                ),
              ],
            ),
          ),
        ),
        _buildAbout(context, widget.homeController),
        _buildStats(context, widget.homeController),
      ],
    );
  }

  Widget _buildAbout(BuildContext context, HomeController controller) {
    return Positioned(
      bottom: 0,
      child: Container(
        width: MediaQuery.of(context).size.width,
        color: CustomColors.greyColor,
        child: Visibility(
          visible: controller.isAbout.value,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  top: 24.0,
                  bottom: 12.0,
                ),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width * 0.8,
                  child: CustomText(
                    text: widget.pokemon.description!,
                    fontSize: 11.0,
                    color: CustomColors.blackColor,
                  ),
                ),
              ),
              const SizedBox(
                height: 4.0,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.8,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomText(
                      text: 'Height',
                      fontSize: 11.0,
                      color: CustomColors.blackColor,
                    ),
                    CustomText(
                      text: 'Weight',
                      fontSize: 11.0,
                      color: CustomColors.blackColor,
                    ),
                    CustomText(
                      text: 'Gender',
                      fontSize: 11.0,
                      color: CustomColors.blackColor,
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.8,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Image.asset(Images.height),
                        const SizedBox(
                          width: 4.0,
                        ),
                        CustomText(
                          text: "${widget.pokemon.height.toString()}m",
                          fontSize: 11.0,
                          color: CustomColors.blackColor,
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Image.asset(Images.weight),
                        const SizedBox(
                          width: 4.0,
                        ),
                        CustomText(
                          text: "${widget.pokemon.weight.toString()}kg",
                          fontSize: 11.0,
                          color: CustomColors.blackColor,
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Image.asset(Images.gender),
                        const SizedBox(
                          width: 4.0,
                        ),
                        CustomText(
                          text: "-",
                          fontSize: 11.0,
                          color: CustomColors.blackColor,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 8.0,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.8,
                child: Row(
                  children: [
                    CustomText(
                      text: 'Category',
                      fontSize: 11.0,
                      color: CustomColors.blackColor,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.2,
                    ),
                    CustomText(
                      text: 'Abilities',
                      fontSize: 11.0,
                      color: CustomColors.blackColor,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 4.0,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.8,
                child: Row(
                  children: [
                    CustomText(
                      text: '-',
                      fontSize: 11.0,
                      color: CustomColors.blackColor,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.30,
                    ),
                    CustomText(
                      text: CapitalizeLetters.capitalizeFirstLetter(
                          widget.pokemon.abilities!.first.ability!.name!),
                      fontSize: 11.0,
                      color: CustomColors.blackColor,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 12.0,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.8,
                child: CustomText(
                  text: 'Weakenes',
                  fontSize: 12.0,
                  color: CustomColors.blackColor,
                ),
              ),
              const SizedBox(
                height: 4.0,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.80,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: buildDamageTypes(
                        widget.pokemon.typeRelations!.doubleDamageFrom),
                  ),
                ),
              ),
              const SizedBox(
                height: 12.0,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.8,
                child: CustomText(
                  text: 'Strenghts',
                  fontSize: 12.0,
                  color: CustomColors.blackColor,
                ),
              ),
              const SizedBox(
                height: 4.0,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.8,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: buildDamageTypes(
                        widget.pokemon.typeRelations!.doubleDamageTo),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget? buildTypeCard(String type) {
    if (type.isEmpty) return null;
    String imagePath = GetColors.getPokemonCardColor(type) ?? Images.bug;
    return Image.asset(imagePath);
  }

  List<Widget> buildDamageTypes(List<String>? types) {
    if (types == null) return [];

    var validTypes = types.where((type) => type.isNotEmpty).toList();

    return validTypes
        .map((type) {
          return Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: buildTypeCard(type),
          );
        })
        .where((widget) => widget != null)
        .toList()
        .cast<Widget>();
  }

  Widget _buildStats(BuildContext context, HomeController controller) {
    int totalStats = widget.pokemon.stats!
        .fold(0, (prev, stat) => prev + stat.baseStat!.toInt());

    return Positioned(
      bottom: 15,
      child: Container(
        width: MediaQuery.of(context).size.width,
        color: CustomColors.greyColor,
        child: Visibility(
          visible: controller.isStats.value,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  top: 42.0,
                  bottom: 12.0,
                ),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width * 0.7,
                  child: Column(
                    children: [
                      StatRow(
                          label: 'HP',
                          value: widget.pokemon.stats![0].baseStat!),
                      StatRow(
                          label: 'Attack',
                          value: widget.pokemon.stats![1].baseStat!),
                      StatRow(
                          label: 'Defense',
                          value: widget.pokemon.stats![2].baseStat!),
                      StatRow(
                          label: 'Sp. Atk',
                          value: widget.pokemon.stats![3].baseStat!),
                      StatRow(
                          label: 'Sp. Def',
                          value: widget.pokemon.stats![4].baseStat!),
                      StatRow(
                          label: 'Speed',
                          value: widget.pokemon.stats![5].baseStat!),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 12.0),
                        child: Row(
                          children: [
                            CustomText(
                              text: 'Total',
                              fontSize: 12.0,
                              color: CustomColors.blackColor,
                            ),
                            const SizedBox(
                              width: 12.0,
                            ),
                            CustomText(
                              text: totalStats.toString(),
                              fontSize: 12.0,
                              color: CustomColors.blackColor,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
