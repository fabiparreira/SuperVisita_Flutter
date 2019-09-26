import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() => runApp(SuperVisitaApp());

class SuperVisitaApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: GradeFuncoes(),
      ),
    );
  }
}

class FormularioVisita extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      appBar: AppBar(
        leading: Icon(
          Icons.flag,
          size: 30,
        ),
        backgroundColor: Colors.indigo,
        title: Text(
          'Formulário de Visita',
          style: TextStyle(
            fontSize: 24,
          ),
        ),
      ),
    );
  }
}

class GradeFuncoes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      appBar: AppBar(
        backgroundColor: Color(0xFF0D47A1),
        title: Text(
          'Super Visita',
          style: TextStyle(fontSize: 30),
        ),
      ),
      body: GridView.count(
        primary: false,
        padding: const EdgeInsets.all(10.0),
        crossAxisCount: 2,
        childAspectRatio: 1.6,
        mainAxisSpacing: 5.0,
        crossAxisSpacing: 5.0,
        children: <Widget>[
          RaisedButton(
            child: ListTile(
              subtitle: Text('Visualize ou altere seus dados pessoais'),
              leading: Icon(
                Icons.assignment_ind,
                size: 40,
                color: Color(0xFF0D47A1),
              ),
              title: Text(
                'Meu perfil',
                style: TextStyle(fontSize: 30),
              ),
            ),
            color: Colors.white,
            onPressed: (){
              final Future<Agendamento> future = Navigator.push(context,
                  MaterialPageRoute(builder: (context) {
                    return FormularioAgendamentoWidget(); // TROCAR POR FORMULÁRIO CORRETO
                  }));
              future.then((agendamentoRecebido) {
                debugPrint('chegou no then do future');
                debugPrint('$agendamentoRecebido');
              });
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
              final Future<Agendamento> future = Navigator.push(context,
                  MaterialPageRoute(builder: (context) {
                    return FormularioAgendamentoWidget(); // TROCAR POR FORMULÁRIO CORRETO
                  }));
              future.then((agendamentoRecebido) {
                debugPrint('chegou no then do future');
                debugPrint('$agendamentoRecebido');
              });
            },
          ),
          RaisedButton(
            child: ListTile(
              subtitle: Text('Visualize data e horário das visitas já agendadas'),
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
              final Future<Agendamento> future = Navigator.push(context,
                  MaterialPageRoute(builder: (context) {
                    return FormularioAgendamentoWidget(); //TROCAR POR FORMULÁRIO CERTO
                  }));
              future.then((agendamentoRecebido) {
                debugPrint('chegou no then do future');
                debugPrint('$agendamentoRecebido');
              });
            },
          ),
          RaisedButton(
              child: ListTile(
                subtitle: Text('Defina data e horário para uma nova visita'),
                leading: Icon(
                  Icons.schedule,
                  size: 40,
                  color: Color(0xFF0D47A1),
                ),
                title: Text(
                  'Agendar nova visita',
                  style: TextStyle(fontSize: 25),
                ),
              ),
              color: Colors.white,
              onPressed: () {
                final Future<Agendamento> future = Navigator.push(context,
                    MaterialPageRoute(builder: (context) {
                  return FormularioAgendamentoWidget();
                }));
                future.then((agendamentoRecebido) {
                  debugPrint('chegou no then do future');
                  debugPrint('$agendamentoRecebido');
                });
              }),
        ],
        shrinkWrap: true,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0, // this will be set when a new tab is tapped
        items: [
          BottomNavigationBarItem(
            icon: new Icon(
              Icons.local_play,
              color: Color(0xFF0D47A1),
            ),
            title: new Text(
              'Visitar',
              style: TextStyle(fontSize: 20),
            ),
          ),
          BottomNavigationBarItem(
            icon: new Icon(Icons.exit_to_app),
            title: new Text(
              'Sair',
              style: TextStyle(fontSize: 20),
            ),
          ),
        ],
      ),
    );
  }
}

class LogotipoWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var assetsImage = new AssetImage('assets/logoSV.png');
    var image = new Image(image: assetsImage, width: 800.0, height: 300.0);
    return new Container(child: image);
  }
}

// CLASSE PARA FAZER LOGIN
class Login {
  final String usuarioLogin;
  final String senhaLogin;

  Login(this.usuarioLogin, this.senhaLogin);

  @override
  String toString() {
    return 'Login{usuarioLogin: $usuarioLogin, senhaLogin: $senhaLogin}';
  }
}

// WIDGET (TELA) PARA LOGIN
class FormularioLoginWidget extends StatelessWidget {
  final TextEditingController _ctrlUsuario = TextEditingController();
  final TextEditingController _ctrlSenha = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: <Widget>[
          LogotipoWidget(),
          EditorLogin(
              controlador: _ctrlUsuario,
              dica: 'Usuário',
              icone: Icons.person_outline),
          EditorLogin(
              controlador: _ctrlSenha,
              dica: 'Senha',
              icone: Icons.lock_outline),
          RaisedButton(
            child: Text(
              'Entrar',
              style: TextStyle(fontSize: 20, color: Colors.white),
            ),
            onPressed: () => _fazLogin(),
          ),
        ],
      ),
    );
  }

  // MÉTODO PARA LOGAR
  void _fazLogin() {
    final String usuarioLogin = _ctrlUsuario as String;
    final String senhaLogin = _ctrlSenha as String;
    if (usuarioLogin != null && senhaLogin != null) {
      final usuarioLogado = Login(usuarioLogin, senhaLogin);
    }
  }
}

// CLASSE EDITOR LOGIN
class EditorLogin extends StatelessWidget {
  final TextEditingController controlador;
  final String dica;
  final IconData icone;

  EditorLogin({this.controlador, this.dica, this.icone});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: TextField(
        controller: controlador,
        style: TextStyle(
          fontSize: 16.0,
        ),
        decoration: InputDecoration(
          icon: Icon(icone),
          hintText: dica,
        ),
      ),
    );
  }
}

// CLASSE PARA AGENDAR NOVA VISITA
class Agendamento {
  final String localVisita;
  final String dataAgendada;

  Agendamento(this.localVisita, this.dataAgendada);

  @override
  String toString() {
    return 'Agendamento{localVisita: $localVisita, dataAgendada: $dataAgendada}';
  }
}

// WIDGET (TELA) PARA AGENDAMENTO
class FormularioAgendamentoWidget extends StatelessWidget {
  final TextEditingController _ctrlLocalVisita = TextEditingController();
  final TextEditingController _ctrlDataAgendada = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color(0xFF0D47A1),
        title: Text(
          'Agendar novas visitas',
          style: TextStyle(fontSize: 30),
        ),
      ),
      body: Column(
        children: <Widget>[
          LogotipoWidget(),
          EditorAgendamento(
              controladorAgendamento: _ctrlLocalVisita,
              dica: 'Unidade Escolar',
              icone: Icons.place),
          EditorAgendamento(
              controladorAgendamento: _ctrlDataAgendada,
              dica: 'Data',
              icone: Icons.today),
          RaisedButton(
            child: Text(
              'Concluir Agendamento',
              style: TextStyle(fontSize: 20, color: Colors.white),
            ),
            color: Color(0xFF0D47A1),
            elevation: 2.0,
            onPressed: () => _fazAgendamento(context),
          ),
        ],
      ),
    );
  }

  // MÉTODO PARA AGENDAR
  void _fazAgendamento(BuildContext context) {
    final String localVisita = _ctrlLocalVisita.text;
    final String dataAgendada = _ctrlDataAgendada.text;
    if (localVisita != null && dataAgendada != null) {
      final visitaAgendada = Agendamento(localVisita, dataAgendada);
      debugPrint('Criando agendamento');
      debugPrint('$visitaAgendada');
      Navigator.pop(context, visitaAgendada);
    }
  }
}

class EditorAgendamento extends StatelessWidget {
  final TextEditingController controladorAgendamento;
  final String rotulo;
  final String dica;
  final IconData icone;

  EditorAgendamento(
      {this.controladorAgendamento, this.rotulo, this.dica, this.icone});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: TextField(
        controller: controladorAgendamento,
        style: TextStyle(
          fontSize: 16.0,
        ),
        decoration: InputDecoration(
          icon: Icon(icone),
          labelText: rotulo,
          hintText: dica,
        ),
      ),
    );
  }
}

// WIDGET (TELA) PARA VISITAS AGENDADAS
class ListaVisitasAgendadas extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Visitas Agendadas'),
      ),
      body: ListView(
        children: <Widget>[
          ItemVisitaAgendada(Agendamento('CEM Valdir', '24/10/2019')),
          ItemVisitaAgendada(Agendamento('CEM Maria Martins', '26/10/2019')),
          ItemVisitaAgendada(Agendamento('CEMEI Elza', '28/10/2019')),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: (){},
      ),
    );
  }
}

class ItemVisitaAgendada extends StatelessWidget {
  final Agendamento _agendamento;

  ItemVisitaAgendada(this._agendamento);

  @override
  Widget build(BuildContext context) {
    return Card(
        child: ListTile(
          leading: Icon(Icons.stars),
          title: Text(_agendamento.localVisita),
          subtitle: Text(_agendamento.dataAgendada),
        ));
  }
}

