import 'package:flutter/material.dart';
import 'package:momentum/momentum.dart';
import 'package:fl_mvc/views/gameview.dart';
import 'package:fl_mvc/controllers/gamecontroller.dart';

void main() {
  runApp(Momentum(controllers: [GameController()], child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter MVC Momentum",
      home: Scaffold(
        appBar: AppBar(
            title: Text('Flutter MVC Momentum'),
            backgroundColor: Colors.teal[300]),
        body: GameView(),
      ),
    );
  }
}
