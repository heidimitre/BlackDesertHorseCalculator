import 'package:bdo_horse_calculator/model/model.dart';
import 'package:bdo_horse_calculator/redux/actions.dart';

AppState appStateReducer(AppState state, action) {
  return AppState(
    maleHorseTier: maleHorseTierReducer(state.maleHorseTier, action),
  );
}

int maleHorseTierReducer(int state, action) {
  if(action is UpdateMaleHorseTier) {
    return action.tier;
  }
  return state;
}