import 'package:gasolinaalcool/widgets/logo.dart';
import 'package:flutter/material.dart';

void main() => runApp(const Teste());

class Teste extends StatelessWidget {
  const Teste({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Gasolina ou Álcool",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: Pagina(),
    );
  }
}

class Pagina extends StatefulWidget {
  const Pagina({Key? key}) : super(key: key);

  @override
  _PaginaState createState() => _PaginaState();
}

class _PaginaState extends State<Pagina> {
  double gasolina = 0.0;
  double alcool = 0.0;
  bool showResult = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: ListView(
        children: [
          const SizedBox(height: 20),
          Logo(),
          const SizedBox(height: 20),
          if (!showResult) ...[
            _valores("Gasolina", gasolina, (value) {
              setState(() {
                gasolina = double.tryParse(value) ?? 0.0;
              });
            }),
            _valores("Álcool", alcool, (value) {
              setState(() {
                alcool = double.tryParse(value) ?? 0.0;
              });
            }),
            const SizedBox(height: 20),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 30),
              height: 60,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(60),
              ),
              child: TextButton(
                onPressed: () {
                  setState(() {
                    showResult = true;
                  });
                },
                child: Text(
                  "CALCULAR",
                  style: TextStyle(
                    color: Colors.deepPurple,
                    fontSize: 25,
                    fontFamily: "fonte",
                  ),
                ),
              ),
            ),
          ],
          if (showResult) ...[
            _resultado(),
          ],
        ],
      ),
    );
  }

  Widget _valores(String label, double value, ValueChanged<String> onChanged) {
    return Row(
      children: <Widget>[
        Container(
          width: 100,
          alignment: Alignment.centerRight,
          child: Text(
            label,
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
            keyboardType: TextInputType.number,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 50,
              fontFamily: "fonte",
            ),
            onChanged: onChanged,
            decoration: const InputDecoration(
              border: InputBorder.none,
              hintText: "0.00",
              hintStyle: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _resultado() {
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
            gasolina * 0.7 > alcool ? "Compensa utilizar Álcool!" : "Compensa utilizar Gasolina!",
            style: TextStyle(
              color: Theme.of(context).primaryColor,
              fontSize: 40,
              fontFamily: "fonte",
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 30,
          ),
          Container(
            margin: const EdgeInsets.all(30),
            height: 60,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.deepPurple,
              borderRadius: BorderRadius.circular(60),
            ),
            child: TextButton(
              onPressed: () {
                setState(() {
                  showResult = false;
                  gasolina = 0.0;
                  alcool = 0.0;
                });
              },
              child: Text(
                "CALCULAR NOVAMENTE",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontFamily: "fonte",
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
