class Compte {
  final String numeroCompte;
  double _solde;
  Compte(tgit .
  his.numeroCompte, [this._solde = 0.0]);
  String get solde => '${_solde.toStringAsFixed(2)} \$';
}