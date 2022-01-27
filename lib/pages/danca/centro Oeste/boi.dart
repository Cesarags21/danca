import 'package:flutter/material.dart';
import 'package:regiao2/core/app_colors.dart';
import 'package:regiao2/pages/home/centroOeste.dart';
import 'package:url_launcher/url_launcher.dart';
// import 'package:url_launcher/url_launcher.dart';

class Boi extends StatefulWidget {
  const Boi({Key? key}) : super(key: key);

  @override
  _BoiState createState() => _BoiState();
}

class _BoiState extends State<Boi> {
  Future<void> _launchLink(String url) async {
    launch(url, forceSafariVC: false, forceWebView: false);
  }

  @override
  bool _expanded = false;
  bool _expanded1 = false;
  bool _expanded2 = false;
  bool _expanded3 = false;
  bool _expanded4 = false;

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
          _regNome('Boi à Serra'),

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
                          'A dança Boi-à-Serra é uma manifestação do carnaval matogrossense. O boi, principal personagem, é feito da seguinte forma: primeiro monta-se uma estrutura de madeira leve e flexível conhecida como "melado de pomba"; depois, cobrem essa estrutura com um cobertor tipo "seca-poço", formando o corpo do boi, de cor semelhante à cor do animal; a cabeça do boi da brincadeira é a própria caveira do animal, seca, que é pintada com uma tinta escura, recebendo ainda algo para representar os olhos do boi, que pode ser dois botões, um de cada lado. Atualmente, algumas pessoas confeccionam o Boi-à-serra assemelhando-o ao Bumba-meu-boi de estados nordestinos do Brasil, cobrindo a mesma estrutura de madeira e a caveira do boi com tecido estampado. Uma pessoa vai dentro do boi, dançando ao carregá-lo, dando vida ao brinquedo, que avança em direção à platéia, como se fosse "chifrar" os presentes. Outros personagens, não menos interessantes, são: a cabeça de apá, a mãe do morro, o tuiuiú, a ema, o morcego, o cavalo sem cabeça; esses, são variáveis, de um a outro grupo.',
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
                          'Houve tempo em que o Boi-à-Serra foi muito difundido em Mato Grosso, principalmente nas localidades de Santo Antônio do Leverger, Varginha, Carrapicho, Engenho Velho, Bom Sucesso e Maravilha, onde existiam grandes canaviais e a atividade econômica predominante eram os engenhos de açúcar. A dança do Boi-à-Serra hoje, consegue ainda manter suas características iniciais apenas na localidade de Varginha, no município de Santo Antônio do Leverger. Lá as pessoas ainda cantam uma toada que conta toda a trajetória de vida e morte de um boi que é capturado por destemidos vaqueiros, enquanto dançam. O Boi-à-Serra é um folguedo do carnaval mato-grossense, porém, segundo alguns tiradores, o Boi-à-Serra pode ser dançado em qualquer festa.',
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
                    //       'O boi, principal personagem, é feito da seguinte forma: primeiro monta-se uma estrutura de madeira leve e flexível conhecida como "melado de pomba"; depois, cobrem essa estrutura com um cobertor tipo "seca-poço", formando o corpo do boi, de cor semelhante à cor do animal; a cabeça do boi da brincadeira é a própria caveira do animal, seca, que é pintada com uma tinta escura, recebendo ainda algo para representar os olhos do boi, que pode ser dois botões, um de cada lado. Atualmente, algumas pessoas confeccionam o Boi-à-serra assemelhando-o ao Bumba-meu-boi de estados nordestinos do Brasil, cobrindo a mesma estrutura de madeira e a caveira do boi com tecido estampado. Uma pessoa vai dentro do boi, dançando ao carregá-lo, dando vida ao brinquedo, que avança em direção à platéia, como se fosse "chifrar" os presentes. Outros personagens, não menos interessantes, são: a cabeça de apá, a mãe do morro, o tuiuiú, a ema, o morcego, o cavalo sem cabeça; esses, são variáveis, de um a outro grupo. ',
                    //       style: TextStyle(color: Colors.black)),

                    // ),

                    // Column(children: [
                    //   new Image.asset(
                    //     'images/boi.jpg',
                    //     width: 370.0,
                    //     height: 180.0,
                    //     fit: BoxFit.cover,
                    //   )
                    // ]),
                    body: ListBody(
                      children: [
                        ListTile(
                          title: Text(
                              'Dança religiosa de origem e aculturação portuguesa, inicialmente apresentada nos templos religiosos católicos, com o objetivo de catequizar os pecadores. Foi considerada de caráter mundano, sendo proibida pelas autoridades, passando a ser cantada e dançada nas zonas rurais, onde ainda hoje é aceita e praticada.Tem como personagens o Mestre, tocador de viola; o Contra-Mestre, tocador de meia-cuia ou meia cabaça, dois Guias que são sempre os segundos de cada cordão e os demais participantes dançadores, todos vestidos de brancos, com quepes e turbantes. Destina-se especialmente a pagar promessas à São Gonçalo, com uma coreografia em roda, bastante variada: tesoura, meia- volta, roda viva, rolo, cruz, prisão, etc. A música que acompanha os cantos e danças é o Baião de viola. A roda de São Gonçalo é iniciada com todos os participantes parados diante do altar, cantando louvações ao santo e em seguida começa o ritual, com um deles segurando a imagem de São Gonçalo. No final, os que estão pagando promessa vão para o centro da roda e os dançadores continuam a dançar, sempre batendo forte com um dos pés. ',
                              style: TextStyle(color: Colors.black)),
                        ),
                        Image.asset(
                          "assets/images/boi.jpg",
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
          ///////////////////////////////
          ////
          ////]
          ///
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
                      leading: Icon(
                        Icons.link,
                        color: Colors.blueAccent,
                      ),
                      title: Text('Música - Boi Bumba ',
                          style: TextStyle(color: Colors.black)),
                      onTap: () => _launchLink(
                          "https://www.youtube.com/watch?v=07UTOrhONH0"),
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
                        leading: Icon(
                          Icons.link,
                          color: Colors.blueAccent,
                        ),
                        title: Text('Aprenda a dançar Boi Bumba!',
                            style: TextStyle(color: Colors.black)),
                        onTap: () => _launchLink(
                            "https://www.youtube.com/watch?v=07UTOrhONH0")),
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
