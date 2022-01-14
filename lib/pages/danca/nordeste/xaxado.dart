import 'package:flutter/material.dart';
import 'package:regiao2/core/app_colors.dart';
import 'package:regiao2/pages/home/nordeste.dart';
import 'package:url_launcher/url_launcher.dart';

class Xaxado extends StatefulWidget {
  const Xaxado({Key? key}) : super(key: key);

  @override
  _XaxadoState createState() => _XaxadoState();
}

class _XaxadoState extends State<Xaxado> {
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
      body: ListView(
        children: [
          _dancaFaixa(Nordeste()),
          Divider(
            height: 10,
            thickness: 0.2,
            color: Colors.white,
          ),
          _regNome('Xaxado'),
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
                          'Dança Popular brasileira originada nas regiões do Agreste e do Sertão pernambucano, muito praticada no passado pelos cangaceiros da região, em celebração às suas vitórias.',
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
                          'Há controvérsias sobre a origem do xaxado. Alguns pesquisadores afirmam que é uma dança originária do alto Sertão de Pernambuco (regiões do Pajeú e Moxotó), outros que ela tem sua origem em Portugal e alguns outros ainda dizem que sua origem é indígena. O xaxado foi difundido como uma dança de guerra e entretenimento pelos cangaceiros, notoriamente do bando de Lampião, no início dos anos 1920, em Vila Bela, atual Serra Talhada. Na época, tornou-se popular em todos os bandos de cangaceiros espalhados pelos sertões nordestinos.​Era uma dança exclusivamente masculina, por isso nunca foi considerada uma dança de salão, mesmo porque naquela época ainda não havia mulheres no cangaço. Faziam da arma a dama. Dançavam em fila indiana, o da frente, sempre o chefe do grupo, puxava os versos cantados e o restante do bando respondia em coro, com letras de insulto aos inimigos, lamentando mortes de companheiros ou enaltecendo suas aventuras e façanhas.​A dança que nasceu nas brenhas da caatinga nordestina surgiu como uma alternativa para aliviar o tédio e as agruras dos cangaceiros que fervilhavam pelas matas secas, espinhosas e poeirentas da região mais árida do país.​Lampião, antes de ter seu próprio bando, foi recruta do bando de Senhor Pereira, e nesses anos talvez tenha aprendido o melhor da sua arte de cangaceiro. A partir de 1922, quando Senhor Pereira deixa o Sertão e vai embora para Goiás, Lampião assume o comando do bando, passando de um simples recruta a comandante do grupo. ​A origem do nome xaxado vem de um determinado “ritual” realizado pelos agricultores naquela época. Sua ligação com o nome vem através da palavra sachar ou xaxar, costumes da plantação de feijão de arranca (típico feijão da região do sertão nordestino) onde acontecia todo um processo específico para plantar e colher esse legume. Os movimentos realizados dessa plantação têm uma ligação com os rituais indígenas, isso vem através da miscigenação de raças, os movimentos realizados pelos agricultores são bem próximos com o da dança, sendo conhecidos como movimento base da dança xaxado: base, corta jaca e batido. A dança era executada com batidas ritmadas com a coronha do rifle sobre o chão. O mesmo rifle servia de figura (parceira feminina), tendo em vista que a dança era executada, inicialmente, somente pelos homens. Só a partir de 1930, a figura feminina entra no Cangaço. A situação mudaria um pouco depois com a inclusão de Maria Bonita e outras mulheres no bando de Lampião. Por conta dessa divulgação, o xaxado é muito ligado ao cangaço, e mesmo inovações na dança acabaram por surgir dentro dos vários grupos cangaceiros. Assim, hoje em dia o xaxado é executado aos pares. Há também uma versão em que a expressão Xaxado surgiu de uma atividade do sertanejo, que é xaxar (vindo de sachar – cavar a terra com o sacho, capinar). Os agricultores xaxam o feijão juntando a terra com uma enxada pequena no pé do caule do broto com poucos dias de nascido. Para retirar da bagem/vagem o caroço (feijão) depois de colhida na roça, é feito com um pau batendo no feijão. Esse movimento chama-se xaxar.',
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
                    //       'As roupas utilizadas no xaxado são baseadas nas vestimentas características dos cangaceiros, ou seja, em tons de cáqui e marrom, com camisas de manga longa e calças compridas feitas com tecido grosso e couro, que eram utilizadas para a proteção contra os espinhos da caatinga, além do chapéu e das alpercatas. No chapéu em específico, é possível observar a existência de materiais brilhantes, como pequenos pedaços de espelhos, vidros ou moedas. Estes detalhes eram utilizados na época do cangaço para enfeitar o acessório, bem como para atrapalhar a mira de um possível inimigo sob o sol do sertão, já que eles poderiam refletir a luz no rosto dos oponentes. É possível identificar ainda na caracterização dos grupos de xaxado alguns acessórios como lenço no pescoço, moringa ou cabaça pendurada no corpo das mulheres e os óculos de sol com lentes arredondadas nos homens. ',
                    //       style: TextStyle(color: Colors.black)),
                    // ),
                    body: ListBody(
                      children: [
                        ListTile(
                          title: Text(
                              'As roupas utilizadas no xaxado são baseadas nas vestimentas características dos cangaceiros, ou seja, em tons de cáqui e marrom, com camisas de manga longa e calças compridas feitas com tecido grosso e couro, que eram utilizadas para a proteção contra os espinhos da caatinga, além do chapéu e das alpercatas. No chapéu em específico, é possível observar a existência de materiais brilhantes, como pequenos pedaços de espelhos, vidros ou moedas. Estes detalhes eram utilizados na época do cangaço para enfeitar o acessório, bem como para atrapalhar a mira de um possível inimigo sob o sol do sertão, já que eles poderiam refletir a luz no rosto dos oponentes. É possível identificar ainda na caracterização dos grupos de xaxado alguns acessórios como lenço no pescoço, moringa ou cabaça pendurada no corpo das mulheres e os óculos de sol com lentes arredondadas nos homens ',
                              style: TextStyle(color: Colors.black)),
                        ),
                        Image.asset(
                          "assets/images/xaxado.jpg",
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
                    // body: ListTile(
                    //   title: Text(
                    //       'https://www.letras.mus.br/luiz-gonzaga/1563870/\n' +
                    //           'https://www.letras.mus.br/trio-nordestino/1886459/',
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
                              'https://www.letras.mus.br/luiz-gonzaga/1563870/\n',
                              style: TextStyle(color: Colors.black)),
                          onTap: () => _launchLink(
                              "https://www.letras.mus.br/luiz-gonzaga/1563870/"),
                        ),
                        ListTile(
                          leading: Icon(
                            Icons.link,
                            color: Colors.blueAccent,
                          ),
                          title: Text(
                              'https://www.letras.mus.br/trio-nordestino/1886459/\n',
                              style: TextStyle(color: Colors.black)),
                          onTap: () => _launchLink(
                              "https://www.letras.mus.br/trio-nordestino/1886459/"),
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
                    // body: ListTile(
                    //   title: Text(
                    //       'https://www.youtube.com/watch?v=pSm-fO 299-o\n' +
                    //           'https://www.youtube.com/watch?v=8V8ARN-WHd 4',
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
                              'https://www.youtube.com/watch?v=pSm-fO 299-o\n',
                              style: TextStyle(color: Colors.black)),
                          onTap: () => _launchLink(
                              "https://www.youtube.com/watch?v=pSm-fO 299-o"),
                        ),
                        ListTile(
                          leading: Icon(
                            Icons.link,
                            color: Colors.blueAccent,
                          ),
                          title: Text(
                              'https://www.youtube.com/watch?v=8V8ARN-WHd 4\n',
                              style: TextStyle(color: Colors.black)),
                          onTap: () => _launchLink(
                              "https://www.youtube.com/watch?v=8V8ARN-WHd 4"),
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
            color: AppColors.primaria04,
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
