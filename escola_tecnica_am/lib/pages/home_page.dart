import 'package:flutter/material.dart';
import 'cadastro_page.dart';
import 'lista_alunos_pages.dart';

class HomePage  extends StatelessWidget{
  const HomePage ({super.key});

  @override
  Widget build (BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: const Text('Home'),

        backgroundColor: Colors.deepPurple,
      ),
      body: Padding(

          padding: const EdgeInsetsGeometry.all(24),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,

          children: [
            const Icon(
                Icons.home,
                    size: 90,
              color: Colors.red,

            ),

            const SizedBox(height: 20),

            const Text(
              'Bem-Vindo ao App UC12',
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),

            const SizedBox(height: 12),

            const Text (
              'Nessa tela, você poderá acessar as funcionalidades principais do aplicativo. ',
              style: TextStyle(fontSize: 16),
              textAlign: TextAlign.center,
            ),

            const SizedBox(height: 32),

            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton.icon(
                  onPressed: () {
                    Navigator.push(
                      context,
                        MaterialPageRoute(
                            builder: (context) => const CadastroPage(),
                        ),
                    );
                  },
                icon: const Icon(Icons.person_add),

                label: const Text('Cadastrar aluno'),

              ),
            ),

            const SizedBox(height: 16),

            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton.icon(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ListaAlunoPage(),
                    ),
                  );
                },
                icon: const Icon(Icons.list),

                label: const Text('Listar alunos'),


              ),
            ),

          ],
        ),
      ),
    );

  }

}