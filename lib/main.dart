import 'package:flutter/material.dart';
import 'package:gestion_offre/pages/OffreDetailsPage.dart';
import 'package:gestion_offre/pages/welcome.dart';
import 'package:gestion_offre/pages/CV/MyResumePage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      //home: Welcome(),
      home: OffreDetailsPage(),
      routes: {

      },
    );
  }

}







