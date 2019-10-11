import 'package:flutter/material.dart';
import 'package:super_visita/models/agendamento.dart';
import 'package:super_visita/screens/tela_agendamento.dart';

// WIDGET (TELA) PARA VISITAS AGENDADAS
class ListaVisitasAgendadas extends StatefulWidget {
  final List<Agendamento> _agendamentos = List();

  @override
  State<StatefulWidget> createState() {
    return ListaVisitasAgendadasState();
  }
}

class ListaVisitasAgendadasState extends State<ListaVisitasAgendadas> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Visitas Agendadas'),
          backgroundColor: Color(0xFF0D47A1),
        ),
        body: ListView.builder(
          itemCount: widget._agendamentos.length,
          itemBuilder: (context, indice) {
            final agendamento = widget._agendamentos[indice];
            return ItemAgendamento(agendamento);
          },
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Color(0xFF0D47A1),
          child: Icon(Icons.add),
          onPressed: () {
            final Future<Agendamento> future =
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return TelaAgendamento();
            }));
            future.then((agendamentoRecebido) {
              Future.delayed(Duration(seconds: 1), () {
                if (agendamentoRecebido != null) {
                  setState(() {
                    widget._agendamentos.add(agendamentoRecebido);
                  });
                }
              });
            });
          },
        ));
  }
}

class ItemAgendamento extends StatelessWidget {
  final Agendamento _agendamento;

  ItemAgendamento(this._agendamento);

  @override
  Widget build(BuildContext context) {
    return Card(
        child: ListTile(
          leading: Icon(Icons.stars),
          title: Text(_agendamento.ctrlDataAgendada),
          subtitle: Text(_agendamento.localVisita),
        ));
  }
}
