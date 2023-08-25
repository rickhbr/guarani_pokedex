import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:guarani_poke_test/src/core/base/colors.dart';
import 'package:guarani_poke_test/src/core/base/images.dart';
import 'package:guarani_poke_test/src/globals/controllers/overlay_controller.dart';
import 'package:guarani_poke_test/src/pages/modules/home/components/overlay_card.dart';
import 'package:guarani_poke_test/src/pages/modules/home/components/pokemon_card.dart';
import 'package:guarani_poke_test/src/pages/modules/home/controllers/home_controller.dart';
import 'package:guarani_poke_test/src/widgets/text/custom_text.dart';

class HomeView extends GetView<HomeController> {
  HomeView({Key? key}) : super(key: key);
  final overlayController = Get.find<OverlayController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: CustomColors.white,
        body: SafeArea(
          child: Stack(
            children: [
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20.0, 40.0, 20.0, 0.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset(
                          Images.icConfig,
                          color: CustomColors.blackColor,
                        ),
                        Image.asset(
                          Images.icAlert,
                          color: CustomColors.blackColor,
                        ),
                      ],
                    ),
                  ),
                  Image.asset(
                    Images.icPokemon,
                    width: 160.0,
                    height: 70.0,
                  ),
                  const SizedBox(
                    height: 38.0,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(right: 12.0),
                    child: CustomText(
                      text: 'Qual Pokémon você \nestá procurando?',
                      fontSize: 32.0,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(
                    height: 32.0,
                  ),
                  Expanded(
                    child: Obx(
                      () {
                        return controller.isLoading.value
                            ? const Center(
                                child: CircularProgressIndicator(),
                              )
                            : ListView.builder(
                                itemCount: controller.pokemons.length +
                                    (controller.isLoadingMore.value
                                        ? 1
                                        : 0), // +1 para o widget de carregamento
                                controller: controller.scrollController,
                                itemBuilder: (context, index) {
                                  if (index == controller.pokemons.length &&
                                      controller.isLoadingMore.value) {
                                    return const Center(
                                        child:
                                            CircularProgressIndicator()); // Mostra o widget de carregamento no final
                                  } else {
                                    final pokemon = controller.pokemons[index];

                                    return Obx(
                                      () => PokemonCard(
                                        pokemon: pokemon,
                                        isFavorite: controller
                                            .isPokemonFavorite(pokemon),
                                        pokemonImage: pokemon
                                                .sprites
                                                ?.other
                                                ?.officialArtwork
                                                ?.frontDefault ??
                                            Images.bulba,
                                        pokemonName: pokemon.name ?? 'Unknown',
                                        position: '#${pokemon.id}',
                                        typeOne:
                                            pokemon.types?.first.type?.name ??
                                                'Unknown',
                                        typeTwo: pokemon.types?.length == 2
                                            ? pokemon.types?.last.type?.name
                                            : 'unknow',
                                      ),
                                    );
                                  }
                                },
                              );
                      },
                    ),
                  )
                ],
              ),
              Obx(() {
                if (overlayController.selectedPokemon.value != null &&
                    overlayController.isOverlayVisible.value) {
                  return OverlayCardPokemon(
                    homeController: controller,
                    pokemon: overlayController.selectedPokemon.value!,
                    isFav: controller.isPokemonFavorite(
                        overlayController.selectedPokemon.value!),
                    onTapOverlay: () {
                      overlayController.isOverlayVisible.toggle();
                      controller.updatePokemonList();
                    },
                    onPokemonFavorited: () {},
                    types: overlayController.selectedPokemon.value?.types,
                  );
                } else {
                  return Container();
                }
              }),
            ],
          ),
        ));
  }
}
