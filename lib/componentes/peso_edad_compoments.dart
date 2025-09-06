import 'package:calculadora_imc/core/app_colors.dart';
import 'package:calculadora_imc/get_x/gestor_estado.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PesoEdadCompoment extends StatefulWidget {
  final int peso;
  final int edad;
  const PesoEdadCompoment({
    super.key,
    required this.peso,
    required this.edad,
  });

  @override
  State<PesoEdadCompoment> createState() => _PesoEdadCompomentState();
}

class _PesoEdadCompomentState extends State<PesoEdadCompoment> {
  //int peso = 90;
  //int edad = 30;
  final Variables variables = Get.put(Variables());
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        spacing: 10,
        children: [
          ContainerData(title: "PESO", dato: variables.getPeso(),tipo: 1,),
          ContainerData(title: "EDAD", dato: variables.getEdad(),tipo: 2),
        ],
      ),
    );
  }
}

class ContainerData extends StatefulWidget {
  final int dato;
  final String title;
  final int tipo;
  const ContainerData({
    super.key, 
    required this.title, 
    required this.dato,
    required this.tipo,
  });

  @override
  State<ContainerData> createState() => _ContainerDataState();
}

class _ContainerDataState extends State<ContainerData> {
  late int _dato = widget.dato;
  final Variables variables = Get.put(Variables());
  @override
  void initState(){
    super.initState();
    _dato = widget.dato;
  }
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
              _dato.toString(),
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              spacing: 10,
              children: [
                ElevatedButton(
                  onPressed: () => setState(() {
                    if (widget.dato <= 200) {
                      _dato += 1;
                      if(widget.tipo == 1){
                        variables.setPeso(_dato);
                      }else{
                        variables.setEdad(_dato);
                      }
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
                      _dato -= 1;
                      if(widget.tipo == 1){
                        variables.setPeso(_dato);
                      }else{
                        variables.setEdad(_dato);
                      }
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
