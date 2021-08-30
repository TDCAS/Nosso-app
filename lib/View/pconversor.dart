import 'package:flutter/material.dart';

class Pconversor extends StatefulWidget {
  @override
  State createState() => PconversorState();
}

class PconversorState extends State<Pconversor> {
  TextEditingController campo1 = new TextEditingController(text: "1");
  num dolar = 0;
  num real = 0;
  num resultado = 0;
  int oloko = 1;
  int caminhos = 1;
  int bar = 2;
  int log = 2;

  void calcular() {
    setState(() {
      if (caminhos == log) {
        resultado = num.parse(campo1.text);
      } else if (caminhos == 1) {
        dolar = 5;
        real = num.parse(campo1.text);
        resultado = real / dolar;
      } else {
        real = 5;
        dolar = num.parse(campo1.text);
        resultado = real * dolar;
      }
    });
  }

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
                  style: TextStyle(color: Colors.black, fontSize: 18),
                  isExpanded: true,
                  value: caminhos,
                  items: [
                    DropdownMenuItem(
                      child: Text("Real"),
                      value: 1,
                      onTap: () {
                        oloko = 1;
                      },
                    ),
                    DropdownMenuItem(
                      child: Text("Dolar"),
                      value: 2,
                      onTap: () {
                        oloko = 2;
                      },
                    ),
                  ],
                  onChanged: (value) {
                    setState(() {
                      caminhos = oloko;
                    });
                  },
                ),
                //barra de digitaçao 1
                new TextField(
                    controller: campo1,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey)),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black)))),
                //Menu de escolhas

                new DropdownButton(
                  style: TextStyle(color: Colors.black, fontSize: 18),
                  value: log,
                  items: [
                    DropdownMenuItem(
                        child: Text("Real"),
                        value: 1,
                        onTap: () {
                          bar = 1;
                        }),
                    DropdownMenuItem(
                        child: Text("Dolar"),
                        value: 2,
                        onTap: () {
                          bar = 2;
                        })
                  ],
                  onChanged: (value) {
                    setState(() {
                      log = bar;
                    });
                  },
                ),
                new SizedBox(height: 20),
                new Text("Resultado $resultado",
                    style: TextStyle(fontSize: 28)),
                new SizedBox(height: 20),
                //Botao CONVERTER
                new MaterialButton(
                  padding: EdgeInsets.all(20),
                  child: new Text("Converter",
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
                  color: Colors.yellow,
                  onPressed: calcular,
                )
              ],
            )),
      ]),
    );
  }
}
