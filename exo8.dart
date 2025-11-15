class Livre {
  String titre, auteur;
  int _pages = 200;
  static int totalLivres = 0;

  Livre(this.titre, this.auteur) {
    totalLivres++;
  }

  int get pages => _pages;

  void afficherInfos() {
    print('Titre: $titre, Auteur: $auteur');
  }

  static void afficherTotalLivres() {
    print('Total de livres créés: $totalLivres');
  }
}

class Roman extends Livre {
  String genre;
  Roman(String titre, String auteur, this.genre) : super(titre, auteur);

  @override
  void afficherInfos() {
    print('Titre: $titre, Auteur: $auteur, Genre: $genre');
  }
}

void main() {
  var l1 = Livre('1984', 'George Orwell');
  var l2 = Roman('Le Comte de Monte-Cristo', 'Alexandre Dumas', 'Aventure');

  l1.afficherInfos();
  l2.afficherInfos();

  Livre.afficherTotalLivres();
}
