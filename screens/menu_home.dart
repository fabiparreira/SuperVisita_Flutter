import 'package:flutter/material.dart';
import 'package:super_visita/screens/tela_agendamento.dart';
import 'package:super_visita/screens/tela_fazer_visita.dart';
import 'package:super_visita/screens/tela_historico.dart';
import 'package:super_visita/screens/tela_perfil.dart';
import 'package:firebase_auth/firebase_auth.dart';

class MenuHome extends StatefulWidget {
  @override
  _MenuHomeState createState() => _MenuHomeState();
}

class _MenuHomeState extends State<MenuHome> {
  void _perfil() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => TelaPerfil()));
  }

  void _agenda() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => TelaAgendamento()));
  }

  void _visita() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => TelaVisita()));
  }

  void _dados() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => TelaHistorico()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF0D47A1),
        title: Text(
          'Home',
          style: TextStyle(fontSize: 24),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          color: Colors.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Image.asset(
                "images/logotipo.png",
                height: 350,
              ),
              Padding(
                padding: EdgeInsets.all(16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    GestureDetector(
                      onTap: _perfil,
                      child: Image.asset(
                        "images/bt_perfil.png",
                        height: 200,
                      ),
                    ),
                    GestureDetector(
                      onTap: _agenda,
                      child: Image.asset(
                        "images/bt_agenda.png",
                        height: 200,
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.all(16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    GestureDetector(
                      onTap: _visita,
                      child: Image.asset(
                        "images/bt_visita.png",
                        height: 200,
                      ),
                    ),
                    GestureDetector(
                      onTap: _dados,
                      child: Image.asset(
                        "images/bt_dados.png",
                        height: 200,
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
