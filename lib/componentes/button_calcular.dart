
import 'dart:developer';
import 'package:calculadora_imc/core/app_colors.dart';
import 'package:calculadora_imc/core/text_styles.dart';
import 'package:flutter/material.dart';

class ButtonCalcular extends StatelessWidget {
  const ButtonCalcular({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: SizedBox(
        width: double.infinity,
        child: ElevatedButton(
          onPressed: () {
            log("Presionaste el boton calcular ");
          },
          style: ButtonStyle(
            backgroundColor: WidgetStatePropertyAll(AppColors.primary),
            foregroundColor: WidgetStatePropertyAll(Colors.white)
          ),
          child: Text(
            "C a l c u l a r".toUpperCase(), 
            style: TextStyles.bodyText
          ),
        ),
      ),
      // child: Container(
      //   decoration: BoxDecoration(
      //     color: AppColors.primary,
      //     borderRadius: BorderRadius.circular(20)
      //   ),
      // ),
    );
  }
}
