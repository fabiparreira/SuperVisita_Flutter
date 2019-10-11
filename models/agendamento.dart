// CLASSE AGENDAMENTO

class Agendamento {
  final String localVisita;
  final DateTime dataAgendada;

  Agendamento(
    this.localVisita,
    this.dataAgendada,
  );

  String get ctrlDataAgendada => null;

  @override
  String toString() {
    return 'Agendamento{localVisita: $localVisita, dataAgendada: $dataAgendada}';
  }
}
