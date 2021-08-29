import 'package:flutter/material.dart';

class Pconversor extends StatefulWidget {
  @override
  State createState() => PconversorState();
}

class PconversorState extends State<Pconversor> {
  TextEditingController campo1 = new TextEditingController(text: "1");
  TextEditingController campo2 = new TextEditingController(text: "");
  num dolar = 0;
  num real = 0;
  num resultado = 0;

  void calcular() {
    setState(() {
      dolar = 5;
      real = num.parse(campo1.text);
      dolar = 5;
      resultado = real * dolar;
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
                  style: TextStyle(color: Colors.white, fontSize: 18),
                  isExpanded: true,
                  value: 1,
                  items: [
                    DropdownMenuItem(
                      child: Text("real"),
                      value: 1,
                    ),
                    DropdownMenuItem(
                      child: Text("Dolar"),
                      value: 2,
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
                    controller: campo1,
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
                      child: Text("Dolar"),
                      value: 0,
                    ),
                    DropdownMenuItem(
                      child: Text("Dolar"),
                      value: 1,
                    )
                  ],
                  onChanged: (value) {
                    setState(() {
                      value = value;
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
