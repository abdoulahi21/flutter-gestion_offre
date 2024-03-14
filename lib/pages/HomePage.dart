import 'package:flutter/material.dart';
import 'package:gestion_offre/pages/DetailOffre.dart';


// Modèle pour représenter une offre
class Offre {
  final String titre;
  final String nomEntreprise;
  final String lieu;
  final String criteres;

  Offre({
    required this.titre,
    required this.nomEntreprise,
    required this.lieu,
    required this.criteres,
  });
}

class HomePage extends StatelessWidget {
  // Liste fictive d'offres
  final List<Offre> listeOffres = [
    Offre(
      titre: 'Développeur Full Stack',
      nomEntreprise: 'GeekElectro',
      lieu: 'Paris',
      criteres: 'Expérience de 2 ans minimum',
    ),
    Offre(
      titre: 'Designer UI/UX',
      nomEntreprise: 'Startup Innovante',
      lieu: 'Lyon',
      criteres: 'Maîtrise de Sketch et Adobe XD',
    ),
    Offre(
      titre: 'Ingénieur DevOps',
      nomEntreprise: 'Tech Solutions',
      lieu: 'Marseille',
      criteres: 'Connaissance approfondie de Docker et Kubernetes',
    ),
    // Ajoutez autant d'offres que nécessaire
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Recherche Emploi", style: TextStyle(color: Colors.white)),
        iconTheme: IconThemeData(color: Colors.white),
        actions: [
          IconButton(
            icon: Icon(
              Icons.logo_dev,
              color: Colors.white,
            ), // Remplacez cela par l'icône de votre logo
            onPressed: () {
              // Action lorsque l'icône du logo est cliquée
            },
          ),
        ],
      ),
      floatingActionButton: Container(
        margin: EdgeInsets.only(top: kToolbarHeight + 30),
        child: FloatingActionButton.extended(
          onPressed: () {
            // Action lorsque le bouton est cliqué
          },
          label: Text(
            'Publier une offre',
            style: TextStyle(color: Colors.white),
          ),
          icon: Icon(Icons.add, color: Colors.white,),
          backgroundColor: Colors.orange,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.startTop,
      drawer: Drawer(
        child: Container(
          color: Colors.blue, // Changer la couleur de fond du menu latéral
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              DrawerHeader(
                child: Text('Menu', style: TextStyle(color: Colors.white)),
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
              ),
              ListTile(
                title: Text('Mon CV', style: TextStyle(color: Colors.white)),
                onTap: () {
                  // Action lorsque le premier élément du menu est cliqué
                },
              ),
              ListTile(
                title: Text('Offre Postules', style: TextStyle(color: Colors.white)),
                onTap: () {
                  // Action lorsque le deuxième élément du menu est cliqué
                },
              ),
              ListTile(
                title: Text('Favoris', style: TextStyle(color: Colors.white)),
                onTap: () {
                  // Action lorsque le deuxième élément du menu est cliqué
                },
              ),
              ListTile(
                title: Text('Modifier mes infos', style: TextStyle(color: Colors.white)),
                onTap: () {
                  // Action lorsque le deuxième élément du menu est cliqué
                },
              ),
            ],
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: listeOffres.length,
        itemBuilder: (context, index) {
          var offre = listeOffres[index];
          return GestureDetector(
            onTap: () {
              // Naviguer vers la page de détails de l'offre
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailOffrePage(offre: offre),
                ),
              );
            },
            child: Container(
              margin: EdgeInsets.all(8.0),
              padding: EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    offre.titre,
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8.0),
                  Text(
                    offre.nomEntreprise,
                    style: TextStyle(
                      fontSize: 16.0,
                    ),
                  ),
                  Text(
                    offre.lieu,
                    style: TextStyle(
                      fontSize: 16.0,
                    ),
                  ),
                  Text(
                    offre.criteres,
                    style: TextStyle(
                      fontSize: 16.0,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        'Plus de détails',
                        style: TextStyle(
                          fontSize: 14.0,
                          color: Colors.blue,
                        ),
                      ),
                      Icon(
                        Icons.arrow_forward,
                        color: Colors.blue,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}