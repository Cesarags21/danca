import 'dart:html';
import 'package:flutter/material.dart';
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
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.more_vert)),
        ],

        backgroundColor: Colors.green[700],
        
      ),

      body: ListView(
        children: [
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
          Center(
            child: Container(
              padding: EdgeInsets.only(top: 5),
              child: Text("SUL",
                  style: TextStyle(
                    color: Colors.green,
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),
              ),
            ),
          ),

          //container da imagem
          //Container(
            //child: AppImages.assetsLogo(200,200),
          //),

          //paraná
          Center(
            child: Container(
              padding: EdgeInsets.all(15),
              child: Column(
                children: [
                  Padding(padding: EdgeInsets.all(8)),
                  Text("Paraná",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                  
                TextButton(onPressed: (){
                  Navigator.of(context).pushReplacement(
                                MaterialPageRoute(
                                    builder: (context) => Danca()));
                }, child: Text("FANDANGO",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                  ),
                )),


                TextButton(onPressed: (){}, child: Text("FANDANGO",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                  ),
                )),

                TextButton(onPressed: (){}, child: Text("FANDANGO",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                  ),
                ))
                
              ],
              ),
                  
            ),
          ),

          //sc
          Center(
            child: Container(
              padding: EdgeInsets.all(15),
              child: Column(
                children: [
                  Padding(padding: EdgeInsets.all(30)),
                  Text("Santa Catarina",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                  TextButton(onPressed: (){}, child: Text("FANDANGO",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                  ),
                )),
                TextButton(onPressed: (){}, child: Text("FANDANGO",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                  ),
                )),
                TextButton(onPressed: (){}, child: Text("FANDANGO",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                  ),
                )),
                
              ],
              ),
                  
            ),
          ),

          //rs
          Center(
            child: Container(
              padding: EdgeInsets.all(15),
              child: Column(
                children: [
                  Padding(padding: EdgeInsets.all(30)),
                  Text("Rio Grande do Sul",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                  TextButton(onPressed: (){}, child: Text("FANDANGO",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                  ),
                )),
                TextButton(onPressed: (){}, child: Text("FANDANGO",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                  ),
                )),
                TextButton(onPressed: (){}, child: Text("FANDANGO",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                  ),
                )),
                
              ],
              ),
                  
            ),
          ),

        ],
      ),
    );
  }
}