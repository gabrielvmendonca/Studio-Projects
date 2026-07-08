import 'package:flutter/material.dart';

class OperacaoImc extends StatefulWidget{
  const OperacaoImc({super.key});

  @override
  State<OperacaoImc> createState()=> _OperacaoImcState();
}

class _OperacaoImcState extends State<OperacaoImc>{
  final TextEditingController pesoController = TextEditingController();
  final TextEditingController alturaController = TextEditingController();

  String resultado = '';
  String classificacao = '';

  void limparCampos(){

    setState(() {
      pesoController.clear();
      alturaController.clear();
      resultado = '';
      classificacao = '';
    });
  }

  void calcularImc(){

    double? peso = double.tryParse(pesoController.text);
    double? altura = double.tryParse(alturaController.text);

    if (peso == null || altura == null){
      setState(() {
        resultado = 'Digite peso e altura Validos.';
        classificacao = '';
      });
      return;
    }

    if (peso <= 0 || altura <= 0){
      setState(() {
        resultado = 'Peso e altura desem ser maiores que zero.';
        classificacao = '';
      });
      return;
    }

    double imc = peso / (altura * altura);

    String classificacaoImc;

    if (imc < 18.5 ){
      classificacaoImc = 'Abaixo do peso';
    }else if (imc >= 18.5 && imc <= 24.9){
      classificacaoImc = 'Peso normal';
    }else if (imc >= 25.0 && imc <= 29.9){
      classificacaoImc = 'Sobrepeso';
    }else if (imc >= 35.0 && imc <= 39.9){
      classificacaoImc = 'Obesidade grau II ';
    }else {
      classificacaoImc = 'Obesidade grau III ';
    }
    setState(() {
      resultado = 'Seu IMC é: ${imc.toStringAsFixed(2)}';
      classificacao = 'Classificação: $classificacaoImc';
    });
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text('claculao de IMC'),
        centerTitle: true,
      ),

      body: SingleChildScrollView(
        child: Padding(
            padding: const EdgeInsetsGeometry.all(24.0),

            child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const Icon(
                  Icons.monitor_weight,
                  size: 90,
                  color: Colors.deepPurpleAccent,
                ),

                const SizedBox(height: 20),

                const Text(
                  'Informe seu peso e sua altura para calcular o IMC.',
                  style: TextStyle(
                    fontSize: 18,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 30),

                TextField(
                  controller: pesoController,
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    labelText: 'Peso em kg',
                    hintText: 'Exemplo: 100',
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.fitness_center),
                  ),
                ),
                const SizedBox(height: 20),

                TextField(
                  controller: alturaController,
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    labelText: 'Altua em metros',
                    hintText: 'Exemplo: 2.10',
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.height),
                  ),
                ),
                const SizedBox(height: 30),

                ElevatedButton(
                    onPressed: calcularImc,
                    child: const Text(
                        'Calcular IMC',
                      style: TextStyle(fontSize: 18),
                    ),
                ),

                const SizedBox(height: 15),

                OutlinedButton(
                    onPressed: limparCampos,
                    child: const Text(
                      'Limpar',
                      style: TextStyle(fontSize: 18),
                    ),
                ),

                const SizedBox(height: 30),

                Container(
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Colors.deepPurpleAccent,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.deepPurple),
                  ),

                  child: Column(
                    children: [
                      Text(
                          resultado,
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),

                      const SizedBox(height:  10),

                      Text(
                        classificacao,
                        style: const TextStyle(
                          fontSize: 18,
                        ),
                        textAlign: TextAlign.center,
                      ) ,

                    ],
                  ),
                ),

                const SizedBox(height: 30),

                const Text('Tabela de classificação do IMC:',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 10),

                const Text(
                  'Abaixo de 18,5: Abaixo do peso\n'
                      '18,5 ate 24,9: Peso normal\n'
                      '25,0 ate 29,9: Sobrepeso\n'
                      '30,0 ate 34,9: Obesidade grau I\n'
                      '35,0 ate 39,9: Obesidade grau II\n'
                      'Acima de 40,0: Obesidade grau III\n',
                  style: TextStyle(fontSize: 16),

                ),
              ],
        ),

        ),
      ),




    );
  }



}