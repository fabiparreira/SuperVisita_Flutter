// CLASSE ESCOLA
class Escola {
  final List<dynamic> idEscola;
  final String nomeEscola;
  final String nomeDiretor;

  Escola({
    this.idEscola,
    this.nomeEscola,
    this.nomeDiretor,
  });

  String get getEscola => nomeEscola;
  String get getDiretor => nomeDiretor;
  List<dynamic> get getIDs => idEscola;

  Map<String, dynamic> toJson() {
    return {
      "ids": this.idEscola,
      "nomeEscola": this.nomeEscola,
      "nomeDiretor": this.nomeDiretor,
    };
  }

  factory Escola.fromJson(Map<String, dynamic> parsedJson) {
    return Escola(
      idEscola: parsedJson['ids'],
      nomeEscola: parsedJson['nomeEscola'],
      nomeDiretor: parsedJson['nomeDiretor'],
    );
  }
}
