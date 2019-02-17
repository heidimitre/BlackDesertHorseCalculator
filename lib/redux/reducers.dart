import 'package:bdo_horse_calculator/model/horse.dart';
import 'package:bdo_horse_calculator/model/model.dart';
import 'package:bdo_horse_calculator/redux/actions.dart';

AppState appStateReducer(AppState state, action) {
  return AppState(
    maleHorse: maleHorseReducer(state.maleHorse, action),
    femaleHorse: femaleHorseReducer(state.femaleHorse, action),
  );
}

Horse maleHorseReducer(Horse previousHorse, action) {
  if(action is UpdateMaleHorseTier) {
    return new Horse(action.tier, previousHorse.level);
  }
  if(action is UpdateMaleHorseLevel) {
    return new Horse(previousHorse.tier, action.level);
  }
  return previousHorse;
}

Horse femaleHorseReducer(Horse previousHorse, action) {
  if(action is UpdateFemaleHorseTier) {
    return new Horse(action.tier, previousHorse.level);
  }
  if(action is UpdateFemaleHorseLevel) {
    return new Horse(previousHorse.tier, action.level);
  }
  return previousHorse;
}