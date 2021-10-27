import 'package:flutter/material.dart';
import 'package:regiao2/core/app_colors.dart';
import 'package:regiao2/pages/home/centroOeste.dart';


class Boi extends StatefulWidget {
  const Boi({ Key? key }) : super(key: key);

  @override
  _BoiState createState() => _BoiState();
}

class _BoiState extends State<Boi> {
  @override
  
  bool _expanded = false;
  bool _expanded1 = false;
  bool _expanded2 = false;
  bool _expanded3 = false;
  bool _expanded4 = false;
  var _test = "Full Screen";
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( 
        title: Center(child: Text("Danças Típicas")),
        backgroundColor: AppColors.primaria01
        
      ),

      
      body:ListView(
        children: [

          _dancaFaixa(CentroOeste()),

          Divider(
            height: 10,
            thickness: 0.2,
            color: Colors.white,
          ),

           Padding(
                  padding: const EdgeInsets.only(
                      top: 30, right: 10, left: 30, bottom: 15),
                  child: Text('Boi à Serra:',
                      style: TextStyle(
                        fontSize: 30, 
                      )),
                ),

            Column(
              children: [
               Container(
                margin: EdgeInsets.all(10),
                color: Colors.green,
                child: ExpansionPanelList(
                animationDuration: Duration(milliseconds: 2000),
                children: [
                  ExpansionPanel(
                    headerBuilder: (context, isExpanded) {
                      return ListTile(
                        
                        title: Text('Conheça a dança', style: TextStyle(color: Colors.black),),
                      );
                      
                    },
                    body:ListTile(
                      title: Text('aaaaaaaaaaaaa',style: TextStyle(color: Colors.black)),
                    ),
                  isExpanded: _expanded,
                  canTapOnHeader: true,
                  ),
                ],
                dividerColor: Colors.grey,
                expansionCallback: (panelIndex, isExpanded) {
                _expanded = !_expanded;
                  setState(() {
 
                  });
                },
 
                ),
              ),
              ]
            ),
            Column(
              children: [
               Container(
                margin: EdgeInsets.all(10),
                color: Colors.green,
                child: ExpansionPanelList(
                animationDuration: Duration(milliseconds: 2000),
                children: [
                  ExpansionPanel(
                    headerBuilder: (context, isExpanded) {
                      return ListTile(
                        title: Text('História', style: TextStyle(color: Colors.black),),
                      );
                    },
                    body:ListTile(
                      title: Text('bbbbbbbbbbbbbbb',style: TextStyle(color: Colors.black)),
                    ),
                  isExpanded: _expanded1,
                  canTapOnHeader: true,
                  ),
                ],
                dividerColor: Colors.grey,
                expansionCallback: (panelIndex, isExpanded) {
                _expanded1 = !_expanded1;
                  setState(() {
 
                  });
                },
 
                ),
              ),
              ]
            ),
            Column(
              children: [
               Container(
                margin: EdgeInsets.all(10),
                color: Colors.green,
                child: ExpansionPanelList(
                animationDuration: Duration(milliseconds: 2000),
                children: [
                  ExpansionPanel(
                    headerBuilder: (context, isExpanded) {
                      return ListTile(
                        title: Text('Vestimentas', style: TextStyle(color: Colors.black),),
                      );
                    },
                    body:ListTile(
                      title: Text('ccccccccccccccccccc',style: TextStyle(color: Colors.black)),
                    ),
                  isExpanded: _expanded2,
                  canTapOnHeader: true,
                  ),
                ],
                dividerColor: Colors.grey,
                expansionCallback: (panelIndex, isExpanded) {
                _expanded2 = !_expanded2;
                  setState(() {
 
                  });
                },
 //hhhhhhhhhhhhhhhhhhhhhhhhh
                ),
              ),
              ]
            ),
            Column(
              children: [
               Container(
                margin: EdgeInsets.all(10),
                color: Colors.green,
                child: ExpansionPanelList(
                animationDuration: Duration(milliseconds: 2000),
                children: [
                  ExpansionPanel(
                    headerBuilder: (context, isExpanded) {
                      return ListTile(
                        title: Text('Lista de músicas', style: TextStyle(color: Colors.black),),
                      );
                    },
                    body:ListTile(
                      title: Text('ddddddddddddddddddd',style: TextStyle(color: Colors.black)),
                    ),
                  isExpanded: _expanded3,
                  canTapOnHeader: true,
                  ),
                ],
                dividerColor: Colors.grey,
                expansionCallback: (panelIndex, isExpanded) {
                _expanded3 = !_expanded3;
                  setState(() {
 
                  });
                },
 
                ),
              ),
              ]
            ),
            Column(
              children: [
               Container(
                margin: EdgeInsets.all(10),
                color: Colors.green,
                child: ExpansionPanelList(
                animationDuration: Duration(milliseconds: 2000),
                children: [
                  ExpansionPanel(
                    headerBuilder: (context, isExpanded) {
                      return ListTile(
                        
                        title: Text('Aprenda dançar', style: TextStyle(color: Colors.black),),
                      );
                    },
                    body:ListTile(
                      title: Text('eeeeeeeeeee',style: TextStyle(color: Colors.black)),
                    ),
                  isExpanded: _expanded4,
                  canTapOnHeader: true,
                  ),
                ],
                dividerColor: Colors.grey,
                expansionCallback: (panelIndex, isExpanded) {
                _expanded4 = !_expanded4;
                  setState(() {
 
                  });
                },
 
                ),
              ),
              ]
            ),
            Row(
                  //Soluçãooooooooooooooooooooooooooooo
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      child: Stack(
                        children: [
                          Center(
                            child: Padding(
                              padding: EdgeInsets.all(20),
                              child: Container(
                                height: 50,
                                alignment: Alignment.bottomRight,
                                child: FloatingActionButton(
                                  child: Icon(
                                    Icons.favorite_border_sharp,
                                    color: Colors.white70,
                                  ),
                                  backgroundColor: Colors.red,
                                  onPressed: () {},
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                
      
     ],
      ),
    
    );
  }


         // _dancaFaixa(CentroOeste()),

         /* Divider(
            height: 10,
            thickness: 0.2,
            color: Colors.white,
          ),*/
          

          /* Container(
            child: Column(
              children: [
                //AppImages.assetsLogo(240, 50),

                Padding(
                  padding: const EdgeInsets.only(
                      top: 30, right: 10, left: 10, bottom: 15),
                  child: Text('Boi à Serra:',
                      style: TextStyle(
                        fontSize: 30,
                      )),
                ),
                /*Row(
                  children: [
                     Padding(
                      padding: EdgeInsets.all(8),
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        child: RaisedButton(
                            onPressed: () {},
                            child: RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: "Click ",
                                  ),
                                  WidgetSpan(
                                    child: Icon(Icons.accessibility_new_rounded,
                                        size: 14),
                                  ),
                                  TextSpan(
                                    text: " to add",
                                  ),
                                ],
                              ),
                            )),
                      ),
                    ),
                  ],
                ),*/

                
                Padding(
                  padding: EdgeInsets.only(top: 10, bottom: 10),
                  child: Container(
                    height: 50,
                    width: 200,
                    color: Colors.blueGrey,
                    child: TextButton(
                      onPressed: (){
                        /*Navigator.of(context).pushReplacement(
                          MaterialPageRoute(
                            builder: (context) => rota
                          )
                        );*/
                      },
                       
                      child: RichText(
                        text: TextSpan(
                          children: [
                            WidgetSpan(
                              child: Icon(Icons.accessibility_new_rounded,
                                  size: 30, color: Colors.black,),
                            ),
                            TextSpan(
                              text: " Conheça a dança",
                              style: TextStyle(
                                fontSize: 18,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  
                
                    
                    
                    
                    /*RaisedButton(
                      onPressed: () {},
                      child: RichText(
                        text: TextSpan(
                          children: [
                            WidgetSpan(
                              child: Icon(Icons.accessibility_new_rounded,
                                  size: 30),
                            ),
                            TextSpan(
                              text: " Conheça a dança",
                              style: TextStyle(
                                fontSize: 18,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),*/
                  ),
                ),

                Padding(
                  padding: EdgeInsets.fromLTRB(150, 10, 150, 15),
                  child: Container(
                    height: 50,
                    width: 200,
                    child: RaisedButton(
                      onPressed: () {},
                      child: RichText(
                        text: TextSpan(
                          children: [
                            WidgetSpan(
                              child: Icon(Icons.history_edu_rounded, size: 30),
                            ),
                            TextSpan(
                              text: " História",
                              style: TextStyle(
                                fontSize: 18,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),

                Padding(
                  padding: EdgeInsets.fromLTRB(150, 10, 150, 15),
                  child: Container(
                    height: 50,
                    width: 200,
                    child: RaisedButton(
                      onPressed: () {},
                      child: RichText(
                        text: TextSpan(
                          children: [
                            WidgetSpan(
                              child:
                                  Icon(Icons.crop_original_rounded, size: 30),
                            ),
                            TextSpan(
                              text: " Vestimentas",
                              style: TextStyle(
                                fontSize: 18,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(150, 10, 150, 15),
                  child: Container(
                    height: 50,
                    width: 200,
                    child: RaisedButton(
                      onPressed: () {},
                      child: RichText(
                        text: TextSpan(
                          children: [
                            WidgetSpan(
                              child: Icon(Icons.audiotrack_rounded, size: 30),
                            ),
                            TextSpan(
                              text: " Lista de músicas",
                              style: TextStyle(
                                fontSize: 18,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),

                Padding(
                  padding: EdgeInsets.fromLTRB(150, 10, 150, 15),
                  child: Container(
                    height: 50,
                    width: 200,
                    child: RaisedButton(
                      onPressed: () {},
                      child: RichText(
                        text: TextSpan(
                          children: [
                            WidgetSpan(
                              child:
                                  Icon(Icons.local_movies_outlined, size: 30),
                            ),
                            TextSpan(
                              text: " Aprenda dançar",
                              style: TextStyle(
                                fontSize: 18,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Row(
                  //Soluçãooooooooooooooooooooooooooooo
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      child: Stack(
                        children: [
                          Center(
                            child: Padding(
                              padding: EdgeInsets.all(20),
                              child: Container(
                                height: 50,
                                alignment: Alignment.bottomRight,
                                child: FloatingActionButton(
                                  child: Icon(
                                    Icons.favorite_border_sharp,
                                    color: Colors.white70,
                                  ),
                                  backgroundColor: Colors.red,
                                  onPressed: () {},
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }*/
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