import 'package:flutter/material.dart';
import 'package:regiao2/core/app_colors.dart';
import 'package:regiao2/pages/home/index.dart';

class Danca extends StatefulWidget {
  const Danca({Key? key}) : super(key: key);

  @override
  _DancaState createState() => _DancaState();
}

class _DancaState extends State<Danca> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar( 
        title: Center(child: Text("Danças Típicas")),
        backgroundColor: AppColors.primaria01
        
      ),

      body: ListView(
        children: [
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
                    IconButton(
                      onPressed: () {
                        Navigator.of(context).pushReplacement(MaterialPageRoute(
                            builder: (context) => HomePage()));
                      },
                      icon: Icon(Icons.arrow_back),
                      iconSize: 30,
                      color: Colors.white,
                    ),
                    Text(
                      "Dança",
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
        ],
      ),
    );
  }
}
