import 'dart:core';

// WIDGET (TELA) PARA LOGIN
import 'package:flutter/material.dart';
import 'package:super_visita/components/editor.dart';
import 'package:super_visita/models/login.dart';
import 'package:super_visita/screens/widget_logotipo.dart';
import 'widget_logotipo.dart';

class FormularioLogin extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return FormularioLoginState();
  }
}

class FormularioLoginState extends State<FormularioLogin>{
  final TextEditingController _ctrlUsuario = TextEditingController();
  final TextEditingController _ctrlSenha = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            LogotipoWidget(),
            Editor(
                controlador: _ctrlUsuario,
                dica: 'Usuário',
                icone: Icons.person_outline),
            Editor(
                controlador: _ctrlSenha,
                dica: 'Senha',
                icone: Icons.lock_outline),
            RaisedButton(
              child: Text(
                'Entrar',
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
              onPressed: () => _fazLogin(context),
            ),
          ],
        ),
      ),
    );
  }

  // MÉTODO PARA LOGAR
  void _fazLogin(BuildContext context) {
    final String usuarioLogin = _ctrlUsuario as String;
    final String senhaLogin = _ctrlSenha as String;
    if (usuarioLogin != null && senhaLogin != null) {
      final loginRealizado = Login(usuarioLogin, senhaLogin);
      Navigator.pop(context, loginRealizado);
    }
  }
}