import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  const Logo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [  
        const SizedBox(
            height: 40,
          ),
          Image.asset(
            'assets/logo.png',
            height: 80,
          ),
          const SizedBox(
            height: 15,
          ),
          const Text(
            "Álcool ou Gasolina",
            style: TextStyle(
              color: Colors.white,
              fontSize: 30,
              fontFamily: "fonte",
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 20,
          ),
        ],
    );
  }
}