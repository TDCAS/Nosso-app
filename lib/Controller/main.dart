import 'package:flutter/material.dart';
import 'package:nosso_app/View/pconversor.dart';

void main() => runApp(new MaterialApp(
      title: "Conversor de Moeda",
      home: new Pconversor(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primaryColor: Colors.black,
          scaffoldBackgroundColor: Colors.grey[800]),
    ));
