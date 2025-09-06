import 'package:calculadora_imc/core/app_colors.dart';
import 'package:calculadora_imc/core/text_styles.dart';
import 'package:calculadora_imc/get_x/gestor_estado.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ButtonCalcular extends StatelessWidget {
  ButtonCalcular({super.key});

  final Variables variables = Get.put(Variables());

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: SizedBox(
        width: double.infinity,
        child: ElevatedButton(
          onPressed: () {
            // log("Presionaste el boton calcular ");
            // log("Peso :::> ${variables.getPeso()}");
            // log("Edad :::> ${variables.getEdad()}");
            // log("Altura :::> ${variables.getAltura()}");
            // log("Sexo :::> ${variables.getSexo()}");
            variables.setImc(variables.indiceMasaCorporal());
            // log("Imc:::> ${variables.getImc().toStringAsFixed(2)}");
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
    );
  }
}
