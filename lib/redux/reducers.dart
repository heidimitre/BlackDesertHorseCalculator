import 'package:bdo_horse_calculator/model/horse.dart';
import 'package:bdo_horse_calculator/model/model.dart';
import 'package:bdo_horse_calculator/model/outcome.dart';
import 'package:bdo_horse_calculator/model/score.dart';
import 'package:bdo_horse_calculator/redux/actions.dart';
import 'package:bdo_horse_calculator/resources/possibleOutcomes.dart';
import 'package:bdo_horse_calculator/resources/tierScores.dart';

AppState appStateReducer(AppState state, action) {
  return AppState(
    maleHorse: maleHorseReducer(state.maleHorse, action),
    femaleHorse: femaleHorseReducer(state.femaleHorse, action),
    currentOutcome: outcomeReducer(state.currentOutcome, state.maleHorse, state.femaleHorse, action)
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

Outcome outcomeReducer(Outcome previousOutcome, Horse maleHorse, Horse femaleHorse, action) {
  if(action is CalculateOutcome) {
    TierScores tierscores = new TierScores();
    PossibleOutcomes possibleOutcomes = new PossibleOutcomes();
    possibleOutcomes.printOutcomes();

    int calculatedScore;
    bool scoreFound = false;
    int levelSum = maleHorse.level + femaleHorse.level;

    //Using male tier since same tier since only same tier is supported
    int tier = maleHorse.tier;
    print("Tier is: " + tier.toString());

    List<Score> scores = tierscores.list[tier-1];

    int index = 0;
    while(!scoreFound) {
      if (levelSum < scores[index].upperBound &&
          levelSum >= scores[index].lowerBound){
        calculatedScore = scores[index].value;
        scoreFound = true;
      }
      index++;
    }

    print("Sum is: " + levelSum.toString());
    print("Calculated score is: " + calculatedScore.toString());

    Outcome calculatedOutcome = possibleOutcomes.getOutcome(calculatedScore);
    print(calculatedOutcome.outcomeFormatter());
    return calculatedOutcome;
  }
  return previousOutcome;
}