import 'package:flutter/material.dart';

import 'package:gestion_offre/pages/HomePage.dart';
import 'package:gestion_offre/pages/DetailOffre.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      title : 'Recherche d\'emploi',
      home: HomePage(),
      routes: {

      },
    );
  }
}


