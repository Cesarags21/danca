import 'package:flutter/material.dart';
import 'package:regiao2/core/app_colors.dart';
import 'package:regiao2/pages/home/centroOeste.dart';
import 'package:url_launcher/url_launcher.dart';

class Siriri extends StatefulWidget {
  const Siriri({Key? key}) : super(key: key);

  @override
  _SiririState createState() => _SiririState();
}

class _SiririState extends State<Siriri> {
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
          _dancaFaixa(CentroOeste()),
          Divider(
            height: 10,
            thickness: 0.2,
            color: Colors.white,
          ),
          _regNome('Siriri'),
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
                              'Siriri é uma dança folclórica da Região Centro-Oeste do Brasil (Mato Grosso, Mato Grosso do Sul e Goiás), e faz parte das festas tradicionais e festejos religiosos. A dança lembra as brincadeiras indígenas, com ritmo e expressão hispano-lusitana. Pode ser comparado com o fandango do litoral brasileiro. A música fala das coisas da vida de forma simples e alegre. Como instrumentos musicais, acompanham a viola de cocho, o cracacha (ganzá) e o mocho ou tamboril. A origem do termo siriri é incerta. Para alguns estudiosos vem da palavra otiriri que designa um entremez do século XVIII, em Portugal. Outros acreditam expressar um tipo de cupins de asas. A expressão corporal e a coreografia transmitem o respeito e o culto à amizade, por isso é conhecido como dança mensagem. Ela é dançada com vários passos, como o dos homens, colocam os braços nas costas enquanto as mulheres mexem sua saia. Há vários outros movimentos como se eles tivessem brincando. ',
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
                          ' O siriri é uma dança típica do Mato Grosso acompanhada por música e versos cantados. Realizada na região sul de Cuiabá há mais de duzentos anos, o siriri reflete a miscigenação entre negros, índios, portugueses e espanhóis que ocuparam a região no decorrer da história. Com relação ao termo “siriri”, após várias consultas e depoimentos coletados entre dançarinos e tocadores desta manifestação, não encontraram informações contundentes sobre a origem desta nomenclatura. O siriri é considerado uma dança que remete as brincadeiras e aos divertimentos indígenas, dançado por homens, mulheres e crianças em diversos espaços que vão desde uma sala até um terreiro. Santos afirma que o povoamento das terras mato-grossenses, na época capitania de São Paulo, iniciou-se em 1719, às margens do Rio Coxipó, que resultaram em dois núcleos populacionais: Arraial de São Gonçalo e da Forquilha. O primeiro possuía entre seus habitantes os índios Coxiponé, que deram origem a um dos grupos mais conhecidos de Siriri na atualidade, o Flor Ribeirinha. Além disso, a região se caracterizou como um dos principais locais de expressão do siriri. Outra localidade que também têm forte expressão desta manifestação é Cáceres (MT), que encontrou nos idosos a principal fonte de divulgação do siriri na cidade, visto que a tradição se desgastou com o tempo.O siriri é conhecido por “dança mensagem” visto que não somente sua música, mas também sua coreografia e expressão procuram transmitir o culto a amizade e o respeito.  ',
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
                    // body: ListBody(
                    //   children: [
                    //     ListTile(
                    //       title: Text(
                    //           'Os cavalheiros normalmente trajam calças cumpridas e camisas coloridas, enquanto as damas usam grandes saias estampadas com tonalidades alegres, à moda da região do Mato Grosso, além disso, outro acessório comum é a flor no cabelo das mulheres.  \n\n',
                    //           style: TextStyle(color: Colors.black)),
                    //     ),
                    //     Image.asset(
                    //       "assets/images/siriri.jpg",
                    //       /*width: 370,
                    //     height: 180,*/
                    //     ),
                    //     ListTile(
                    //       title:
                    //           Text('\n', style: TextStyle(color: Colors.black)),
                    //     ),
                    //   ],
                    // ),
                    body: ListBody(
                      children: [
                        ListTile(
                          title: Text(
                              'Os cavalheiros normalmente trajam calças cumpridas e camisas coloridas, enquanto as damas usam grandes saias estampadas com tonalidades alegres, à moda da região do Mato Grosso, além disso, outro acessório comum é a flor no cabelo das mulheres. ',
                              style: TextStyle(color: Colors.black)),
                        ),
                        Image.asset(
                          "assets/images/siriri.jpg",
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
                          title: Text(
                              'Música - Marrequinha da Lagoa - Siriri\n',
                              style: TextStyle(color: Colors.black)),
                          onTap: () => _launchLink(
                              "https://www.youtube.com/watch?v=P5jtd9n0xdg"),
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
                    body: ListTile(
                      title: Text('Não há :(',
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
            color: AppColors.primaria02,
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
