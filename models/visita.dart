// CLASSE VISITA
class Visita {
  final List<dynamic> idVisita;
  final bool prontMatricula;
  final bool fichaRemissiva;
  final bool historicoEscolar;
  final bool fichaMatriculaAEE;
  final bool diarioClasse;

  Visita(
    this.idVisita,
    this.prontMatricula,
    this.fichaRemissiva,
    this.historicoEscolar,
    this.fichaMatriculaAEE,
    this.diarioClasse,
  );

  Map<String, dynamic> toJson() {
    return {
      "ids": this.idVisita,
      "prontMatricula": this.prontMatricula,
      "fichaRemissiva": this.fichaRemissiva,
      "historicoEscolar": this.historicoEscolar,
      "fichaMatriculaAEE": this.fichaMatriculaAEE,
      "diarioClasse": this.diarioClasse,
    };
  }

  /*factory Visita.fromJson(Map<String, dynamic> parsedJson) {
    return Visita(
      idVisita parsedJson['ids'],
      prontMatricula: parsedJson['prontMatricula'],
      fichaRemissiva: parsedJson['fichaRemissiva'],
      historicoEscolar: parsedJson['historicoEscolar'],
      fichaMatriculaAEE: parsedJson['fichaMatriculaAEE'],
      diarioClasse: parsedJson['diarioClasse'],
    );
  }*/
}
