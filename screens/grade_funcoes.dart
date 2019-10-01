import 'package:flutter/material.dart';
import 'package:super_visita/models/agendamento.dart';
import 'package:super_visita/screens/formulario_agendamento.dart';
import 'package:super_visita/screens/formulario_visita.dart';
import 'package:super_visita/screens/tela_visitas_agendadas.dart';
import 'package:super_visita/screens/widget_logotipo.dart';
import 'widget_logotipo.dart';
import 'formulario_agendamento.dart';

class GradeFuncoes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      drawer: LogotipoWidget(),
      drawerScrimColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color(0xFF0D47A1),
        title: Text(
          'Super Visita',
          style: TextStyle(fontSize: 25),
        ),
      ),
      body: GridView.count(
        primary: false,
        padding: const EdgeInsets.all(10.0),
        crossAxisCount: 2,
        childAspectRatio: 1.6,
        mainAxisSpacing: 10.0,
        crossAxisSpacing: 10.0,
        children: <Widget>[
          RaisedButton(
            child: Container(
              width: double.infinity,
              child: ListTile(
                subtitle: Text('Visualize ou altere seus dados pessoais'),
                leading: Icon(
                  Icons.assignment_ind,
                  size: 40,
                  color: Color(0xFF0D47A1),
                ),
                title: Text(
                  'Meu perfil',
                  style: TextStyle(fontSize: 25),
                ),
              ),
            ),
            color: Colors.white,
            onPressed: () {
              /*final Future<Agendamento> future =
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return FormularioAgendamentoWidget(); // TROCAR POR FORMULÁRIO CORRETO
              }));
              future.then((agendamentoRecebido) {
                debugPrint('chegou no then do futurePERFIL');
                debugPrint('$agendamentoRecebido');
              });*/
            },
          ),
          RaisedButton(
            child: ListTile(
              subtitle: Text(
                  'Visualize as escolas que são do seu escopo de supervisão'),
              leading: Icon(
                Icons.school,
                size: 40,
                color: Color(0xFF0D47A1),
              ),
              title: Text(
                'Minhas escolas',
                style: TextStyle(fontSize: 25),
              ),
            ),
            color: Colors.white,
            onPressed: () {
              /*final Future<Agendamento> future =
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return FormularioAgendamentoWidget(); // TROCAR POR FORMULÁRIO CORRETO
              }));
              future.then((agendamentoRecebido) {
                debugPrint('chegou no then do futureESCOLAS');
                debugPrint('$agendamentoRecebido');
              });*/
            },
          ),
          RaisedButton(
            child: ListTile(
              subtitle: Text('Visualize data e horário das visitas que '
                  'você já agendou. Ou agende novas visitas!'),
              leading: Icon(
                Icons.developer_board,
                size: 40,
                color: Color(0xFF0D47A1),
              ),
              title: Text(
                'Visitas agendadas',
                style: TextStyle(fontSize: 25),
              ),
            ),
            color: Colors.white,
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return ListaVisitasAgendadas();
              }));
            },
          ),
          RaisedButton(
              child: ListTile(
                subtitle: Text('Inicie a coleta de dados em uma nova visita'),
                leading: Icon(
                  Icons.stars,
                  size: 40,
                  color: Color(0xFF0D47A1),
                ),
                title: Text(
                  'Realizar nova visita',
                  style: TextStyle(fontSize: 25),
                ),
              ),
              color: Colors.white,
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return FormularioVisita();
                }));
              }),
        ],
        shrinkWrap: true,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0, // this will be set when a new tab is tapped
        items: [
          BottomNavigationBarItem(
            icon: new Icon(
              Icons.assignment,
              size: 30,
              color: Color(0xFF0D47A1),
            ),
            title: new Text(
              'Histórico de visitas',
              style: TextStyle(fontSize: 15, color: Colors.black),
            ),
          ),
          BottomNavigationBarItem(
            icon: new Icon(
              Icons.exit_to_app,
              size: 30,
              color: Color(0xFF0D47A1),
            ),
            title: new Text(
              'Sair',
              style: TextStyle(fontSize: 15, color: Colors.black),
            ),
          ),
        ],
        elevation: 10.0,
      ),
    );
  }
}