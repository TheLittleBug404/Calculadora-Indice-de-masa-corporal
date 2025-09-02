import 'package:calculadora_imc/core/app_colors.dart';
import 'package:calculadora_imc/core/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:interactive_slider/interactive_slider.dart';

class SliderCompoment extends StatefulWidget {
  const SliderCompoment({super.key});

  @override
  State<SliderCompoment> createState() => _SliderCompomentState();
}

class _SliderCompomentState extends State<SliderCompoment> {
  double altura = 170;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsGeometry.only(top: 10,bottom: 10,left: 10,right: 10),
      child: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: AppColors.backgroundComponentes
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "ALTURA",
              style: TextStyle(
                color: Colors.grey
              ),
            ),
            Text(
              "${altura.toStringAsFixed(0)} cm",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 25
              )
            ),
            InteractiveSlider(
              padding: EdgeInsets.all(8),
              segmentDividerWidth: 24,
              enabled: true,
              startIcon: const Icon(Icons.remove),
              endIcon: const Icon(Icons.add),
              min: 0.0,
              max: 240.0,
              initialProgress: 0.7,
              backgroundColor: Colors.white,
              iconSize: 15,
              iconColor: Colors.white,
              foregroundColor: AppColors.primary,
              onChanged: (newAltura) => setState(() {
                altura = newAltura;
              }),
            ),
          ],
        ),
      ),
    );
  }
}
