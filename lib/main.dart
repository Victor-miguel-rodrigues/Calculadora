// ignore_for_file: unused_import

import 'package:flutter/material.dart';

import 'package:meu_primeiro_app/widget/totaly_widget.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatefulWidget {
  const Myapp({super.key});

  @override
  State<Myapp> createState() => _nameState();
}

class _nameState extends State<Myapp> {
  String numero = "numero";
  String novoNumm = " ";
  bool caseTocado = false;
  String operacao = " ";
  int primeiroNumero = 0;
  int segundoNumero = 0;

  void calcular(String tecla) {
    switch (tecla) {
      case "0":
        {
          setState(() {
            int novomunero = int.parse(novoNumm + tecla);
            numero = novomunero.toString();
          });
        }
      case "1":
      case "2":
      case "3":
      case "4":
      case "5":
      case "6":
      case "7":
      case "8":
      case "9":
        {
          setState(() {
            novoNumm += tecla;
            numero = novoNumm;
            primeiroNumero = int.parse(tecla);
            segundoNumero = int.parse(tecla);
          });
        }
      case ",":
        {
          setState(() {
            novoNumm += ".";
            numero = novoNumm;
          });
        }
      case "<X":
        {
          setState(() {
            if (novoNumm.isNotEmpty) {
              novoNumm = " ";
              numero = novoNumm;
            }
          });
          break;
        }
      case "AC":
        {
          setState(() {
            numero = "numero";
            novoNumm = "";
          });
          break;
        }
      case "=":
        {
          setState(() {
            if (operacao == "+") {
              var resultado =
                  int.parse(primeiroNumero.toString()) + int.parse(segundoNumero.toString());
              numero = resultado.toString();
            }
          });
          break;
        }
      case "+":
        {
          setState(() {
            operacao = "+";
            novoNumm += tecla;
            numero = novoNumm;
          });
        }
      case "/":
        {
          setState(() {
            operacao = "/";
            novoNumm += tecla;
            numero = novoNumm;
          });
          break;
        }
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Calculadora'),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [Text(numero, style: TextStyle(fontSize: 40))],
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                  onTap: () => calcular("AC"),
                  child: Text("AC", style: TextStyle(fontSize: 40)),
                ),
                Text(" ", style: TextStyle(fontSize: 40)),
                Text(" ", style: TextStyle(fontSize: 40)),
                GestureDetector(
                  onTap: () => calcular("<X"),
                  child: Text("<X", style: TextStyle(fontSize: 40)),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                  onTap: () {
                    calcular("7");
                  },
                  child: Text("7", style: TextStyle(fontSize: 40)),
                ),
                GestureDetector(
                  onTap: () => calcular("8"),
                  child: Text("8", style: TextStyle(fontSize: 40)),
                ),
                GestureDetector(
                  onTap: () => calcular("9"),
                  child: Text("9", style: TextStyle(fontSize: 40)),
                ),
                GestureDetector(
                  onTap: () => calcular("/"),
                  child: Text("/", style: TextStyle(fontSize: 40)),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                  onTap: () => calcular("4"),
                  child: Text("4", style: TextStyle(fontSize: 40)),
                ),
                GestureDetector(
                  onTap: () => calcular("5"),
                  child: Text("5", style: TextStyle(fontSize: 40)),
                ),
                GestureDetector(
                  onTap: () => calcular("6"),
                  child: Text("6", style: TextStyle(fontSize: 40)),
                ),
                GestureDetector(
                  onTap: () => calcular("x"),
                  child: Text("x", style: TextStyle(fontSize: 40)),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                  onTap: () => calcular("1"),
                  child: Text("1", style: TextStyle(fontSize: 40)),
                ),
                GestureDetector(
                  onTap: () => calcular("2"),
                  child: Text("2", style: TextStyle(fontSize: 40)),
                ),
                GestureDetector(
                  onTap: () => calcular("3"),
                  child: Text("3", style: TextStyle(fontSize: 40)),
                ),
                GestureDetector(
                  onTap: () => calcular("-"),
                  child: Text("-", style: TextStyle(fontSize: 40)),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                  onTap: () => calcular("0"),
                  child: Text("0", style: TextStyle(fontSize: 40)),
                ),
                GestureDetector(
                  onTap: () => calcular(","),
                  child: Text(",", style: TextStyle(fontSize: 40)),
                ),
                GestureDetector(
                  onTap: () => calcular("="),
                  child: Text("=", style: TextStyle(fontSize: 40)),
                ),
                GestureDetector(
                  onTap: () => calcular("+"),
                  child: Text("+", style: TextStyle(fontSize: 40)),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
