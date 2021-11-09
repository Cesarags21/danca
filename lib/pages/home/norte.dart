import 'package:flutter/material.dart';
import 'package:regiao2/core/app_colors.dart';
import 'package:regiao2/pages/danca/index.dart';
import 'package:regiao2/pages/danca/norte/camaleao.dart';
import 'package:regiao2/pages/danca/norte/carimbo.dart';
import 'package:regiao2/pages/danca/norte/desfeiteira.dart';
import 'package:regiao2/pages/danca/norte/lundu.dart';
import 'package:regiao2/pages/danca/norte/macarico.dart';
import 'package:regiao2/pages/inicio/index.dart';

class NortePage extends StatefulWidget {
  const NortePage({ Key? key }) : super(key: key);

  @override
  _NortePageState createState() => _NortePageState();
}

class _NortePageState extends State<NortePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar( 
      //   title: Center(child: Text("Danças Típicas")),
      //   backgroundColor: AppColors.primaria01,
        
      // ),
      appBar: AppBar(
        title: Text('Danças Típicas'),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              /*begin: Alignment.topRight,
              end: Alignment.bottomLeft,*/
              stops: [
                0.4,
                0.8,
              ],
              colors: <Color>[Color(0xFF008000), Color(0xFFFFD700)],
            ),
          ),
        ),
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

          _regNome("Norte"),

          _dancaBotao("CAMALEÃO", Camaleao()),
          _dancaBotao("CARIMBÓ", Carimbo()),
          _dancaBotao("DANÇA DO MAÇARICO", Macarico()),
          _dancaBotao("DESFEITEIRA", Desfeiteira()),
          _dancaBotao("LUNDU MARAJOARA", Lundu()),

        ],
      ),

    );
  }

  Widget _regNome(regiao){
    return Center(
      child: Container(
        padding: EdgeInsets.all(20),
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
              color: AppColors.corFonte01,
            ),
          ),
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(AppColors.primaria02),
            shape: MaterialStateProperty.all(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25),
              )
            )
          ),
        ),
      ),
                    
    );
  }

}