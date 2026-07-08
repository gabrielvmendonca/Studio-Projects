import 'package:flutter/material.dart';

import 'pages/perfil_aluno_page.dart';


void main() {
  runApp(const MeuApp());
}

class MeuApp extends StatelessWidget {
  const MeuApp({super.key});

  @override
  Widget build(BuildContext context) {

    return MaterialApp(

      debugShowCheckedModeBanner: false,

      title: 'Projeto UC12',

      theme: ThemeData(
        primarySwatch: Colors.indigo,
        useMaterial3: true,
      ),

      home: const PerfilAlunoPage(),

    );
  }
}


