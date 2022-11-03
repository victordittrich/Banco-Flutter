import 'package:flutter/material.dart';
import 'package:rock_paper_scisor_game/screens/main_screen.dart';
import 'package:rock_paper_scisor_game/screens/results_screen.dart';
import 'package:rock_paper_scisor_game/utilis/game.dart';
import 'package:rock_paper_scisor_game/widgets/button.dart';

class Conta extends StatefulWidget {
  const Conta({Key? key}) : super(key: key);

  @override
  _ContaState createState() => _ContaState();
}

String aviso = "";

class _ContaState extends State<Conta> {
  @override
  var agencia = TextEditingController();
  var conta = TextEditingController();
  Widget build(BuildContext context) {
    double btnWidth = MediaQuery.of(context).size.width / 2 - 40;
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      body: Container(
        child: ListView(
          padding: const EdgeInsets.symmetric(vertical: 34, horizontal: 20),
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                    padding: EdgeInsets.all(16),
                    child: Column(children: [
                      Image.asset(
                        'assets/logo.png',
                        height: 200,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 80),
                        child: TextField(
                          controller: agencia,
                          decoration: InputDecoration(
                            hintText: 'Agência',
                            suffixIcon: IconButton(
                              onPressed: agencia.clear,
                              icon: Icon(Icons.clear),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 50, 0, 50),
                        child: TextField(
                          controller: conta,
                          decoration: InputDecoration(
                            hintText: 'Conta ',
                            suffixIcon: IconButton(
                              onPressed: conta.clear,
                              icon: Icon(Icons.clear),
                            ),
                          ),
                        ),
                      ),
                    ])),
                SizedBox(
                  height: 50,
                  width: 200,
                  child: TextButton(
                    style: TextButton.styleFrom(
                        backgroundColor: Color.fromARGB(255, 255, 255, 255),
                        elevation: 15,
                        shadowColor: Color.fromARGB(255, 0, 0, 0)),
                    child: Text(
                      'Entrar',
                      style: TextStyle(
                        color: Color.fromARGB(255, 0, 0, 0),
                      ),
                    ),
                    onPressed: () {
                      setState(() {
                        if ((agencia.text != "0101") ||
                            (conta.text != "0101")) {
                          conta.clear;
                          agencia.clear;
                          aviso = "Agência ou conta inválida!";
                        } else {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => MenuInicial()),
                          );
                        }
                      });
                    },
                  ),
                ),
              ],
            ),
            Text(
              aviso,
              style: TextStyle(
                color: Color.fromARGB(255, 255, 0, 0),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
