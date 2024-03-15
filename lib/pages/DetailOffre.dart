import 'package:flutter/material.dart';
import 'HomePage.dart';

class DetailOffrePage extends StatelessWidget {
  final Offre offre;

  DetailOffrePage({required this.offre});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(offre.titre),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              offre.titre,
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              offre.nomEntreprise,
              style: TextStyle(
                fontSize: 18.0,
              ),
            ),
            Text(
              offre.lieu,
              style: TextStyle(
                fontSize: 18.0,
              ),
            ),
            Text(
              offre.criteres,
              style: TextStyle(
                fontSize: 18.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}