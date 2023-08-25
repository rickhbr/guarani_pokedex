import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomOverlay extends StatelessWidget {
  const CustomOverlay({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0,
      left: 0,
      right: 0,
      child: Container(
        height: Get.height * 0.8,
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: const Center(child: Text("Seu conteúdo aqui")),
      ),
    );
  }
}
