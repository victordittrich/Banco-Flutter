import 'package:flutter/material.dart';
import 'package:rock_paper_scisor_game/screens/results_screen.dart';
import 'package:rock_paper_scisor_game/utilis/game.dart';
import 'package:rock_paper_scisor_game/widgets/button.dart';

class MenuInicial extends StatefulWidget {
  const MenuInicial({Key? key}) : super(key: key);

  @override
  _MenuInicialState createState() => _MenuInicialState();
}

class _MenuInicialState extends State<MenuInicial> {
  @override
  Widget build(BuildContext context) {
    double btnWidth = MediaQuery.of(context).size.width / 2 - 40;
    return Scaffold(
      backgroundColor: Color(0xFF060A47),
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
                    ])),
                Padding(
                  padding: const EdgeInsets.only(top: 80),
                  child: Container(
                    width: double.infinity,
                    child: RawMaterialButton(
                      padding: EdgeInsets.all(24.0),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => GameScreen()),
                        );
                      },
                      shape: StadiumBorder(),
                      fillColor: Colors.white,
                      child: Text(
                        "Sacar",
                        style: TextStyle(
                            color: Color(0xFF060A47),
                            fontSize: 26.0,
                            fontWeight: FontWeight.bold),
                      ),
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
