import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:guarani_poke_test/src/core/base/images.dart';
import 'package:guarani_poke_test/src/data/models/pokemon_model.dart';
import 'package:guarani_poke_test/src/globals/controllers/overlay_controller.dart';
import 'package:guarani_poke_test/src/pages/modules/home/controllers/home_controller.dart';
import 'package:guarani_poke_test/src/utils/capitalize_letters.dart';
import 'package:guarani_poke_test/src/utils/get_colors.dart';
import 'package:guarani_poke_test/src/widgets/text/custom_text.dart';

class PokemonCard extends StatefulWidget {
  final String position;
  final String pokemonName;
  final String typeOne;
  final String? typeTwo;
  final String pokemonImage;
  final bool? isFavorite;

  final PokemonModel pokemon;
  const PokemonCard(
      {super.key,
      required this.position,
      required this.pokemonName,
      required this.typeOne,
      required this.typeTwo,
      required this.pokemonImage,
      required this.pokemon,
      this.isFavorite = false});

  @override
  State<PokemonCard> createState() => _PokemonCardState();
}

class _PokemonCardState extends State<PokemonCard> {
  final overlayController = Get.find<OverlayController>();

  late bool isTaped = widget.isFavorite!;
  late String positionFormated = widget.position.replaceAll("#", "");
  late final typeTwoImage = GetColors.getPokemonCardColor(widget.typeTwo!);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _showBottomSheet,
      child: Padding(
        padding: const EdgeInsets.only(bottom: 12.0),
        child: Container(
          width: MediaQuery.of(context).size.width * 0.9,
          height: 140,
          decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.2),
                  spreadRadius: 1,
                  blurRadius: 5,
                  offset: const Offset(0, 3),
                ),
              ],
              borderRadius: BorderRadius.circular(20),
              color: GetColors.getColorForType(widget.typeOne)),
          child: Stack(
            children: [
              Positioned(
                left: 20,
                top: 20,
                child: SizedBox(
                  width: MediaQuery.of(context).size.width * 0.7,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomText(
                        text: widget.position.length > 2
                            ? "#0$positionFormated"
                            : "#00$positionFormated",
                        fontSize: 13.0,
                        fontWeight: FontWeight.w400,
                      ),
                      const SizedBox(
                        height: 8.0,
                      ),
                      CustomText(
                        text: CapitalizeLetters.capitalizeFirstLetter(
                            widget.pokemonName),
                        fontSize: 28.0,
                        fontWeight: FontWeight.w700,
                      ),
                      const SizedBox(
                        height: 16.0,
                      ),
                      Row(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(GetColors.getPokemonCardColor(
                                  widget.typeOne)!),
                              const SizedBox(
                                width: 6.0,
                              ),
                              widget.typeTwo != 'unknow' && typeTwoImage != null
                                  ? Image.asset(typeTwoImage!)
                                  : Container()
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Positioned(
                  right: 0,
                  top: 0,
                  bottom: 0,
                  child: Image.asset(
                    Images.icPokeShadow,
                  )),
              Positioned(
                right: 80,
                child: Image.network(
                  widget.pokemon.sprites?.other?.officialArtwork
                          ?.frontDefault ??
                      Images.bulba,
                  width: 130,
                  height: 140,
                ),
              ),
              Positioned(
                  right: 15,
                  top: 15,
                  child: InkWell(
                    onTap: () {
                      final homeController = Get.find<HomeController>();
                      homeController.toggleFavoritePokemon(
                          widget.pokemon, context);

                      setState(() {
                        isTaped = !isTaped;
                      });
                    },
                    child: Image.asset(
                      isTaped ? Images.icFavSelected : Images.icFavUnselected,
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }

  void _showBottomSheet() {
    overlayController.selectedPokemon.value = widget.pokemon;
    overlayController.isOverlayVisible.toggle();
  }
}
