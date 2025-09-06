import 'package:calculadora_imc/core/app_colors.dart';
import 'package:calculadora_imc/core/text_styles.dart';
import 'package:calculadora_imc/get_x/gestor_estado.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
class MuestraResultadoCompoment extends StatefulWidget {
  final String title;
  //final double masaCorporal;
  const MuestraResultadoCompoment({
    super.key,
    required this.title,
    //required this.masaCorporal,
  });
  @override
  State<MuestraResultadoCompoment> createState() => _MuestraResultadoCompomentState();
}

class _MuestraResultadoCompomentState extends State<MuestraResultadoCompoment> {

  final Variables variables = Get.put(Variables());
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
          spacing: 10,
          children: [
            Text(widget.title.toUpperCase(),style: TextStyles.bodyText,),
            Obx(()=> Text("IMC : ${variables.getImc().toStringAsFixed(2)}",style: TextStyles.bodyText,)),
            Obx(()=> Text(variables.getMensaje(),style: TextStyles.bodyText,)),
          ],
        ),
      ),
    );
  }
}