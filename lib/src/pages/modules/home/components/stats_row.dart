import 'package:flutter/material.dart';
import 'package:guarani_poke_test/src/core/base/colors.dart';
import 'package:guarani_poke_test/src/widgets/text/custom_text.dart';

class StatRow extends StatelessWidget {
  final String label;
  final int value;

  const StatRow({super.key, required this.label, required this.value});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12.0),
      child: Row(
        children: [
          SizedBox(
            width: 60,
            child: CustomText(
              text: label,
              fontSize: 12.0,
              color: CustomColors.blackColor,
            ),
          ),
          const SizedBox(
            width: 12.0,
          ),
          SizedBox(
            width: 30,
            child: CustomText(
              text: value.toString(),
              fontSize: 12.0,
              color: CustomColors.blackColor,
            ),
          ),
          const SizedBox(
            width: 4.0,
          ),
          Flexible(
            child: Container(
              width: (MediaQuery.of(context).size.width * 0.4) * (value / 100),
              height: 10,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: value >= 60
                    ? CustomColors.blueCircle
                    : CustomColors.redPokemon,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
