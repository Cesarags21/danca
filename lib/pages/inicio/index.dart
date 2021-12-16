import 'package:flutter/material.dart';
import 'package:regiao2/core/app_colors.dart';
import 'package:regiao2/pages/home/centroOeste.dart';
import 'package:regiao2/pages/home/index.dart';
import 'package:regiao2/pages/home/nordeste.dart';
import 'package:regiao2/pages/home/norte.dart';
import 'package:regiao2/pages/home/sudeste.dart';

class Inicio extends StatefulWidget {
  const Inicio({Key? key}) : super(key: key);

  @override
  _InicioState createState() => _InicioState();
}

class _InicioState extends State<Inicio> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          //cabeçalho Danças Típicas e Azul
          Container(
            height: 50,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(color: Colors.blue[900], boxShadow: [
              BoxShadow(
                color: Colors.blue,
              ),
            ]),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Padding(padding: EdgeInsets.all(8)),
                    Text(
                      "Início",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
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
              child: Text(
                "Escolha uma região e comece a dançar!",
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

          _regBotao("Centro-Oeste", CentroOeste()),

          _regBotao("    Nordeste   ", Nordeste()),

          _regBotao("       Norte       ", Norte()),

          _regBotao("    Sudeste     ", Sudeste()),

          _regBotao("         Sul         ", HomePage()),
        ],
      ),
    );
  }

  Widget _regBotao(regiao, rota) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          SizedBox(
            height: 20,
            width: 200,
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Stack(
              children: <Widget>[
                Positioned.fill(
                  child: Container(
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        colors: <Color>[
                          Color(0xFF006400),
                          Color(0xFF008000),
                          Color(0xFF32CD32),
                        ],
                      ),
                    ),
                  ),
                ),
                TextButton(
                  style: TextButton.styleFrom(
                    padding: const EdgeInsets.all(16.0),
                    primary: Colors.white,
                    //fontweight muda a grosura da letra

                    textStyle: const TextStyle(
                        fontSize: 20, fontFamily: 'Montserrat-Bold'),
                  ),
                  onPressed: () {
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(builder: (context) => rota),
                    );
                  },
                  child: Text(regiao),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
