import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:super_visita/screens/grade_funcoes.dart';

void main() => runApp(SuperVisitaApp());

class SuperVisitaApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Color(0xFF0D47A1),
        accentColor: Colors.blue,
        buttonTheme: ButtonThemeData(
          buttonColor: Colors.orange,
          textTheme: ButtonTextTheme.primary,
        ),
      ),
      home: Scaffold(
        body: GradeFuncoes(),
      ),
    );
  }
}







