import 'package:flutter/material.dart';
import 'package:regiao2/core/app_colors.dart';
import 'package:regiao2/pages/home/index.dart';
import 'package:url_launcher/url_launcher.dart';

class Pezinho extends StatefulWidget {
  const Pezinho({Key? key}) : super(key: key);

  @override
  _PezinhoState createState() => _PezinhoState();
}

class _PezinhoState extends State<Pezinho> {
  Future<void> _launchLink(String url) async {
    launch(url, forceSafariVC: false, forceWebView: false);
  }

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
          _regNome('Pezinho'),
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
                          'Pezinho é uma das danças gaúchas mais singelas e simples, que encantam a quem vê. Popular na região dos Açores, adaptou-se no Rio Grande do Sul de modo a ser realizada da seguinte forma: primeiro há uma marcação de pés. Depois, duplas de dançarinos cruzam os braços e giram em redor de si mesmos. É a única dança gaúcha em que todos os dançarinos realmente dançam, não ficando limitados a executar a coreografia proposta.',
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
                          ' A dança do Pézinho, juntamente com sua melodia que remete a cantigas infantis tornou esta dança muito popular em Portugal e na região de Açores, tal popularidade fora encontrada também nos estados brasileiros de Santa Catarina e principalmente do Rio Grande do Sul. Os gaúchos amoldaram a melodia do pezinho para o estilo musical  típico de suas danças, principalmente pela inclusão da gaita em sua execução, assim a melodia adquiriu mais vivacidade e alegria. Sabe-se ainda que o Pezinho é a única dança tradicional gaúcha onde os todos os dançarinos obrigatoriamente cantam sua letra.  ',
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
                    // body: ListTile(
                    //   title: Text(
                    //       'As mulheres usam vestidos compridos e rodados e os homens usam calças bombachas e botas. ',
                    //       style: TextStyle(color: Colors.black)),
                    // ),
                    body: ListBody(
                      children: [
                        ListTile(
                          title: Text(
                              'As mulheres usam vestidos compridos e rodados e os homens usam calças bombachas e botas. ',
                              style: TextStyle(color: Colors.black)),
                        ),
                        Image.asset(
                          "assets/images/pezinho.jpg",
                          /*width: 370,
                        height: 180,*/
                        ),
                        ListTile(
                          title:
                              Text('\n', style: TextStyle(color: Colors.black)),
                        ),
                      ],
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
                    body: ListBody(
                      children: [
                        ListTile(
                          leading: Icon(
                            Icons.link,
                            color: Colors.blueAccent,
                          ),
                          title: Text('Música - Pezinho\n',
                              style: TextStyle(color: Colors.black)),
                          onTap: () => _launchLink(
                              'https://www.youtube.com/watch?v=nixdhsZeIag'),
                        ),
                      ],
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
                    body: ListBody(
                      children: [
                        ListTile(
                          leading: Icon(
                            Icons.link,
                            color: Colors.blueAccent,
                          ),
                          title: Text(' Aprenda a dançar - Dança do pezinho\n',
                              style: TextStyle(color: Colors.black)),
                          onTap: () => _launchLink(
                              'https://www.youtube.com/watch?v=EJg82ydow1Y'),
                        ),
                        ListTile(
                          leading: Icon(
                            Icons.link,
                            color: Colors.blueAccent,
                          ),
                          title: Text(
                              'Aprenda a dançar - Dança do pezinho - atividade de dança\n',
                              style: TextStyle(color: Colors.black)),
                          onTap: () => _launchLink(
                              'https://www.youtube.com/watch?v=Njq14EaG2q4'),
                        ),
                        ListTile(
                          leading: Icon(
                            Icons.link,
                            color: Colors.blueAccent,
                          ),
                          title: Text(
                              'Aprenda a dançar - video-aula dança do pezinho\n',
                              style: TextStyle(color: Colors.black)),
                          onTap: () => _launchLink(
                              'https://www.youtube.com/watch?v=HHH1cIl5gnI'),
                        ),
                        ListTile(
                          leading: Icon(
                            Icons.link,
                            color: Colors.blueAccent,
                          ),
                          title: Text(
                              'Aprenda a dançar - Dança do pezinho - Dança Gaúcha\n',
                              style: TextStyle(color: Colors.black)),
                          onTap: () => _launchLink(
                              'https://www.youtube.com/watch?v=RdFSXdQ8LJc'),
                        ),
                      ],
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
