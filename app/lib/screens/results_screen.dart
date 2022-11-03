import 'dart:math';
import 'package:flutter/material.dart';
import 'package:rock_paper_scisor_game/screens/conta.dart';

class GameScreen extends StatefulWidget {
  @override
  State<GameScreen> createState() => _GameScreenState();
}

bool click = true;
var saldoa = 500;
String sit = "";

class _GameScreenState extends State<GameScreen> {
  @override
  Widget build(BuildContext context) {
    var _controller = TextEditingController();

    void dispose() {
      // limpa o controller quando for liberado
      _controller.dispose();
      super.dispose();
    }

    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      body: Container(
        child: ListView(
          padding: const EdgeInsets.symmetric(vertical: 34, horizontal: 20),
          children: [
            Image.asset(
              'assets/logo.png',
              height: 150,
            ),
            Center(
                child: Padding(
              padding: const EdgeInsets.fromLTRB(0, 30, 0, 30),
              child: Text(
                "Saldo:  " + saldoa.toString() + sit,
                style: TextStyle(
                    color: Color(0xFF060A47),
                    fontSize: 14.0,
                    fontWeight: FontWeight.bold),
              ),
            )),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                TextField(
                  controller: _controller,
                  decoration: InputDecoration(
                    hintText: 'Digite o valor ',
                    suffixIcon: IconButton(
                      onPressed: _controller.clear,
                      icon: Icon(Icons.clear),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 30, 20, 0),
                  child: SizedBox(
                    height: 40,
                    width: 150,
                    child: TextButton(
                      style: TextButton.styleFrom(
                          backgroundColor: Color.fromARGB(255, 255, 255, 255),
                          elevation: 15,
                          shadowColor: Color.fromARGB(255, 0, 0, 0)),
                      child: Text(
                        'Sair',
                        style: TextStyle(
                          color: Color.fromARGB(255, 0, 0, 0),
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Conta()),
                        );
                      },
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 30, 0, 0),
                  child: SizedBox(
                    height: 40,
                    width: 150,
                    child: TextButton(
                      style: TextButton.styleFrom(
                          backgroundColor: Color.fromARGB(255, 255, 255, 255),
                          elevation: 15,
                          shadowColor: Color.fromARGB(255, 0, 0, 0)),
                      child: Text(
                        'Sacar',
                        style: TextStyle(
                          color: Color.fromARGB(255, 0, 0, 0),
                        ),
                      ),
                      onPressed: () {
                        setState(() {
                          var esc = int.parse(_controller.text);
                          if (esc < 0) {
                            esc = 0;
                          }
                          saldoa = saldoa - esc;

                          if (saldoa < 0) {
                            sit = "  (devendo)";
                          } else {
                            sit = "";
                          }
                        });
                      },
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
