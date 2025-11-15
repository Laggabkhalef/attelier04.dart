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
  @override
  void deconnecter() {
    print('BaseDeDonnees : Déconnexion effectuée.');
  }

void main() {
  var services = <Connectable>[
    ServeurAPI(),
    BaseDeDonnees()
  ];

  for (var service in services) {
    service.connecter('Alice');
    service.deconnecter();
  }
}