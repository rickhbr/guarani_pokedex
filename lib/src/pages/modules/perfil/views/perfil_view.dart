import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:guarani_poke_test/src/core/base/colors.dart';
import 'package:guarani_poke_test/src/core/base/images.dart';
import 'package:guarani_poke_test/src/globals/controllers/overlay_controller.dart';
import 'package:guarani_poke_test/src/pages/modules/home/controllers/home_controller.dart';
import 'package:guarani_poke_test/src/widgets/text/custom_text.dart';
import 'package:guarani_poke_test/src/widgets/toast/toast.dart';
import 'package:url_launcher/url_launcher.dart';

class PerfilView extends GetView<HomeController> {
  PerfilView({Key? key}) : super(key: key);
  final overlayController = Get.find<OverlayController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: CustomColors.white, body: _buildBody(context));
  }

  Widget _buildBody(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Stack(
          children: [
            Column(
              children: [
                _buildAppBar(),
                Image.asset(
                  Images.icPokemon,
                  width: 160.0,
                  height: 65.0,
                ),
                const SizedBox(
                  height: 16.0,
                ),
                _buildAvatar(),
                const SizedBox(
                  height: 24.0,
                ),
                const Padding(
                  padding: EdgeInsets.only(right: 12.0),
                  child: CustomText(
                    text: 'Rick Ramos',
                    fontSize: 32.0,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 12.0, top: 8.0),
                  child: CustomText(
                    text: 'Engenheiro de Software | Flutter | Android | Swift',
                    fontSize: 15.0,
                    color: CustomColors.defaultColor,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const SizedBox(
                  height: 24.0,
                ),
                _buildButtonMessage(context),
                _buildAboutMe(context),
                _buildAboutProject(context),
                _buildSocialMedia(context),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildAboutProject(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 18.0, left: 32.0, right: 32.0),
      child: Column(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: CustomText(
              text: 'Sobre o projeto',
              fontSize: 15.0,
              fontWeight: FontWeight.w500,
              color: CustomColors.titleColor,
            ),
          ),
          const SizedBox(
            height: 8.0,
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.08,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18),
                color: CustomColors.greyColor),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Center(
                child: CustomText(
                  text:
                      'Projeto para o teste técnico da Guarani, onde foi implementado uma Pokedéx utilizando a API do Pokemon.',
                  fontSize: 12.0,
                  color: CustomColors.subTitleColor,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _buildSocialMedia(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
          top: 32.0, left: 28.0, right: 32.0, bottom: 24.0),
      child: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.07,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18),
                color: CustomColors.greyColor),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(
                32.0,
                8.0,
                32.0,
                8.0,
              ),
              child: Center(
                  child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      launchUrlAPI(
                          'https://www.linkedin.com/in/rick-ramos-00a94a138/');
                    },
                    child: Image.asset(
                      Images.linkedin,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      launchUrlAPI('https://www.instagram.com/rick.ramos_/');
                    },
                    child: Image.asset(
                      Images.instagram,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      launchUrlAPI('https://github.com/rickhbr');
                    },
                    child: Image.asset(
                      Images.github,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      launchUrlAPI(
                          'https://api.whatsapp.com/send?phone=5592984825832');
                    },
                    child: Image.asset(
                      Images.whatsapp,
                    ),
                  ),
                ],
              )),
            ),
          )
        ],
      ),
    );
  }

  Widget _buildAboutMe(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 18.0, left: 32.0, right: 32.0),
      child: Column(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: CustomText(
              text: 'Sobre mim',
              fontSize: 15.0,
              fontWeight: FontWeight.w500,
              color: CustomColors.titleColor,
            ),
          ),
          const SizedBox(
            height: 8.0,
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.13,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18),
                color: CustomColors.greyColor),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Center(
                child: CustomText(
                  text:
                      'Eu me chamo Rick, tenho 27 anos, sou de Manaus/AM, apaixonado por jogos eletrônicos, tecnologia e séries. Formado em Ciência da Computação pela UFAM (2022) e já trabalho com desenvolvimento Mobile a mais de 4 anos.',
                  fontSize: 12.0,
                  color: CustomColors.subTitleColor,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _buildAppBar() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20.0, 30.0, 15.0, 0.0),
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
    );
  }

  Widget _buildAvatar() {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          width: 165,
          height: 165,
          decoration: BoxDecoration(
            color: CustomColors.yellowCircle,
            shape: BoxShape.circle,
          ),
        ),
        Container(
          width: 155,
          height: 155,
          decoration: BoxDecoration(
            color: CustomColors.blueCircle,
            shape: BoxShape.circle,
          ),
        ),
        Container(
          width: 150,
          height: 150,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
              image: AssetImage(Images.rick),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildButtonMessage(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        GestureDetector(
          onTap: () {
            Toast.showToast(
              context: context,
              text: "Me segue no Linkedin! :)",
              error: false,
            );
            Future.delayed(const Duration(seconds: 2)).then(
              (value) => launchUrlAPI(
                  'https://www.linkedin.com/in/rick-ramos-00a94a138/'),
            );
          },
          child: Container(
            width: 125,
            height: 48,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: CustomColors.buttonPerfil),
            child: Center(
              child: CustomText(
                text: 'Follow',
                fontSize: 18.0,
                color: CustomColors.white,
              ),
            ),
          ),
        ),
        const SizedBox(
          width: 16.0,
        ),
        GestureDetector(
          onTap: () {
            launchUrlAPI('https://api.whatsapp.com/send?phone=5592984825832');
          },
          child: Container(
            width: 125,
            height: 48,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: CustomColors.buttonGreyPerfil),
            child: Center(
              child: CustomText(
                text: 'Message',
                fontSize: 18.0,
                color: CustomColors.buttonPerfil,
              ),
            ),
          ),
        ),
      ],
    );
  }

  launchUrlAPI(String url) async {
    await launchUrl(Uri.parse(url), mode: LaunchMode.externalApplication);
  }
}
