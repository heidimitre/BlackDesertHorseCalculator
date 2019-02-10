import 'package:flutter/foundation.dart';

class AppState {
  int maleHorseTier;
  int femaleHorseTier;
  int maleHorseLevel;
  int femaleHorseLevel;

  AppState({
    @required this.maleHorseTier,
    @required this.femaleHorseTier,
    @required this.maleHorseLevel,
    @required this.femaleHorseLevel
  });

  AppState.initialState() {
    maleHorseTier = 1;
    femaleHorseTier = 1;
    maleHorseLevel = 1;
    femaleHorseLevel = 1;
  }
}