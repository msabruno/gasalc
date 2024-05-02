import 'package:flutter/material.dart';
import 'package:gasoalcool/widgets/carregar.dart';
import 'package:gasoalcool/widgets/logo.dart';
import 'package:gasoalcool/widgets/ir.dart';
void main() => runApp(const Teste());

class Teste extends StatelessWidget {
  const Teste({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Gasolina ou Alcool",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: Pagina(),
    );
  }
}
class Pagina extends StatelessWidget {
  const Pagina({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: ListView(
        children:[
          const Logo(),

          Row( 
            children:<Widget> [
              Container(
                width: 100,
                alignment: Alignment.centerRight,
                child: const Text(
                  "Gasolina",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 35,
                    fontFamily: "fonte",
                  ),
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              Expanded(
              child: TextFormField(
              initialValue: "0,00",
              keyboardType: TextInputType.number,
              style: const TextStyle(
              color: Colors.white,
              fontSize: 50,
              fontFamily: "fonte",
            ),
          decoration: const InputDecoration(
            border: InputBorder.none,
            ),
          ),
        ),
      ],
    ),
    Row( 
          children:<Widget> [
            Container(
              width: 100,
              alignment: Alignment.centerRight,
              child: const Text(
                "Álcool",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 35,
                    fontFamily: "fonte",
                  ),
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              Expanded(
              child: TextFormField(
              initialValue: "0,00",
              keyboardType: TextInputType.number,
              style: const TextStyle(
              color: Colors.white,
              fontSize: 50,
              fontFamily: "fonte",
            ),
            
            
          decoration: const InputDecoration(
            border: InputBorder.none,
            ),
          ),
        ),
      ],
    ),
         CarregarButton(
          busy: false, 
          func: () {},
           invert: false, 
           text: "CALCULAR",
           ),
           ], 
          ),
      );
  }
}
