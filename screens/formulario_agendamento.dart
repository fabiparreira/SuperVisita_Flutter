import 'dart:async';
import 'dart:core';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:super_visita/screens/tela_visitas_agendadas.dart';
import 'package:super_visita/screens/widget_logotipo.dart';

import 'widget_logotipo.dart';

// WIDGET (TELA) PARA AGENDAMENTO
class FormularioAgendamento extends StatefulWidget {
  FormularioAgendamento({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _FormularioAgendamentoState createState() => _FormularioAgendamentoState();
}

class _FormularioAgendamentoState extends State<FormularioAgendamento> {
  TextEditingController _ctrlLocalVisita = TextEditingController();
  DateTime ctrlDataAgendada = DateTime.now();

  Future<Null> _selecionarData(BuildContext context) async {
    final DateTime selecionada = await showDatePicker(
        context: context,
        initialDate: ctrlDataAgendada,
        firstDate: DateTime(2019, 01),
        lastDate: DateTime(2101));
    if (selecionada != null && selecionada != ctrlDataAgendada)
      setState(() {
        ctrlDataAgendada = selecionada;
      });
  }

  List _escolas = [
    "CEM Anita",
    "CEM Duarte",
    "CEM Clary",
    "CEM Faustino",
    "CEM Geyner",
    "CEM Irma",
    "CEM Maria Martins",
    "CEM Mimo",
    "CEM Neyde",
    "CEM Pieroni",
    "CEM Orozimbo",
    "CEM Valdir",
  ];

  List<DropdownMenuItem<String>> _dropDownMenuItems;
  String _escolaSelecionada;

  @override
  void initState() {
    _dropDownMenuItems = getDropDownMenuItems();
    _escolaSelecionada = _dropDownMenuItems[0].value;
    super.initState();
  }

  List<DropdownMenuItem<String>> getDropDownMenuItems() {
    List<DropdownMenuItem<String>> items = new List();
    for (String escola in _escolas) {
      items.add(new DropdownMenuItem(
        value: escola,
        child: new Text(escola),
      ));
    }
    return items;
  }

  void changedDropDownItem(String escolaSelecionada) {
    setState(() {
      _escolaSelecionada = escolaSelecionada;
      Navigator.pop(context, escolaSelecionada);
      return FormularioAgendamento();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Color(0xFF0D47A1),
          title: Text(
            'Agendar novas visitas',
            style: TextStyle(fontSize: 20),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              LogotipoWidget(),
              Text(
                "Unidade escolar:",
                style: TextStyle(fontSize: 25),
              ),
              Container(
                padding: new EdgeInsets.all(16.0),
              ),
              DropdownButton(
                value: _escolaSelecionada,
                items: _dropDownMenuItems,
                onChanged: changedDropDownItem,
                icon: Icon(Icons.arrow_drop_down_circle),
              ),
              Text("${ctrlDataAgendada.toLocal()}"),
              SizedBox(
                height: 50.0,
                width: 50.0,
              ),
              RaisedButton(
                onPressed: () => _selecionarData(context),
                child: Text(
                  'Selecione a data da visita',
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
                color: Color(0xFF0D47A1),
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(
            Icons.thumb_up,
          ),
          backgroundColor: Color(0xFF0D47A1),
          tooltip: ("Confirmar agendamento"),
          onPressed: () {
            _escolaSelecionada = _dropDownMenuItems[0].value;
            Navigator.pop(context, FormularioAgendamento);
          },
        ),
      ),
    );
  }
}
