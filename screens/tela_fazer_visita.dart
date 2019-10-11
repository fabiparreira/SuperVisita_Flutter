import 'dart:core';
import 'package:flutter/material.dart';
import 'package:super_visita/components/editor.dart';
import 'widget_logotipo.dart';
import 'package:super_visita/models/visita.dart';
import 'package:super_visita/screens/widget_logotipo.dart';

class TelaVisita extends StatefulWidget {
  TelaVisita({Key key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return TelaVisitaState();
  }
}

class TelaVisitaState extends State<TelaVisita> {
  final List<dynamic> idVisita = 0 as List;
  bool prontMatricula = false;
  bool fichaRemissiva = false;
  bool historicoEscolar = false;
  bool fichaMatriculaAEE = false;
  bool diarioClasse = false;

/*  final TextEditingController _ctrlVisita = TextEditingController();
  final TextEditingController _ctrlProntMatricula = TextEditingController();
  final TextEditingController _ctrlFichaRemissiva = TextEditingController();
  final TextEditingController _ctrlHistoricoEscolar = TextEditingController();
  final TextEditingController _ctrlFichaMatriculaAEE = TextEditingController();
  final TextEditingController _ctrlDiarioClasse = TextEditingController();*/

  @override
  Widget build(BuildContext context) {
    return Column(
        children: <Widget>[
          SwitchListTile(
            title: Text('Prontuário de matrícula'),
            value: prontMatricula,
            onChanged: (bool value) {
              setState(() {
                prontMatricula = value;
              });
            },
            secondary: const Icon(Icons.library_books),
          ),
          SwitchListTile(
            title: Text('Ficha Remissiva'),
            value: fichaRemissiva,
            onChanged: (bool value) {
              setState(() {
                fichaRemissiva = value;
              });
            },
            secondary: const Icon(Icons.library_books),
          ),
          SwitchListTile(
            title: Text('Histórico Escolar'),
            value: historicoEscolar,
            onChanged: (bool value) {
              setState(() {
                historicoEscolar = value;
              });
            },
            secondary: const Icon(Icons.library_books),
          ),
          SwitchListTile(
            title: Text('Ficha de Matrícula AEE'),
            value: fichaMatriculaAEE,
            onChanged: (bool value) {
              setState(() {
                fichaMatriculaAEE = value;
              });
            },
            secondary: const Icon(Icons.library_books),
          ),
          SwitchListTile(
            title: Text('Diário de Classe'),
            value: diarioClasse,
            onChanged: (bool value) {
              setState(() {
                diarioClasse = value;
              });
            },
            secondary: const Icon(Icons.library_books),
          ),
        RaisedButton(
          onPressed: (){
            Navigator.pop(context, TelaVisita());
          },
        )
        ]
    );
  }
}

/*// MÉTODO PARA VISITAR
void _fazVisita(BuildContext context, String calendarioEscolar,
    String gradeCurricular) {
  final String calendarioEscolar = _ctrlLCalendarioEscolar.text;
  final String gradeCurricular = _ctrlGradeCurricular.text;
  if (calendarioEscolar != null && gradeCurricular != null) {
    final visitaAgendada = _fazVisita(calendarioEscolar, gradeCurricular);
    debugPrint('Criando agendamento');
    debugPrint('$visitaAgendada');
    Navigator.pop(context, visitaAgendada);
  }
}*/

