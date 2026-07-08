import 'package:flutter/material.dart';
import 'operacao_IMC.dart';

class OperacaoMath extends StatefulWidget{
  const OperacaoMath({super.key});

  @override
  State<OperacaoMath> createState() => _OperacoesMath();
}

class _OperacoesMath extends State<OperacaoMath>{
  final TextEditingController numero1Controller = TextEditingController();
  final TextEditingController numero2Controller = TextEditingController();
  String resultado = '';


    void limparCampos(){
      numero1Controller.clear();
      numero2Controller.clear();
  }

  void calcular(String OperacoesMath){
    double? numero1 = double.tryParse(numero1Controller.text);
    double? numero2 = double.tryParse(numero2Controller.text);

    if (numero1 == null||numero2 == null){
      setState(() {
        print('Digite um um numero...');

      });
      return;
    };

     double calculo;

    if (OperacoesMath == 'soma'){
      calculo = numero1 = numero2;

      setState(() {
        resultado = 'REsulatdo da soma : $calculo';
      });
    }else if (OperacoesMath == 'subtracao'){
      calculo = numero1 - numero2;

      setState(() {
        resultado = 'Resultado da subtração : $calculo';

      });
    }else if (OperacoesMath == 'multiplicacao'){
      calculo = numero1 * numero2;

      setState(() {
        resultado = 'Resultado da multiplicação : $calculo';

      });
    }else if (OperacoesMath == 'divisao'){
      if (numero2 ==0){
        setState(() {
          resultado = 'Não pode dividir por 0.';
        });
      }else {
        calculo = numero1 / numero2;

        setState(() {
          resultado = 'Resultado da divisão : $calculo';
        });
      }
    }
  }

  @override
  Widget build(BuildContext){
    return Scaffold(
      appBar: AppBar(
        title:  const Text('Operações Matematicas'),
        centerTitle: true,
      ),
      body:  SingleChildScrollView(
        child: Padding(padding: const EdgeInsetsGeometry.all(24.8),

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Icon(
                Icons.functions_sharp,
                size: 90,
                color: Colors.greenAccent,
              ),
              const SizedBox(height: 20),

              const Text(
                'Informe dois números e escolha uma operção matematica.',
                style: TextStyle(
                  fontSize: 19,
                ),
                textAlign: TextAlign.center,
              ),

              const SizedBox(height: 30),

              TextField(
                controller: numero1Controller,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  labelText: 'Primeiro número',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.looks_one),
                ),
              ),

              const SizedBox(height: 20),

              TextField(
                controller: numero2Controller,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  labelText: 'Segundo número',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.looks_two),
                ),
              ),

              const SizedBox(height: 30),

              ElevatedButton(
                  onPressed: (){
                    calcular('soma');
                  }, child: const Text(
                'Somar',
                style: TextStyle(fontSize: 18),
               ),
              ),

              const SizedBox(height: 10),

              ElevatedButton(
                onPressed: (){
                  calcular('subtracao');
                }, child: const Text(
                'Subtrair',
                style: TextStyle(fontSize: 18),
              ),
              ),

              const SizedBox(height: 10),

              ElevatedButton(
                onPressed: (){
                  calcular('multiplicacao');
                }, child: const Text(
                'Multiplicar',
                style: TextStyle(fontSize: 18),
              ),
              ),

              const SizedBox(height: 10),

              ElevatedButton(
                onPressed: (){
                  calcular('divisao');
                }, child: const Text(
                'Dividir',
                style: TextStyle(fontSize: 18),
              ),
              ),

              const SizedBox(height: 10),

              OutlinedButton(
                  onPressed: limparCampos,
                  child: const Text(
                      'Limpar',
                    style: TextStyle(fontSize: 18),
                  ) ,
              ),

              const SizedBox(height: 30),

              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.deepPurpleAccent,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.deepPurple)
                ),
                child: Text(
                  resultado,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

