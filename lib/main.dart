import 'package:calculadora_imc/core/app_colors.dart';
import 'package:calculadora_imc/screens/imc_home_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';

void main() {
  //runApp(const MainApp());
  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    home: MainApp()
    )
  );
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: AppColors.primary,
          foregroundColor: Colors.white,
          title: Text(
            "Calculadora IMC",
          ),
        ),
        backgroundColor: AppColors.background,
        body: ImcHomeScreen()
      ),
    );
  }
}
