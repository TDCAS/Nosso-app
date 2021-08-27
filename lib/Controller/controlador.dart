import 'package:flutter/material.dart';
import 'package:nosso_app/View/pconversor.dart';

class Controlador {
  TextEditingController campo1 = new TextEditingController(text: "1");
  TextEditingController campo2 = new TextEditingController(text: "");
  num resultado;

  num calcular() {
    num real = 0;
    num dolar = 0;
    resultado = real - dolar;
    return resultado;
  }

  void setState(Null Function() param0) {}
}
