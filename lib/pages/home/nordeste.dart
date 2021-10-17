import 'package:flutter/material.dart';
import 'package:regiao2/core/app_colors.dart';
import 'package:regiao2/pages/inicio/index.dart';

class Nordeste extends StatefulWidget {
  const Nordeste({ Key? key }) : super(key: key);

  @override
  _NordesteState createState() => _NordesteState();
}

class _NordesteState extends State<Nordeste> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( 
        title: Center(child: Text("Danças Típicas")),
        backgroundColor: Colors.green[700],
      ),

      body: ListView(children: [
        Container(

                  height: 50,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: AppColors.primaria02,
                    boxShadow: [
                      BoxShadow(
                      color: Colors.blue,
                    ),
                    ]
                  ),

                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        IconButton(onPressed: () {
                          Navigator.of(context).pushReplacement(
                                MaterialPageRoute(
                                    builder: (context) => Inicio()));
                        }, 
                          icon: Icon(Icons.arrow_back),
                          iconSize: 30,
                          color: Colors.white,
                        ),
                        Text("Região", 
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                      ],
                    ),
                    
                  ],
                ),

              ),
      ],),

    );
  }
}