import 'package:flutter/material.dart';
import 'package:regiao2/core/app_colors.dart';
import 'package:regiao2/pages/home/index.dart';

class Balainha extends StatefulWidget {
  const Balainha({Key? key}) : super(key: key);

  @override
  _BalainhaState createState() => _BalainhaState();
}

class _BalainhaState extends State<Balainha> {
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
        title: Text('Danças Típicas'),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
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
          _dancaFaixa(HomePage()),
          Divider(
            height: 10,
            thickness: 0.2,
            color: Colors.white,
          ),
          _regNome('Balainha'),
          Column(children: [
            Container(
              margin: EdgeInsets.all(10),
              color: Colors.green,
              child: ExpansionPanelList(
                animationDuration: Duration(milliseconds: 2000),
                children: [
                  ExpansionPanel(
                    headerBuilder: (context, isExpanded) {
                      return ListTile(
                        leading: Icon(Icons.accessibility_new_rounded),
                        title: Text(
                          'Conheça a dança',
                          style: TextStyle(color: Colors.black),
                        ),
                      );
                    },
                    body: ListTile(
                      title: Text(
                          'https://www.youtube.com/watch?v=mAp6UKuRuUk\n' +
                              ' https://www.youtube.com/watch?v=9290aNaOhUI\n' +
                              'https://www.youtube.com/watch?v=VXjFxKWIotE',
                          style: TextStyle(color: Colors.black)),
                    ),
                    isExpanded: _expanded,
                    canTapOnHeader: true,
                  ),
                ],
                dividerColor: Colors.grey,
                expansionCallback: (panelIndex, isExpanded) {
                  _expanded = !_expanded;
                  setState(() {});
                },
              ),
            ),
          ]),
          Column(children: [
            Container(
              margin: EdgeInsets.all(10),
              color: Colors.green,
              child: ExpansionPanelList(
                animationDuration: Duration(milliseconds: 2000),
                children: [
                  ExpansionPanel(
                    headerBuilder: (context, isExpanded) {
                      return ListTile(
                        leading: Icon(Icons.history_edu_rounded),
                        title: Text(
                          'História',
                          style: TextStyle(color: Colors.black),
                        ),
                      );
                    },
                    body: ListTile(
                      title: Text(
                          ' Conhecida também como Arcos Floridos ou Jardineira, a Balainha é desenvolvida com os pares de dançantes (sempre mulheres) sustentando um arco florido.A Balainha é uma dança de origem europeia, trazida para o Brasil pelos portugueses.O objetivo dessa tradição, muito generalizada pela Europa, era atrair o frutificanteespírito da vegetação recém desperto pela primavera.Tais apresentações não constituíam simples dramas simbólicos ou alegóricos, eram conspirações destinadas a fazer com que a floresta verdejasse, a relva dos pastoscrescesse, o milho fosse abundante e as flores despontassem.  ',
                          style: TextStyle(color: Colors.black)),
                    ),
                    isExpanded: _expanded1,
                    canTapOnHeader: true,
                  ),
                ],
                dividerColor: Colors.grey,
                expansionCallback: (panelIndex, isExpanded) {
                  _expanded1 = !_expanded1;
                  setState(() {});
                },
              ),
            ),
          ]),
          Column(children: [
            Container(
              margin: EdgeInsets.all(10),
              color: Colors.green,
              child: ExpansionPanelList(
                animationDuration: Duration(milliseconds: 2000),
                children: [
                  ExpansionPanel(
                    headerBuilder: (context, isExpanded) {
                      return ListTile(
                        leading: Icon(Icons.crop_original_rounded),
                        title: Text(
                          'Vestimentas',
                          style: TextStyle(color: Colors.black),
                        ),
                      );
                    },
                    body: ListTile(
                      title: Text(
                          'Semelhante às vestimentas das danças provenientes do país ibérico, as dançarinas da balainha apresentam-se geralmente com vestidos longos e rendados, bata estampada; tudo isso tendo como as cores tradicionais como referência cultural. Também podem assemelhar-se às camponesas. ',
                          style: TextStyle(color: Colors.black)),
                    ),
                    isExpanded: _expanded2,
                    canTapOnHeader: true,
                  ),
                ],
                dividerColor: Colors.grey,
                expansionCallback: (panelIndex, isExpanded) {
                  _expanded2 = !_expanded2;
                  setState(() {});
                },
              ),
            ),
          ]),
          Column(children: [
            Container(
              margin: EdgeInsets.all(10),
              color: Colors.green,
              child: ExpansionPanelList(
                animationDuration: Duration(milliseconds: 2000),
                children: [
                  ExpansionPanel(
                    headerBuilder: (context, isExpanded) {
                      return ListTile(
                        leading: Icon(Icons.audiotrack_rounded),
                        title: Text(
                          'Músicas',
                          style: TextStyle(color: Colors.black),
                        ),
                      );
                    },
                    body: ListTile(
                      title: Text('https://www.youtube.com/watch?v=wXMjUgaxB4U',
                          style: TextStyle(color: Colors.black)),
                    ),
                    isExpanded: _expanded3,
                    canTapOnHeader: true,
                  ),
                ],
                dividerColor: Colors.grey,
                expansionCallback: (panelIndex, isExpanded) {
                  _expanded3 = !_expanded3;
                  setState(() {});
                },
              ),
            ),
          ]),
          Column(children: [
            Container(
              margin: EdgeInsets.all(10),
              color: Colors.green,
              child: ExpansionPanelList(
                animationDuration: Duration(milliseconds: 2000),
                children: [
                  ExpansionPanel(
                    headerBuilder: (context, isExpanded) {
                      return ListTile(
                        leading: Icon(Icons.play_arrow_rounded),
                        title: Text(
                          'Aprenda a dançar',
                          style: TextStyle(color: Colors.black),
                        ),
                      );
                    },
                    body: ListTile(
                      title: Text(
                          ' https://www.youtube.com/watch?v=hBejIvc7SLo',
                          style: TextStyle(color: Colors.black)),
                    ),
                    isExpanded: _expanded4,
                    canTapOnHeader: true,
                  ),
                ],
                dividerColor: Colors.grey,
                expansionCallback: (panelIndex, isExpanded) {
                  _expanded4 = !_expanded4;
                  setState(() {});
                },
              ),
            ),
          ]),
          // Column(children: [
          //   new Image.asset(
          //     'images/boi.jpg',
          //     width: 370.0,
          //     height: 180.0,
          //     fit: BoxFit.cover,
          //   )
          // ]),
        ],
      ),
    );
  }

  Widget _dancaFaixa(rota) {
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
                  Navigator.of(context).pushReplacement(
                      MaterialPageRoute(builder: (context) => rota));
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

  Widget _buildDanca(estado) {
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
              Text(
                estado,
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

  Widget _regNome(regiao) {
    return Center(
      child: Container(
        padding: EdgeInsets.only(top: 5),
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

  Widget _buildConteudo(titulo, texto, ex) {
    return Column(children: [
      Container(
        margin: EdgeInsets.all(10),
        color: Colors.green,
        child: ExpansionPanelList(
          animationDuration: Duration(milliseconds: 2000),
          children: [
            ExpansionPanel(
              headerBuilder: (context, isEx) {
                return ListTile(
                  title: Text(
                    titulo,
                    style: TextStyle(color: Colors.black),
                  ),
                );
              },
              body: ListTile(
                title: Text(texto, style: TextStyle(color: Colors.black)),
              ),
              isExpanded: ex,
              canTapOnHeader: true,
            ),
          ],
          dividerColor: Colors.grey,
          expansionCallback: (panelIndex, isExpanded) {
            _expanded = !ex;
            setState(() {});
          },
        ),
      ),
    ]);
  }
}
