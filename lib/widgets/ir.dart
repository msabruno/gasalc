import 'package:flutter/material.dart';
import 'package:gasoalcool/widgets/carregar.dart';

// ignore: must_be_immutable
class Success extends StatelessWidget {
  var result = "";
  Function reset;

  Success({super.key, 
    required this.result,
    required this.reset,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(30),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(25),
      ),
      child: Column(
        children: <Widget>[
          const SizedBox(
            height: 50,
          ),
          Text(
            result,
            style: TextStyle(
              color: Theme.of(context).primaryColor,
              fontSize: 40,
              fontFamily: "fonte",
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 20,
          ),
         CarregarButton(
            busy: false,
            func: reset,
            invert: true,
            text: "CALCULAR NOVAMENTE",
          ),
        ],
      ),
    );
  }
}
