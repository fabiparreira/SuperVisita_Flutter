import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:super_visita/screens/tela_login.dart';

void main() => runApp(SuperVisitaApp());

class SuperVisitaApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color(0xFF0D47A1),
        accentColor: Colors.blue,
        buttonTheme: ButtonThemeData(
          textTheme: ButtonTextTheme.primary,
        ),
      ),
      home: Scaffold(
        body: TelaLogin(),
      ),
    );
  }
}
