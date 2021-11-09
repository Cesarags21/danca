import 'package:flutter/material.dart';
import 'package:regiao2/core/app_colors.dart';
import 'package:regiao2/pages/danca/centro%20Oeste/boi.dart';
import 'package:regiao2/pages/danca/centro%20Oeste/catira.dart';
import 'package:regiao2/pages/danca/centro%20Oeste/chupim.dart';
import 'package:regiao2/pages/danca/centro%20Oeste/goncalo.dart';
import 'package:regiao2/pages/danca/centro%20Oeste/siriri.dart';
import 'package:regiao2/pages/danca/index.dart';
import 'package:regiao2/pages/inicio/index.dart';

class CentroOeste extends StatefulWidget {
  const CentroOeste({Key? key}) : super(key: key);

  @override
  _CentroOesteState createState() => _CentroOesteState();
}

class _CentroOesteState extends State<CentroOeste> {
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

          _regNome("Centro Oeste"),

          _dancaBotao("Boi à Serra", Boi(), 1),
          _dancaBotao("Catira", Catira(), 2),
          _dancaBotao("Chupim", Chupim(), 3),
          _dancaBotao("São Gonçalo", Goncalo(), 4),
          _dancaBotao("Siriri", Siriri(), 5),
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
            color: AppColors.primaria01,
            fontSize: 40,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  Widget _dancaBotao(danca, rota, int idx) {
    return Padding(
      padding: const EdgeInsets.only(right: 15),
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
                          Color(0xFF111111),
                        ],
                      ),
                    ),
                  ),
                ),
                TextButton(
                  style: TextButton.styleFrom(
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
                      child: Text('$idx'),
                    ),
                    title: Text(danca),
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

      /*Container(
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
      ),*/
    );
  }
}
