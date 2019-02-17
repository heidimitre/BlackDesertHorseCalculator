import 'package:bdo_horse_calculator/model/model.dart';
import 'package:bdo_horse_calculator/redux/actions.dart';

AppState appStateReducer(AppState state, action) {
  return AppState(
    maleHorseTier: maleHorseTierReducer(state.maleHorseTier, action),
    femaleHorseTier: femaleHorseTierReducer(state.femaleHorseTier, action),
    maleHorseLevel: maleHorseLevelReducer(state.maleHorseLevel, action),
    femaleHorseLevel: femaleHorseLevelReducer(state.femaleHorseLevel, action)
  );
}

int maleHorseTierReducer(int state, action) {
  if(action is UpdateMaleHorseTier) {
    return action.tier;
  }
  return state;
}

int femaleHorseTierReducer(int state, action) {
  if(action is UpdateFemaleHorseTier) {
    return action.tier;
  }
  return state;
}

int maleHorseLevelReducer(int state, action) {
  if(action is UpdateMaleHorseLevel) {
    return action.level;
  }
  return state;
}

int femaleHorseLevelReducer(int state, action) {
  if(action is UpdateFemaleHorseLevel) {
    return action.level;
  }
  return state;
}