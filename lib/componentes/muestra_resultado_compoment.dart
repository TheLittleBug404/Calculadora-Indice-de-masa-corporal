import 'package:calculadora_imc/core/app_colors.dart';
import 'package:calculadora_imc/core/text_styles.dart';
import 'package:flutter/material.dart';
class MuestraResultadoCompoment extends StatefulWidget {
  const MuestraResultadoCompoment({super.key});

  @override
  State<MuestraResultadoCompoment> createState() => _MuestraResultadoCompomentState();
}

class _MuestraResultadoCompomentState extends State<MuestraResultadoCompoment> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          color: AppColors.backgroundComponentes,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("ABC",style: TextStyles.bodyText,),
            Text("ABC",style: TextStyles.bodyText,),
            Text("ABC",style: TextStyles.bodyText,),
          ],
        ),
      ),
    );
  }
}