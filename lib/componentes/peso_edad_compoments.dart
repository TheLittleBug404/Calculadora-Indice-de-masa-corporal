import 'package:calculadora_imc/core/app_colors.dart';
import 'package:flutter/material.dart';

class PesoEdadCompoment extends StatefulWidget {
  const PesoEdadCompoment({super.key});

  @override
  State<PesoEdadCompoment> createState() => _PesoEdadCompomentState();
}

class _PesoEdadCompomentState extends State<PesoEdadCompoment> {
  int peso = 90;
  int edad = 30;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        spacing: 10,
        children: [
          ContainerData(title: "PESO", dato: peso),
          ContainerData(title: "EDAD", dato: edad),
        ],
      ),
    );
  }
}

class ContainerData extends StatefulWidget {
  int dato;
  final String title;
  ContainerData({super.key, required this.title, required this.dato});

  @override
  State<ContainerData> createState() => _ContainerDataState();
}

class _ContainerDataState extends State<ContainerData> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.backgroundComponentes,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              widget.title,
              style: TextStyle(color: Colors.grey, fontSize: 10),
            ),
            Text(
              widget.dato.toString(),
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              spacing: 10,
              children: [
                ElevatedButton(
                  onPressed: () => setState(() {
                    if (widget.dato <= 200) {
                      widget.dato += 1;
                    }
                  }),
                  style: ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll(AppColors.primary),
                    foregroundColor: WidgetStatePropertyAll(Colors.white),
                  ),
                  child: Icon(Icons.add),
                ),
                ElevatedButton(
                  onPressed: () => setState(() {
                    if (widget.dato > 0) {
                      widget.dato -= 1;
                    }
                  }),
                  style: ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll(AppColors.primary),
                    foregroundColor: WidgetStatePropertyAll(Colors.white),
                  ),
                  child: Icon(Icons.remove),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
