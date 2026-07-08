import 'package:flutter/material.dart';
import 'home_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();

 }

 class _LoginPageState extends State<LoginPage>{
  final TextEditingController usuarioController = TextEditingController();
  final TextEditingController senhaController = TextEditingController();

  void entrar(){
    if (usuarioController.text.isEmpty || senhaController.text.isEmpty){
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Preencha usuario e senha'),
        ),
      );
      return;
    }
    if (senhaController.text.length < 6) {
      ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
              content: Text('A senha deve ter pelo menos 6 caracteres'),
          ),
      );
      return;
    }

    Navigator.pushReplacement(
      context,
        MaterialPageRoute(
            builder: (context) => const HomePage()
        ),
      );
  }



  @override
   void dispose(){

    usuarioController.dispose();
    senhaController.dispose();

    super.dispose();
  }

  Widget build(BuildContext context){
    return Scaffold(
      body: Padding(
          padding:const EdgeInsetsGeometry.all(24),

          child: Center(

          child: SingleChildScrollView(

            child: Column(

              crossAxisAlignment: CrossAxisAlignment.center,

              children: [
                const Icon(
                    Icons.phone_android,
                    size: 90,
                  color: Colors.deepPurple,
                ),

                const SizedBox(height: 20),

                const Text(
                  'App UC12',
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const Text(
                    'Interface, usabilidade e mobile',
                    style: TextStyle(fontSize: 16),
                  textAlign: TextAlign.center,

                ),

                const SizedBox(height: 40),

                TextField(
                  controller: usuarioController,
                  decoration: const InputDecoration(
                    labelText: 'Usuarios',
                    prefixIcon: Icon(Icons.person),
                    border: OutlineInputBorder(),
                  ),
                ),

                const SizedBox(height: 16),

                TextField(
                  controller: senhaController,

                  obscureText: true,

                  decoration: const InputDecoration(
                    labelText: 'Senha',
                    prefixIcon: Icon(Icons.lock),
                    border: OutlineInputBorder(),
                  ),
                ),

                const SizedBox(height: 24),

                SizedBox(
                  width: double.infinity,

                  height: 50,

                  child: ElevatedButton(
                      onPressed: entrar,
                      child: const Text('Entrar'),
                  ),
                ),
            ],
           ),
         ),
        ),
      ),
    );
  }

 }