import 'package:flutter/material.dart';
import 'package:regiao2/core/app_colors.dart';
import 'package:regiao2/pages/home/index.dart';

class Fitas extends StatefulWidget {
  const Fitas({ Key? key }) : super(key: key);

  @override
  _FitasState createState() => _FitasState();
}

class _FitasState extends State<Fitas> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( 
        title: Center(child: Text("Danças Típicas")),
        backgroundColor: AppColors.primaria01
        
      ),

      body: ListView(
        children: [

          _dancaFaixa(HomePage()),

          Divider(
            height: 10,
            thickness: 0.2,
            color: Colors.white,
          ),

          _buildDanca("PAU-DE-FITAS")

        ]
      ),
    );
  }

  Widget _dancaFaixa(rota){
      return Container(
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
                        builder: (context) => rota));
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
      );
    }

  Widget _buildDanca(estado){
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
}