import 'dart:html';
import 'package:flutter/material.dart';
import 'package:regiao2/core/app_colors.dart';
import 'package:regiao2/pages/danca/index.dart';
import 'package:regiao2/pages/inicio/index.dart';

//Página da Região
class HomePage extends StatefulWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar( 
        title: Center(child: Text("Danças Típicas")),
        backgroundColor: Colors.green[700],
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

          //Container da imagem: Container(child: AssetImage('assets/images/sul.png'),),
          
         //regiao nome
          _regNome("Sul"),

          //container da imagem
          //Container(
            //child: AppImages.assetsLogo(200,200),
          //),

          //paraná
          _buildEstado("Paraná"),
          _danca("FANDANGOS", Danca()),
          _danca("PAU-DE-FITAS", Danca()),

          //sc
          _buildEstado("Santa Catarina"),
          _danca("BALAINHA", Danca()),
          _danca("DANÇA DO VILÃO", Danca()),
          _danca("BOI DE MAMÃO", Danca()),

          //rs
          _buildEstado("Rio Grande do Sul"),
          _danca("MILONGA", Danca()),
          _danca("PEZINHO", Danca()),
          _danca("CHULA", Danca()),

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
                    color: Colors.green,
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),
              ),
            ),
    );
  }

  Widget _buildEstado(estado){
    return Container(
      child: Center(
        child: Container(
              color: AppColors.primaria03,
              width: MediaQuery.of(context).size.width,
              height: 63,
              padding: EdgeInsets.all(15),
              child: Column(
                children: [
                  Padding(padding: EdgeInsets.all(5)),
                  Text(estado,
                  style: TextStyle(
                    color: AppColors.primaria02,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                
              ],
              ),
                  
            ),
      ),
    );
  }

  Widget _danca(danca, rota){
    return Container(
      padding: EdgeInsets.all(5),
      child: Center(
        child: TextButton(onPressed: (){
          Navigator.of(context).pushReplacement(
            MaterialPageRoute(
            builder: (context) => rota));
        }, 
          child: Text(danca,
            style: TextStyle(              
            color: Colors.black,
            fontSize: 18,
          ),
          )
        ),
        
      ),
    );
  }

}