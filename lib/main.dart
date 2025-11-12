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
                children: [
                  Text("Numero",style: TextStyle(fontSize: 40),)
                ],
            ),
             Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text("AC",style: TextStyle(fontSize: 40)),
                Text(" ",style: TextStyle(fontSize: 40)),
                Text(" ",style: TextStyle(fontSize: 40)),
                Text("<X",style: TextStyle(fontSize: 40))
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text("7",style: TextStyle(fontSize: 40)),
                Text("8",style: TextStyle(fontSize: 40)),
                Text("9",style: TextStyle(fontSize: 40)),
                Text("/",style: TextStyle(fontSize: 40))
              ],
            ),
             Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text("4",style: TextStyle(fontSize: 40)),
                Text("5",style: TextStyle(fontSize: 40)),
                Text("6",style: TextStyle(fontSize: 40)),
                Text("x",style: TextStyle(fontSize: 40))
              ],
            ),
             Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text("1",style: TextStyle(fontSize: 40)),
                Text("2",style: TextStyle(fontSize: 40)),
                Text("3",style: TextStyle(fontSize: 40)),
                Text("-",style: TextStyle(fontSize: 40))
              ],
            ),
             Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text("0",style: TextStyle(fontSize: 40)),
                Text(",",style: TextStyle(fontSize: 40)),
                Text("9",style: TextStyle(fontSize: 40)),
                Text("=",style: TextStyle(fontSize: 40))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
