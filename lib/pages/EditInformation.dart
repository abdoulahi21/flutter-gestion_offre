import 'package:flutter/material.dart';
import 'CV/data.dart'; // Assurez-vous que le chemin d'accès est correct

class EditInformationPage extends StatefulWidget {
  @override
  _EditInformationPageState createState() => _EditInformationPageState();
}

class _EditInformationPageState extends State<EditInformationPage> {
  final _formKey = GlobalKey<FormState>();

  // Créez des contrôleurs pour chaque champ de textrs
  late TextEditingController _fullNameController;
  late TextEditingController _currentPositionController;
  late TextEditingController _emailController;
  late TextEditingController _phoneNumberController;

  @override
  void initState() {
    super.initState();
    // Initialisez les contrôleurs avec les valeurs actuelles
    _fullNameController = TextEditingController(text: data.fullName);
    _currentPositionController = TextEditingController(text: data.currentPosition);
    _emailController = TextEditingController(text: data.email);
    _phoneNumberController = TextEditingController(text: data.phoneNumber);
  }

  @override
  void dispose() {
    // Nettoyez les contrôleurs lorsque le widget est supprimé
    _fullNameController.dispose();
    _currentPositionController.dispose();
    _emailController.dispose();
    _phoneNumberController.dispose();
    super.dispose();
  }

  void _saveForm() {
    if (_formKey.currentState!.validate()) {
      // Mettez à jour l'objet data avec les nouvelles valeurs
      setState(() {
        data.fullName = _fullNameController.text;
        data.currentPosition = _currentPositionController.text;
        data.email = _emailController.text;
        data.phoneNumber = _phoneNumberController.text;
      });

      Navigator.pop(context);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Modifier les informations'),
        actions: [
          IconButton(
            icon: Icon(Icons.save),
            onPressed: _saveForm,
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Form(
          key: _formKey,
          child: Column(
            children: <Widget>[
              TextFormField(
                controller: _fullNameController,
                decoration: InputDecoration(labelText: 'Nom complet'),
                validator: (value) {
                  return (value == null || value.isEmpty) ? 'Veuillez entrer un nom complet.' : null;
                },
              ),
              TextFormField(
                controller: _currentPositionController,
                decoration: InputDecoration(labelText: 'Position actuelle'),
                validator: (value) {
                  return (value == null || value.isEmpty) ? 'Veuillez entrer votre position actuelle.' : null;
                },
              ),
              TextFormField(
                controller: _emailController,
                decoration: InputDecoration(labelText: 'E-mail'),
                validator: (value) {
                  return (value == null || !value.contains('@')) ? 'Veuillez entrer un e-mail valide.' : null;
                },
              ),
              TextFormField(
                controller: _phoneNumberController,
                decoration: InputDecoration(labelText: 'Numéro de téléphone'),
                validator: (value) {
                  return (value == null || value.isEmpty) ? 'Veuillez entrer un numéro de téléphone.' : null;
                },
              ),
              // Ajoutez d'autres champs si nécessaire
            ],
          ),
        ),
      ),
    );
  }
}
