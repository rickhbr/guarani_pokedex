import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:guarani_poke_test/src/core/base/colors.dart';

class CustomText extends StatelessWidget {
  final String text;
  final double fontSize;
  final FontWeight? fontWeight;
  final Color? color;
  final bool alignCenter;
  final bool isUnderlined;
  const CustomText(
      {super.key,
      required this.text,
      required this.fontSize,
      this.alignCenter = false,
      this.fontWeight,
      this.color,
      this.isUnderlined = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: isUnderlined
          ? BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: color ?? CustomColors.blackColor,
                  width: 1.0, // Espessura do sublinhado
                ),
              ),
            )
          : null,
      padding: isUnderlined
          ? const EdgeInsets.only(
              bottom: 4.0) // Espaço entre o texto e o sublinhado
          : null,
      child: Text(
        text,
        textAlign: alignCenter ? TextAlign.center : TextAlign.start,
        style: GoogleFonts.roboto(
          fontSize: fontSize,
          fontWeight: fontWeight ?? FontWeight.w400,
          color: color ?? CustomColors.blackColor,
          decoration: TextDecoration.none, // Remova o sublinhado padrão
        ),
      ),
    );
  }
}
