import 'package:calculadora_imc/core/app_colors.dart';
import 'package:calculadora_imc/core/text_styles.dart';
import 'package:calculadora_imc/get_x/gestor_estado.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GenderSelector extends StatefulWidget {
  const GenderSelector({super.key});

  @override
  State<GenderSelector> createState() => _GenderSelectorState();
}

class _GenderSelectorState extends State<GenderSelector> {
  String? selectedGender;
  bool botonSeleccionado1 = true;
  bool botonSeleccionado2 = false;
  Color colorBoton1 = AppColors.backgroundComponentesSeleccionados;
  Color colorBoton2 = AppColors.backgroundComponentes;
  final Variables variables = Get.put(Variables());
  @override
  Widget build(BuildContext context) {
    final double anchoPantalla = MediaQuery.of(context).size.width;
    //final double altoPantalla = MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.only(top: 10, bottom: 10,left: 15,right: 15),
      child: Row(
        spacing: 10,
        children: [
          Expanded(
            flex: 4,
            child: GestureDetector(
              onTap: () {
                setState(() {
                  botonSeleccionado1 = !botonSeleccionado1;
                  botonSeleccionado2 = !botonSeleccionado2;
                  variables.setSexo("Hombre");
                  if (botonSeleccionado1) {
                    colorBoton1 = AppColors.backgroundComponentesSeleccionados;
                    colorBoton2 = AppColors.backgroundComponentes;
                  } else {
                    colorBoton1 = AppColors.backgroundComponentes;
                    colorBoton2 = AppColors.backgroundComponentesSeleccionados;
                  }
                });
              },
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: colorBoton1,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.man,
                      color: Colors.white,
                      size: anchoPantalla / 5.5,
                    ),
                    Text(
                      "Hombre".toUpperCase(),
                      style: TextStyles.bodyText
                    )
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            flex: 4,
            child: GestureDetector(
              onTap: () {
                setState(() {
                  botonSeleccionado2 = !botonSeleccionado2;
                  botonSeleccionado1 = !botonSeleccionado1;
                  variables.setSexo("Mujer");
                  if (botonSeleccionado2) {
                    colorBoton2 = AppColors.backgroundComponentesSeleccionados;
                    colorBoton1 = AppColors.backgroundComponentes;
                  } else {
                    colorBoton2 = AppColors.backgroundComponentes;
                    colorBoton1 = AppColors.backgroundComponentesSeleccionados;
                  }
                });
              },
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: colorBoton2,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.woman,
                      color: Colors.white,
                      size: anchoPantalla / 5.5,
                    ),
                    Text(
                      "Mujer".toUpperCase(),
                      style: TextStyles.bodyText
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
