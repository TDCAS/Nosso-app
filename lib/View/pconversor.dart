import 'package:flutter/material.dart';
import 'package:nosso_app/Controller/controlador.dart';

class Pconversor extends StatefulWidget {
  @override
  State createState() => PconversorState();
}

class PconversorState extends State<Pconversor> {
  List<String> listinha = ["Dolar", "Real", "Peso"];
  List<int> numero = [0, 1];
  var dropdownValue = 0;
  Controlador control = new Controlador();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text("Conversor"),
      ),
      body: new Column(children: [
        new Container(
            alignment: Alignment.bottomLeft,
            margin: EdgeInsets.symmetric(horizontal: 25, vertical: 130),
            color: Colors.grey[800],
            child: new Column(
              children: [
                //Menu de escolhas 1
                new DropdownButton(
                  style: TextStyle(color: Colors.white, fontSize: 18),
                  isExpanded: true,
                  value: 1,
                  items: [
                    DropdownMenuItem(
                      child: Text(listinha[0]),
                      value: numero[0],
                    ),
                    DropdownMenuItem(
                      child: Text(listinha[1]),
                      value: numero[1],
                    )
                  ],
                  onChanged: (value) {
                    setState(() {
                      value = value;
                    });
                  },
                ),
                //barra de digitaçao 1
                new TextField(
                    controller: control.campo1,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey)),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black)))),
                //Menu de escolhas

                new DropdownButton(
                  style: TextStyle(color: Colors.white, fontSize: 18),
                  value: 0,
                  items: [
                    DropdownMenuItem(
                      child: Text(listinha[0]),
                      value: numero[0],
                    ),
                    DropdownMenuItem(
                      child: Text(listinha[1]),
                      value: numero[1],
                    )
                  ],
                  onChanged: (value) {
                    setState(() {
                      value = value;
                    });
                  },
                ),
                new SizedBox(height: 20),
                 //Texto do resultado
                new Text("Resultado ${control.calcular}",
                    style: TextStyle(fontSize: 28)),
                new SizedBox(height: 20),
                //Botao CONVERTER
                new MaterialButton(
                  padding: EdgeInsets.all(20),
                  child: new Text("Converter",
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
                  color: Colors.yellow,
                  onPressed: control.calcular,
                )
              ],
            )),
      ]),
    );
  }
}
