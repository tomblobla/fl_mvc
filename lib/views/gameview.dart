import 'package:flutter/material.dart';
import 'package:momentum/momentum.dart';
import 'package:fl_mvc/models/gamemodel.dart';
import 'package:fl_mvc/controllers/gamecontroller.dart';

class GameView extends StatelessWidget {
  const GameView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Click button to get new word'),
          MomentumBuilder(
              controllers: [GameController],
              builder: (context, snapshot) {
                var model = snapshot<GameModel>();
                return Text('${model.word}', style: TextStyle(fontSize: 30));
              }),
          ElevatedButton(
              onPressed: Momentum.controller<GameController>(context).nextWord,
              child: Text('Next word'))
        ],
      ),
    );
  }
}
