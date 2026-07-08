import 'package:calculadora_uc_12/pages/operacao_IMC.dart';
import 'package:flutter/material.dart';
import 'operacao_math.dart';



class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});



  final String title;


  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        backgroundColor: Theme.of(context).colorScheme.inversePrimary,


        title: Text('Calculadora',
          textAlign: TextAlign.center,
          selectionColor: Colors.white,
        ),
      ),

      backgroundColor: Colors.deepPurple,

      body: Center(


        child: Column(

          mainAxisAlignment: .center,


          children: [
            const Icon(
              Icons.calculate,
              size: 100,
              color: Colors.lightBlue,
            ),

            const SizedBox(height: 16),

            const Text(
              'Choose your destiny...',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 19,
                color: Colors.amberAccent,

              ),
            ),

            const SizedBox(height: 18),

            SizedBox(

              width: 300,
              height: 50,

              child: ElevatedButton.icon(
                icon: const Icon(Icons.functions),
                label: const Text('Operações Matematicas',style: TextStyle(fontSize: 18)),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.lightBlue,
                  foregroundColor: Colors.white,
                  shadowColor: Colors.deepPurple,


                ),
                onPressed: (){
                   Navigator.push(
                   context,
                  MaterialPageRoute(
                  builder: (context) => const OperacaoMath (),
                  ),

                  );

                },

              ),

            ),

            const SizedBox(height: 18),

            SizedBox(

              width: 300,
              height: 50,

              child: ElevatedButton.icon(
                icon: const Icon(Icons.monitor_weight),
                label: const Text('Operações IMC',style: TextStyle(fontSize: 18)),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.lightBlue,
                  foregroundColor: Colors.white,
                  shadowColor: Colors.deepPurple,


                ),
                onPressed: (){
                  Navigator.push(
                  context,
                  MaterialPageRoute(
                  builder: (context) => OperacaoImc(),
                  ),

                  );

                },

              ),

            ),


          ],

        ),
      ),

    );
  }
}
