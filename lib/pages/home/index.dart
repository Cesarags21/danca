import 'package:flutter/material.dart';
import 'package:regiao2/core/app_colors.dart';
import 'package:regiao2/pages/danca/index.dart';
import 'package:regiao2/pages/danca/sul/balainha.dart';
import 'package:regiao2/pages/danca/sul/fandango.dart';
import 'package:regiao2/pages/danca/sul/fitas.dart';
import 'package:regiao2/pages/danca/sul/pezinho.dart';
import 'package:regiao2/pages/danca/sul/vilao.dart';
import 'package:regiao2/pages/inicio/index.dart';

//Página da Região
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
            decoration: BoxDecoration(color: AppColors.primaria02, boxShadow: [
              BoxShadow(
                color: Colors.blue,
              ),
            ]),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.of(context).pushReplacement(
                            MaterialPageRoute(builder: (context) => Inicio()));
                      },
                      icon: Icon(Icons.arrow_back),
                      iconSize: 30,
                      color: Colors.white,
                    ),
                    Text(
                      "Região",
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

          _regNome("Sul"),

          _dancaBotao("Balainha", Balainha(), 1),
          _dancaBotao("Fandango ", Fandango(), 2),
          _dancaBotao("Pau de fitas", Fitas(), 3),
          _dancaBotao("Pezinho", Pezinho(), 4),
          _dancaBotao("Dança do Vilão", Vilao(), 5),
        ],
      ),
    );
  }

  Widget _regNome(regiao) {
    return Center(
      child: Container(
        padding: EdgeInsets.all(20),
        child: Text(
          regiao,
          style: TextStyle(
            color: AppColors.primaria06,
            fontSize: 40,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  Widget _dancaBotao(danca, rota, int idx) {
    return Padding(
      padding: const EdgeInsets.only(left: 5, right: 5, top: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          ClipRRect(
            child: Stack(
              children: <Widget>[
                Positioned.fill(
                  child: Container(
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        colors: <Color>[
                          Color(0xFFDC143C),
                        ],
                      ),
                    ),
                  ),
                ),
                TextButton(
                  style: TextButton.styleFrom(
                    // backgroundColor: Colors.green.shade900,
                    primary: Colors.white,
                    //fontweight muda a grosura da letra
                    //aaaaaaaaaaaaaaaaaaaaaaa
                    textStyle: const TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  onPressed: () {
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(builder: (context) => rota),
                    );
                  },
                  child: ListTile(
                    leading: CircleAvatar(
                      // child: Text('$idx', style: TextStyle(color: AppColors.corFonte01),),
                      backgroundColor: AppColors.primaria06,
                      radius: 15,
                    ),
                    title: Text(
                      danca,
                      style: TextStyle(fontSize: 20, color: Colors.black),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Divider(
            height: 10,
            thickness: 0.2,
            color: Colors.black,
          ),
        ],
      ),
    );
  }
}
