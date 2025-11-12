import 'package:flutter/material.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Scaffold(
         appBar: AppBar(backgroundColor: Colors.blue,
          title: Text("Filmes",
           style: TextStyle(color: const Color.fromARGB(255, 255, 0, 0)),),
          centerTitle: true,
         ),
      )
    );
  }
}


// ignore_for_file: unused_import
/*
import 'package:flutter/material.dart';
import 'package:meu_primeiro_app/widget/totaly_widget.dart';

void main() {
  runApp(Myapp(titleBar: "FILMES  ",));
}

class Myapp extends StatelessWidget {
  final String? titleBar;
  const Myapp({super.key, this.titleBar});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(titleBar!, style: TextStyle(color: Colors.white)),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        drawer: Drawer(backgroundColor: Colors.white),
        body: Center(
          child: Container(
            width: 240,
            height: 200,
            color: Colors.blue,
            child: Text(
              "Novos Filmes",
              style: TextStyle(
                fontSize: 25,
                color: const Color.fromARGB(255, 255, 255, 255),
                letterSpacing: 3,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
*/