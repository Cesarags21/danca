import 'package:flutter/material.dart';
import 'package:regiao2/pages/home/centroOeste.dart';
import 'package:regiao2/pages/home/index.dart';
import 'package:regiao2/pages/home/nordeste.dart';
import 'package:regiao2/pages/home/norte.dart';
import 'package:regiao2/pages/home/sudeste.dart';

class Inicio extends StatefulWidget {
  const Inicio({ Key? key }) : super(key: key);

  @override
  _InicioState createState() => _InicioState();
}

class _InicioState extends State<Inicio> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( 
        title: Center(child: Text("Danças Típicas")),
        backgroundColor: Colors.green[700],
        
      ),
      body: ListView(
        children: [
          //cabeçalho Danças Típicas e Azul
          Container(

                  height: 50,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Colors.blue[900],
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
                        Padding(padding: EdgeInsets.all(8)),
                        Text("Início", 
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

          //Texto
          Center(
            child: Container(
              padding: EdgeInsets.all(5),
              child: Text("Escolha uma região e comece a dançar!",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
              ),
            ),
          ),

          //mapa
           Divider(
                height: 10,
                thickness: 0.2,
                color: Colors.white,
          ),

          _regBotao("CENTRO-OESTE", CentroOeste()),
          _regBotao("NORDESTE", Nordeste()),
          _regBotao("NORTE", NortePage()),
          _regBotao("SUDESTE", Sudeste()),
          _regBotao("SUL", HomePage()),

        ],
      ),
    );
  }

  Widget _regBotao(regiao, rota){
    return TextButton(
      onPressed: (){
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(
            builder: (context) => rota
          )
        );
      }, 
      child: Text(
        regiao,
        style: TextStyle(
          color: Colors.black,
          fontSize: 25,
        ),
      ), 
    
    );
  }

}