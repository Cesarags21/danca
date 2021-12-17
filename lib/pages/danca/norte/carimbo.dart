import 'package:flutter/material.dart';
import 'package:regiao2/core/app_colors.dart';
import 'package:regiao2/pages/home/norte.dart';

class Carimbo extends StatefulWidget {
  const Carimbo({Key? key}) : super(key: key);

  @override
  _CarimboState createState() => _CarimboState();
}

class _CarimboState extends State<Carimbo> {
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
          _dancaFaixa(Norte()),
          Divider(
            height: 10,
            thickness: 0.2,
            color: Colors.white,
          ),
          _regNome('Carimbó'),
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
                          'dança de roda formada por homens e mulheres, com solista no centro que baila com requebros, trejeitos, passos miúdos arrastados e ligeiros. O apogeu da apresentação é quando a dançarina, usando amplas saias, consegue cobrir algum dançador, volteando amplamente a veste. Este gesto provoca hilaridade entre todos. Caso jogue a saia e não cubra o parceiro, é imediatamente substituída. O nome da dança deriva de um dos instrumentos acompanhantes, um tambor de origem africana.',
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
                          'O surgimento do carimbó é incerto. Sabe-se apenas que o ritmo começou a ser dançado em locais próximos aos municípios de Marapanim e Curuçá, no estado do Pará. O historiador Agripino da Conceição revela que a dança surgiu em Marapanim, local onde também teria recebido essa nomenclatura . Na região, inclusive, o carimbó é muito cultivado. Todos os anos acontece o "Festival de Carimbó de Marapanim”. No Pará a dança é marcante na região do estuário do Rio Tocantins, Ilha do Marajó e nordeste do estado, onde a maioria dos grupos de carimbó estão concentrados. No início, devido à imensidão do estado, a dança se dividiu em três grupos: o carimbó praieiro, o pastoril e o rural. Além disso, foram adotadas duas correntes carimbóticas: o estilo tradicional e o moderno. O primeiro, representado pelo cantador Verequete, manteve a sua estrutura musical com referencial marapaniense. Já o segundo, representado pelo cantador Pinduca, decidiu modificar a sua estrutura, acrescentando um ritmo mais moderno. Na época, isso causou uma intensa rivalidade entre os defensores da tradição e da modernidade. No entanto, os estilos do carimbó variam de acordo com o tipo de atividade desempenhada em cada região. A diferença é percebida nas rimas que são cantadas. No ano de 1880, o carimbó foi repreendido por forças militares e chegou a ser criminalizado do município de Belém por ser considerado “festa de preto”. O texto da Lei nº 1 028, denominada “Código de Posturas de Belém” dizia o seguinte: “É proibido, sob pena de 30.000 reis de multa: (...) Fazer bulhas, vozerias e dar autos gritos (...). Fazer batuques ou samba. (...) Tocar tambor, carimbó, ou qualquer outro instrumento que perturbe o sossego durante a noite, etc”. Contudo, esse cenário começou a mudar em 1960, embora ainda existisse a censura imposta pela Ditadura militar no Brasil. Belém do Pará foi a cidade de terreno fértil para o carimbó, pois foi nessa região que a dança desenvolveu suas principais características. Com isso, o carimbó deu início aos primeiros grupos de carimbozeiros , tornando- se um ritmo popular nas rádios e bailes da cidade.',
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
                          'As mulheres usam bastante acessórios nos pulsos e pescoços, e a cabeça enfeitada por flores. As blusas possuem uma única cor e as saias são bem coloridas e volumosas, a fim de causar um movimento bonito durante a apresentação. Os homens dançam utilizando calças curtas, geralmente brancas, comumente com a bainha enrolada, costume herdado dos ancestrais negros, que devido às atividades exercidas dobravam a bainha de suas roupas.',
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
                      title: Text(
                          'https://youtube.com/playlist?list=PLsffXOa7IP6CY3RskDIsdOpLQFzFvGR0Z',
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
                      title: Text('Ta nadando na preguiça',
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
            color: AppColors.primaria05,
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
