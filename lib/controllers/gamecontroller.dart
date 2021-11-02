import 'package:flutter/widgets.dart';
import 'package:momentum/momentum.dart';
import 'package:fl_mvc/models/gamemodel.dart';

class GameController extends MomentumController<GameModel> {
  final listOfWords = ['swift', 'android', 'flutter'];
  int wordIndex = 0;

  @override
  GameModel init() {
    return GameModel(this, word: listOfWords[wordIndex]);
  }

  void nextWord() {
    wordIndex += 1;
    model.update(word: listOfWords[wordIndex]);

    print(listOfWords[wordIndex]);
  }
}
