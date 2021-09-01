import 'package:flutter/material.dart';
import 'package:regiao2/pages/home/index.dart';
import 'package:regiao2/pages/inicio/index.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Região',
      theme: ThemeData(
        
        primarySwatch: Colors.blue,
      ),
      home: Inicio(),
    );
  }
}