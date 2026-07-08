import 'package:flutter/material.dart';


class DetalhePage extends StatelessWidget {
  final String nome;
  final String curso;
  final String turma;
  
  const DetalhePage({
    super.key,
    required this.nome,
    required this.curso,
    required this.turma,
});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detalhes do aluno'),
        backgroundColor: Colors.red,
        foregroundColor: Colors.white,
      ),
      
      body: Padding(
          padding: const EdgeInsetsGeometry.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const CircleAvatar(
              radius: 50,
              backgroundColor: Colors.deepPurple,
              child: Icon(
                Icons.person,
                size: 60,
                color: Colors.white,
              ),
            ),
            
            const SizedBox(height: 20),
            
            Text(
              nome,
              style: const TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            
            const SizedBox(height: 30),
            
            Card(
              elevation: 3,
              child: Padding(
                  padding: const EdgeInsetsGeometry.all(16),
                child: Column(
                  children: [
                    ListTile(
                      leading: const Icon(Icons.school),
                      title: const Text('curso'),
                      subtitle: Text(curso),
                    ),
                    
                    const Divider(),
                    
                    ListTile(
                      leading: const Icon(Icons.groups),
                      title: const Text('Turma'),
                      subtitle: Text(turma),
                    ),

                    const SizedBox(height: 30),

                    SizedBox(
                      width: double.infinity,
                      height: 50,
                      child: ElevatedButton.icon(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: const Icon(Icons.arrow_back),
                          label: const Text('Voltar'),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}