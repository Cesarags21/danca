import 'package:flutter/material.dart';
import 'package:regiao2/core/app_colors.dart';
import 'package:regiao2/pages/home/centroOeste.dart';
import 'package:url_launcher/url_launcher.dart';
class Catira extends StatefulWidget {
  const Catira({Key? key}) : super(key: key);

  @override
  _CatiraState createState() => _CatiraState();
}

class _CatiraState extends State<Catira> {
  @override
  Future<void> _launchLink  (String url) async{
    
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
          _dancaFaixa(CentroOeste()),
          Divider(
            height: 10,
            thickness: 0.2,
            color: Colors.white,
          ),
          _regNome('Catira'),
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
                          'A Catira, também chamada de Cateretê, é uma dança coletiva e popular do folclore brasileiro. Note que essa manifestação cultural é mais encontrada nas cidades interioranas e, portanto, faz parte da cultura sertaneja. Essa dança folclórica é marcada pela batida dos pés e das mãos movimentadas pelo ritmo da música, que por sua vez, é produzida pela viola caipira. Por esse motivo, a moda de viola é o ritmo mais empregado. Duas fileiras são formadas pelos integrantes, que se movimentam de frente um para o outro. Dessa maneira, as batidas dos pés e das mãos são intercaladas por pulos.',
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
                          'A Catira, também chamada de Cateretê, é uma dança coletiva e popular do folclore brasileiro. Essa expressão é típica da região sudeste, entretanto, foi aos poucos se espalhando e ganhando adeptos em outros locais. Hoje podemos ver essa dança em quase todas as regiões do Brasil, com destaque para o sudeste  o centro-oeste. Note que essa manifestação cultural é mais encontrada nas cidades interioranas e, portanto, faz parte da cultura sertaneja. A origem da Catira é múltipla, ou seja, ela reúne traços europeus, indígenas e africanos. A verdade é que desde o período colonial já temos essa dança como manifestação cultural. Para alguns, ela está associada às atividades dos tropeiros, o que explica sua característica mais marcante, a qual reúne somente homens. Estudiosos apontam que como eles faziam o transporte de gado entre os locais, provavelmente, a dança tenha surgido nos momentos de descanso e descontração do grupo.',
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
                    body: ListBody(children: [ ListTile(
                      title: Text(
                          'Os integrantes do grupo de Catira possuem uma vestimenta específica. Eles usam camisas, calças, chapéus e botinas. Esse último adereço talvez seja o mais importante, uma vez que fazem o som de batida, que se junta com as melodias. Além disso, o lenço é muito comum, sendo que alguns usam no pescoço, outros, na cintura. Atualmente, já é possível encontrar mulheres que fazem parte do grupo de catireiros, e mesmo assim, a vestimenta é igual. ',
                          style: TextStyle(color: Colors.black)),
                    ),
                     Image.asset("assets/images/catira.jpeg",
                        /*width: 370,
                        height: 180,*/
                      ),
                      ListTile(
                        title: Text('\n',
                          style: TextStyle(color: Colors.black)),
                      ),
                      ],),
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
                    body: ListBody(children: [
                        ListTile(
                          leading: Icon(Icons.link, color: Colors.blueAccent,),
                          title: Text(
                          'https://www.youtube.com/watch?v=M70xRvuqZQY\n' ,
                              
                          style: TextStyle(color: Colors.black)),
                          onTap: () => _launchLink("https://www.youtube.com/watch?v=M70xRvuqZQY") ,
                        ),
                        ListTile(
                          leading: Icon(Icons.link, color: Colors.blueAccent,),
                          title: Text(
                          
                              'https://www.youtube.com/watch?v=PE9YkPLu6KE\n',
                          style: TextStyle(color: Colors.black)),
                          onTap: () => _launchLink("https://www.youtube.com/watch?v=PE9YkPLu6KE") ,
                        ),
                        ListTile(
                          leading: Icon(Icons.link, color: Colors.blueAccent,),
                          
                          title: Text(
                          
                              'https://www.youtube.com/watch?v=VCfbsucnqEs\n',
                          style: TextStyle(color: Colors.black)),
                          onTap: () => _launchLink("https://www.youtube.com/watch?v=VCfbsucnqEs") ,                  
                          
                    ),
                    ],),
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
                    body:ListBody(children: [
                      ListTile(
                        leading: Icon(Icons.link, color: Colors.blueAccent,),
                      title: Text(
                          'https://www.youtube.com/watch?v=RxwOnUYbrVc\n' ,
                              
                          style: TextStyle(color: Colors.black)),
                          onTap: () => _launchLink("https://www.youtube.com/watch?v=RxwOnUYbrVc") , 
                      ),
                      ListTile(
                        leading: Icon(Icons.link, color: Colors.blueAccent,),
                      title: Text(
                              'https://www.youtube.com/watch?v=jKgLiqYi3b4\n' ,

                          style: TextStyle(color: Colors.black)),
                          onTap: () => _launchLink("https://www.youtube.com/watch?v=jKgLiqYi3b4") , 
                      ),
                      ListTile(
                        leading: Icon(Icons.link, color: Colors.blueAccent,),
                      title: Text(
                              'https://www.youtube.com/watch?v=rbxCK4sWxuQ\n',
                          style: TextStyle(color: Colors.black)),
                          onTap: () => _launchLink("https://www.youtube.com/watch?v=rbxCK4sWxuQ") , 
                      ),
                    ],),
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
