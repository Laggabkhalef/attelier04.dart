abstract class Forme {
  double calculerAire();
  void afficherMessage() {
    print('Calcul de l\'aire...');
  }
}

class Cercle extends Forme {
  final double rayon;
  Cercle(this.rayon);

  @override
  double calculerAire() => 3.14159 * rayon * rayon;
}class Rectangle extends Forme {
  final double longueur, largeur;
  Rectangle(this.longueur, this.largeur);

  @override
  double calculerAire() => longueur * largeur;
}

void main() {
  var cercle = Cercle(3);
  var rectangle = Rectangle(4, 5);

  cercle.afficherMessage();
  print('Aire cercle: ${cercle.calculerAire()}');

  rectangle.afficherMessage();
  print('Aire rectangle: ${rectangle.calculerAire()}');
}