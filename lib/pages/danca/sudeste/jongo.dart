import 'package:flutter/material.dart';
import 'package:regiao2/core/app_colors.dart';
import 'package:regiao2/pages/home/sudeste.dart';
import 'package:url_launcher/url_launcher.dart';

class Jongo extends StatefulWidget {
  const Jongo({Key? key}) : super(key: key);

  @override
  _JongoState createState() => _JongoState();
}

class _JongoState extends State<Jongo> {
  @override
  Future<void> _launchLink(String url) async {
    launch(url, forceSafariVC: false, forceWebView: false);
  }

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
        _regNome("Jongo"),
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
                        "Dança de negros organizados em roda mista, alternando-se homens e mulheres. No centro um solista, um jongueiro, que canta sua canção, o “ponto”. Os demais respondem em coro, fazendo movimentos laterais e batendo palmas nos lugares. O solista improvisa passos movimentando todo o corpo. O instrumental é composto por dois tambores – um grande, o Tambu, e um menor, o Candongueiro; uma Puita – cuica, artesanal; um chocalho – o Guaiá, feito de folha-se-flandres. As melodias são construídas com o uso de poucos sons. A dificuldade reside no texto literário dos “pontos”, pois são todos enigmáticos, metafóricos. Quando o solista quer desafiar alguém, canta o “ponto da demanda”; este deverá decifrá-lo, cantando a resposta: diz-se então que “desatou o ponto”. Se não for decifrado, diz-se que “ficou amarrado”. Neste caso, o jongueiro “amarrado” pode passar por várias situações humilhantes e vexatórias, como cair no chão e não conseguir se levantar, não conseguir andar, etc. O jongo é, ainda hoje, bastante praticado em diversas cidades de sua região original: o Vale do Paraíba na Região Sudeste do Brasil, ao sul do estado do Rio de Janeiro e ao norte do estado de São Paulo e na região das Minas e das fazendas de café em Minas Gerais, onde também é chamado "
                        "Caxambu"
                        ".",
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
                        "Inserindo no âmbito das chamadas danças de umbigada (sendo, portanto, aparentado com o semba ou masemba de Angola), o jongo foi trazido para o Brasil por negros bantus, sequestrados, para serem vendidos como escravos nos antigos reinos de Ndongo e do Kongo, região compreendida hoje por boa parte do território da República de Angola. Composto por música e dança características, animadas por poetas que se desafiam por meio da improvisação, ali, no momento, com cantigas ou pontos enigmáticos, o jongo tem, provavelmente, como uma de suas origens (pelo menos no que diz respeito à estrutura dos pontos cantados) o tradicional jogo de adivinhação angolano denominado jinongonongo. Na cidade do Rio de Janeiro, a região compreendida pelos bairros de Madureira e Oswaldo Cruz, já nos anos imediatamente posteriores à abolição da escravatura, centralizou durante muito tempo a prática desta manifestação na zona rural da antiga Corte Imperial, atraindo um grande número de imigrantes ex-escravos, oriundos das fazendas de café do Vale do Paraíba. Entre os precursores da implantação do jongo nesta área, se destacaram a ex-escrava Maria Teresa dos Santos, muitos de seus parentes ou aparentados, além de diversos vizinhos da comunidade, entre os quais Mano Elói (Eloy Anthero Dias), Sebastião Mulequinho e Tia Eulália, todos eles intimamente ligados à fundação da Escola de Samba Império Serrano, sediada no Morro da Serrinha.",
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
                  body: ListBody(children: [
                    ListTile(
                      title: Text(
                          "Os homens vestem camisas de malha. As mulheres colocam as saias de chita por cima das suas roupas de trabalho e o traje se complementa também com as camisetas do grupo. Os cabelos são ajeitados com turbantes afros.",
                          style: TextStyle(color: Colors.black)),
                    ),
                    Image.asset(
                      "assets/images/jongo.jpg",
                      /*width: 370,
                        height: 180,*/
                    ),
                  ]),
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
                  // body: ListTile(
                  //   title: Text(
                  //       "https://www.youtube.com/watch?v=OiujQ_T8nAs \n" +
                  //           "\n" +
                  //           "https://www.youtube.com/watch?v=jpRhX7uHILQ \n" +
                  //           "\n" +
                  //           "https://www.youtube.com/watch?v=QpXEkxO2xiI",
                  //       style: TextStyle(color: Colors.black)),
                  // ),
                  body: ListBody(
                    children: [
                      ListTile(
                        leading: Icon(
                          Icons.link,
                          color: Colors.blueAccent,
                        ),
                        title: Text(
                            'https://www.youtube.com/watch?v=OiujQ_T8nAs\n',
                            style: TextStyle(color: Colors.black)),
                        onTap: () => _launchLink(
                            "https://www.youtube.com/watch?v=OiujQ_T8nAs"),
                      ),
                      ListTile(
                        leading: Icon(
                          Icons.link,
                          color: Colors.blueAccent,
                        ),
                        title: Text(
                            'https://www.youtube.com/watch?v=jpRhX7uHILQ\n',
                            style: TextStyle(color: Colors.black)),
                        onTap: () => _launchLink(
                            "https://www.youtube.com/watch?v=jpRhX7uHILQ"),
                      ),
                      ListTile(
                        leading: Icon(
                          Icons.link,
                          color: Colors.blueAccent,
                        ),
                        title: Text(
                            'https://www.youtube.com/watch?v=QpXEkxO2xiI\n',
                            style: TextStyle(color: Colors.black)),
                        onTap: () => _launchLink(
                            "https://www.youtube.com/watch?v=QpXEkxO2xiI"),
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
                            'https://www.youtube.com/watch?v=OiujQ_T8nAs\n',
                            style: TextStyle(color: Colors.black)),
                        onTap: () => _launchLink(
                            "https://www.youtube.com/watch?v=OiujQ_T8nAs"),
                      ),
                      ListTile(
                        leading: Icon(
                          Icons.link,
                          color: Colors.blueAccent,
                        ),
                        title: Text(
                            'https://www.youtube.com/watch?v=jpRhX7uHILQ\n',
                            style: TextStyle(color: Colors.black)),
                        onTap: () => _launchLink(
                            "https://www.youtube.com/watch?v=jpRhX7uHILQ"),
                      ),
                      ListTile(
                        leading: Icon(
                          Icons.link,
                          color: Colors.blueAccent,
                        ),
                        title: Text(
                            'https://www.youtube.com/watch?v=QpXEkxO2xiI\n',
                            style: TextStyle(color: Colors.black)),
                        onTap: () => _launchLink(
                            "https://www.youtube.com/watch?v=QpXEkxO2xiI"),
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
        padding: EdgeInsets.only(top: 5),
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
