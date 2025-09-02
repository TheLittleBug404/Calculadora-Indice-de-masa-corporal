import 'package:calculadora_imc/componentes/button_calcular.dart';
import 'package:calculadora_imc/componentes/gender_selector.dart';
import 'package:calculadora_imc/componentes/muestra_resultado_compoment.dart';
import 'package:calculadora_imc/componentes/peso_edad_compoments.dart';
import 'package:calculadora_imc/componentes/slider_compoment.dart';
import 'package:flutter/material.dart';

class ImcHomeScreen extends StatefulWidget {
  const ImcHomeScreen({super.key});

  @override
  State<ImcHomeScreen> createState() => _ImcHomeScreenState();
}

class _ImcHomeScreenState extends State<ImcHomeScreen> {
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
            child: PesoEdadCompoment()
          ),
          Expanded(
            flex: 1,
            child: MuestraResultadoCompoment()
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