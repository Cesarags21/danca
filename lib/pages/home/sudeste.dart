import 'package:flutter/material.dart';
import 'package:regiao2/core/app_colors.dart';
import 'package:regiao2/pages/danca/index.dart';
import 'package:regiao2/pages/danca/sudeste/jongo.dart';
import 'package:regiao2/pages/danca/sudeste/mineiro.dart';
import 'package:regiao2/pages/danca/sudeste/quadrilha.dart';
import 'package:regiao2/pages/danca/sudeste/samba.dart';
import 'package:regiao2/pages/danca/sudeste/tamandua.dart';
import 'package:regiao2/pages/inicio/index.dart';

class Sudeste extends StatefulWidget {
  const Sudeste({ Key? key }) : super(key: key);

  @override
  _SudesteState createState() => _SudesteState();
}

class _SudesteState extends State<Sudeste> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( 
        title: Center(child: Text("Danças Típicas")),
        backgroundColor: AppColors.primaria01,
        
      ),

      body: ListView(
        children: [
          //container azul
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

          Divider(
            height: 10,
            thickness: 0.2,
            color: Colors.white,
          ),

          _regNome("Sudeste"),

          _dancaBotao("SAMBA", Samba()),
          _dancaBotao("QUADRILHA", Quadrilha()),
          _dancaBotao("DANÇA DO TAMANDUÁ", Tamandua()),
          _dancaBotao("JONGO", Jongo()),
          _dancaBotao("MINEIRO-PAU", Mineiro()),

        ],
      ),

    );
  }

  Widget _regNome(regiao){
    return Center(
      child: Container(
        padding: EdgeInsets.only(top: 5),
        child: Text(regiao,
            style: TextStyle(
              color: AppColors.primaria01,
              fontSize: 40,
              fontWeight: FontWeight.bold,
            ),
        ),
      ),
    );
  }

  Widget _dancaBotao(danca, rota){
    return Padding(
      padding: const EdgeInsets.only(top: 15),
      child: Container(
        // width: 200,
        height: 45,
        child: TextButton(
          onPressed: () {
            Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                    builder: (context) => rota));
          },
          child: Text(
            danca,
            style: TextStyle(
              fontSize: 23,
              fontWeight: FontWeight.w600,
              color: AppColors.primaria01,
            ),
          ),
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(AppColors.primaria03),
            // shape: MaterialStateProperty.all(
            //   RoundedRectangleBorder(
            //     borderRadius: BorderRadius.circular(25),
            //   )
            // )
          ),
        ),
      ),
                    
    );
  }

}