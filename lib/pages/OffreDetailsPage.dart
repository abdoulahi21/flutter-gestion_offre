import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class OffreDetailsPage extends StatefulWidget {
  @override
  _OffreDetailsPageState createState() => _OffreDetailsPageState();
}

class _OffreDetailsPageState extends State<OffreDetailsPage> {
  Widget buildOfferContainer() => Container(
    width: 280,
    height: 400,
    decoration: BoxDecoration(
      color: Colors.blue[50],
      borderRadius: BorderRadius.circular(15),
      boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.5),
          spreadRadius: 3,
          blurRadius: 10,
          offset: Offset(0, 3),
        ),
      ],
    ),
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            alignment: Alignment.center,
            child: Image.asset(
              "images/background.png",
              height: 270,
            ),
          ),
          Text(
            "Nom de l'offre ",
            style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 4),
          Text(
            "Description du travail ",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 6),
          RatingBar.builder(
            initialRating: 4,
            minRating: 1,
            direction: Axis.horizontal,
            itemCount: 5,
            itemSize: 16,
            itemPadding: EdgeInsets.symmetric(horizontal: 4),
            itemBuilder: (context, _) => Icon(Icons.star, color: Colors.red),
            onRatingUpdate: (index) {},
          ),
          SizedBox(height: 6),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "\$10",
                style: TextStyle(fontSize: 18, color: Colors.red, fontWeight: FontWeight.bold),
              ),
              ElevatedButton.icon(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: Text("Candidature"),
                        content: Text("Votre candidature a été bien reçue."),
                        actions: [
                          TextButton(
                            child: Text("OK"),
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                          ),
                        ],
                      );
                    },
                  );
                },
                label: const Text('Postuler'),
                icon: const Icon(Icons.account_circle_sharp),
              ),
              Icon(Icons.favorite_outlined, color: Colors.red, size: 18),
            ],
          ),
        ],
      ),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Favoris'),
      ),
      backgroundColor: Color(0xFFF5F3),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(30),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              buildOfferContainer(),
              SizedBox(width: 20), // Espace entre les conteneurs
              buildOfferContainer(),
              SizedBox(width: 20), // Espace entre les conteneurs
              buildOfferContainer(),
            ],
          ),
        ),
      ),
    );
  }
}
