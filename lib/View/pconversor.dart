import 'package:flutter/material.dart';

class Pconversor extends StatefulWidget {
  @override
  State createState() => PconversorState();
}

class PconversorState extends State<Pconversor> {
  List<String> listinha = ["Dolar", "Real", "Peso"];
  List<int> numero = [0, 1];
  var dropdownValue = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text("Conversor"),
      ),
      body: new Column(children: [
        new Container(
            alignment: Alignment.center,
            margin: EdgeInsets.symmetric(horizontal: 25, vertical: 175),
            color: Colors.grey[800],
            child: new Column(
              children: [
                new TextField(
                    //Controller: ,
                    decoration: InputDecoration(
                        labelText: "Real",
                        labelStyle:
                            TextStyle(color: Colors.white, fontSize: 19),
                        border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey)),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black)))),
                SizedBox(height: 20, width: 50),
                new DropdownButton(
                  value: dropdownValue,
                  items: [
                    DropdownMenuItem(
                      child: Text(listinha[numero[0]]),
                      value: numero[0],
                    ),
                    DropdownMenuItem(
                      child: Text(listinha[numero[1]]),
                      value: numero[1],
                    )
                  ],
                  onChanged: (value) {
                    setState(() {
                      value = value;
                    });
                  },
                ),
                new TextField(
                    //controller: ,
                    decoration: InputDecoration(
                        labelText: "Dolar",
                        labelStyle:
                            TextStyle(color: Colors.white, fontSize: 19),
                        border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey)),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black)))),

                /*new Container(
                  child: new DropdownButton()
                  
                )*/
              ],
            )),
      ]),
    );
  }
}

widgetTextField() {
  return TextField();
}
