import 'package:get/get.dart';
class Variables extends GetxController{
  RxString sexo = "Hombre".obs;
  RxInt altura = 170.obs;
  RxInt peso = 90.obs;
  RxInt edad = 30.obs;
  RxDouble imc = 31.14.obs;
  RxString mensaje = "".obs;

  //obtener Datos con Get
  String getSexo() => sexo.value;
  int getAltura() => altura.value;
  int getPeso() => peso.value;
  int getEdad() => edad.value;
  double getImc() => imc.value;
  double indiceMasaCorporal(){
    double newAltura = altura.value/100;
    return (peso.value/(newAltura*newAltura));
  }
  String getMensaje(){
    if(imc.value < 18.5){
      return "BAJO PESO";
    }else if(imc.value <= 24.9 && imc.value >= 18.5){
      return "PESO NORMAL";
    }else if(imc.value <= 29.9 && imc.value >= 25.0){
      return "SOBRE-PESO";
    }else{
      return "OBESIDAD";
    }
  }
  //setear datos
  void setSexo(String s) => sexo.value = s;
  void setAltura(int a) => altura.value = a;
  void setPeso(int p) => peso.value = p;
  void setEdad(int e) => edad.value = e;
  void setImc(double i) => imc.value = i;
}