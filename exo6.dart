abstract class Connectable {
  void connecter(String utilisateur);
  void deconnecter();
}
class ServeurAPI implements Connectable {
  @override
  void connecter(String utilisateur) {
    print('ServeurAPI : Connexion établie pour $utilisateur.');
  }
  }
  class BaseDeDonnees implements Connectable {
  @override
  void connecter(String utilisateur) {
    print('BaseDeDonnees : Utilisateur $utilisateur connecté.');
  }
  }