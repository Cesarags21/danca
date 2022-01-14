import 'package:flutter/material.dart';
import 'package:regiao2/core/app_colors.dart';
import 'package:regiao2/pages/home/sudeste.dart';
import 'package:url_launcher/url_launcher.dart';

class Tamandua extends StatefulWidget {
  const Tamandua({Key? key}) : super(key: key);

  @override
  _TamanduaState createState() => _TamanduaState();
}

class _TamanduaState extends State<Tamandua> {
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
      body: ListView(children: [
        _dancaFaixa(Sudeste()),
        Divider(
          height: 10,
          thickness: 0.2,
          color: Colors.white,
        ),
        _regNome("Dança do Tamanduá"),
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
                  body: ListBody(
                    children: [
                      ListTile(
                        title: Text(
                            'Organizada em roda de homens e mulheres, um solista ao centro vai executando movimentos determinados pela letra da cantoria: pondo a mão na cabeça ou na cintura, batendo com o pé no chão, pulando para lá e para cá, mexendo com as cadeiras etc. As músicas são na forma solo-coro, o que permite improvisação nas ordens musicais cantadas pelo puxador.',
                            style: TextStyle(color: Colors.black)),
                      ),
                      ListTile(
                        title:
                            Text('\n', style: TextStyle(color: Colors.black)),
                      ),
                    ],
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
                        "Esta popular dança do Estado do Espírito Santo tem raízes afro, da região do Congo africano. ",
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
                    title: Text("Não encontrado :(",
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
                  body: ListBody(
                    children: [
                      ListTile(
                        leading: Icon(
                          Icons.link,
                          color: Colors.blueAccent,
                        ),
                        title: Text(
                            "https://www.youtube.com/watch?v=uJQ9hEZkx8Y\n",
                            style: TextStyle(color: Colors.black)),
                        onTap: () => _launchLink(
                            'https://www.youtube.com/watch?v=uJQ9hEZkx8Y'),
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
                        title: Text(
                            "https://www.youtube.com/watch?v=uJQ9hEZkx8Y\n",
                            style: TextStyle(color: Colors.black)),
                        onTap: () => _launchLink(
                            'https://www.youtube.com/watch?v=uJQ9hEZkx8Y'),
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
      ]),
    );
  }

  //faixa que leva de volta pra regiao
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

  //nome da dança
  Widget _regNome(regiao) {
    return Center(
      child: Container(
        padding: EdgeInsets.all(10),
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
