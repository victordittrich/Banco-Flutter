import 'package:flutter/material.dart';
import 'package:rock_paper_scisor_game/screens/main_screen.dart';
import 'package:rock_paper_scisor_game/screens/conta.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Conta(),
      debugShowCheckedModeBanner: false,
    );
  }
}
