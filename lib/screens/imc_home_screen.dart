import 'package:calculadora_imc/componentes/button_calcular.dart';
import 'package:calculadora_imc/componentes/gender_selector.dart';
import 'package:calculadora_imc/componentes/muestra_resultado_compoment.dart';
import 'package:calculadora_imc/componentes/peso_edad_compoments.dart';
import 'package:calculadora_imc/componentes/slider_compoment.dart';
import 'package:calculadora_imc/get_x/gestor_estado.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ImcHomeScreen extends StatefulWidget {
  const ImcHomeScreen({super.key});

  @override
  State<ImcHomeScreen> createState() => _ImcHomeScreenState();
}

class _ImcHomeScreenState extends State<ImcHomeScreen> {
  final Variables variables = Get.put(Variables());
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: [
          Expanded(
            flex: 1,
            child: GenderSelector()
          ),
          Expanded(
            flex: 1,
            child: SliderCompoment()
          ),
          Expanded(
            flex: 1,
            child: PesoEdadCompoment(
              peso: variables.peso.toInt(), 
              edad: variables.edad.toInt(),
            )
          ),
          Expanded(
            flex: 1,
            child: Obx(()=>MuestraResultadoCompoment(
              title: "Sexo : ${variables.getSexo()}",
              //masaCorporal: variables.peso.toDouble(),
            ))
          ),
          Expanded(
            flex: 1,
            child: ButtonCalcular()
          )
        ],
      ),
    );
  }
}