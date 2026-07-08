import 'package:flutter/material.dart';

class CadastroPage extends StatefulWidget{
  const CadastroPage({super.key});

  @override
  State<CadastroPage> createState() => _CadastroPageState();

}

class _CadastroPageState extends State<CadastroPage> {

  final formKey = GlobalKey<FormState>();

  final nomeController = TextEditingController();

  final emailController = TextEditingController();

  final cursoController = TextEditingController();

  void salvarCadastro() {
    if (formKey.currentState!.validate()) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
            content: Text('Cadastro realizado com sucesso!'),
        ),
      );
      nomeController.clear();
      emailController.clear();
      cursoController.clear();
    }
  }

  @override
  void dispose() {
    nomeController.dispose();
    emailController.dispose();
    cursoController.dispose();
    super.dispose();

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cadastro'),

        backgroundColor: Colors.deepPurple,
        foregroundColor: Colors.white,
      ),
      body: Padding(
          padding:const EdgeInsetsGeometry.all(16),

          child: Form(
            key: formKey,

            child: ListView(
              children: [
                const Text(
                    'Cadastro novo aluno',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 20),

                TextFormField(
                  controller: nomeController,

                  decoration: const InputDecoration(
                    labelText: 'Nome',

                    prefixIcon: Icon(Icons.person),

                    border: OutlineInputBorder(),
                  ),

                  validator: (value){
                    if (value == null || value.isEmpty) {
                      return 'Informe o nome';
                    }

                    return null;
                  }
                ),

                const SizedBox(height: 16),

                TextFormField(
                    controller: emailController,

                    decoration: const InputDecoration(
                      labelText: 'E-mail',

                      prefixIcon: Icon(Icons.email),

                      border: OutlineInputBorder(),
                    ),

                    validator: (value){
                      if (value == null || value.isEmpty) {
                        return 'Informe o e-mail';
                      }

                      return null;
                    }
                ),

                const SizedBox(height: 16),

                TextFormField(
                    controller: cursoController,

                    decoration: const InputDecoration(
                      labelText: 'Curso',

                      prefixIcon: Icon(Icons.school),

                      border: OutlineInputBorder(),
                    ),

                    validator: (value){
                      if (value == null || value.isEmpty) {
                        return 'Informe o curso';
                      }

                      return null;
                    }
                ),

                const SizedBox( height: 24),

                SizedBox(
                  height: 50,

                  child:  ElevatedButton.icon(
                      onPressed: salvarCadastro,

                      icon: const Icon(Icons.save),

                      label: const Text('Salvar cadastro'),
                  ),
                ),
              ],
            ),

      ),
      ),
    );
  }
}