class Tache {
  String description;
  static int nombreTotal = 0;
  Tache(this.description) {
    nombreTotal++;
  } 
  }
  void main() {
  var t1 = Tache('Faire les courses');
  var t2 = Tache('Etudier Dart');
  var t3 = Tache('Nettoyer la chambre');

  print('Nombre total de tâches: ${Tache.nombreTotal}');
}