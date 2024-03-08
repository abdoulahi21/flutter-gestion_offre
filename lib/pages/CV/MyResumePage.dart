import 'package:flutter/material.dart';
import 'package:flutter_resume_template/flutter_resume_template.dart';

import 'data.dart';

class MyResumePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mon CV'),
      ),
      body: FlutterResumeTemplate(
        data: data,
        hobbiesPlaceholder: 'Mes loisirs',
        backgroundColor: Colors.yellow[50],
        languagePlaceHolder: 'Competences',
        templateTheme: TemplateTheme(
          TemplateType.technicalResume, // set the template mode that you would like to customise
          ThemeData(
              primaryColor: Colors.black,
//...
          ),
        ),
        mode: TemplateMode.onlyEditableMode,
        onSaveResume: (globalKey) async =>
        await PdfHandler().createResume(globalKey),
      ),
    );
  }
}