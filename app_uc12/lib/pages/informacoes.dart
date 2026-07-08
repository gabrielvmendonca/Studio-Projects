import 'package:flutter/material.dart';

class Informacoes extends StatefulWidget{
  const Informacoes({super.key});

  @override
  State<Informacoes> createState() => _Informacoes();
}

class _Informacoes extends State<Informacoes>{
 final TextEditingController _informacoesNome = TextEditingController();
 final TextEditingController _informacoesCPF = TextEditingController();
 final TextEditingController _informacoesEmail = TextEditingController();
 final TextEditingController _informacoesEnd = TextEditingController();
 String mensagem = "";

  @override
  Widget build(BuildContext context){
    return Scaffold(

      appBar: AppBar(

        title: const Text('Dados Pessoais'),

        backgroundColor: Colors.deepPurple,
        foregroundColor: Colors.white,
      ),
      body: Padding(
          padding: const EdgeInsets.all(26),

             child: Column(
             crossAxisAlignment: CrossAxisAlignment.center,

              children: [
               const Icon(
                 Icons.account_circle,
                     size:100,
                        color: Colors.deepPurple,
               ),

               const SizedBox(height: 22),

                const Text(
                  'Nome Completo',
                  style: TextStyle(
                    fontSize: 29,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 22),

                TextField(
                  controller: _informacoesNome,
                  decoration: const InputDecoration(
                    labelText: 'Digite seu nome completo',
                    border: OutlineInputBorder(),
                  ),
                ),

                const SizedBox(height: 22),

                const Text(
                  'CPF',
                  style: TextStyle(
                    fontSize: 29,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 22),

                TextField(
                  controller: _informacoesCPF,
                  decoration: const InputDecoration(
                    labelText: 'Digite seu CPF completo',
                    border: OutlineInputBorder(),
                  ),
                ),

                const SizedBox(height: 22),

                const Text(
                  'E-mail',
                  style: TextStyle(
                    fontSize: 29,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 22),

                TextField(
                  controller: _informacoesEmail,
                  decoration: const InputDecoration(
                    labelText: 'Digite um E-mail',
                    border: OutlineInputBorder(),
                  ),
                ),

                const SizedBox(height: 22),

                const Text(
                  'Endereço Completo',
                  style: TextStyle(
                    fontSize: 29,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 22),

                TextField(
                  controller: _informacoesEnd,
                  decoration: const InputDecoration(
                    labelText: 'Digite seu endereço',
                    border: OutlineInputBorder(),
                  ),
                ),
             ],
        ),
      ),
    );
  }
}