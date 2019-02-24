import 'package:bdo_horse_calculator/model/outcome.dart';

class PossibleOutcomes {
  List<Outcome> list;

  PossibleOutcomes(){
    list = [];

    Map<String, double> level3outcomes = {"1F":.33, "2M":.67};
    Outcome scoreLevel3 = new Outcome(3, level3outcomes);
    list.add(scoreLevel3);

    Map<String, double> level4outcomes = {"2M":.45, "2F":.55};
    Outcome scoreLevel4 = new Outcome(4, level4outcomes);
    list.add(scoreLevel4);


    Map<String, double> level5outcomes = {"2M":.08, "2F":52, "3M":.40};
    Outcome scoreLevel5 = new Outcome(5, level4outcomes);
    list.add(scoreLevel5);

    Map<String, double> level6outcomes = {"2F":.26, "3M":.38, "3F":.36};
    Outcome scoreLevel6 = new Outcome(6, level4outcomes);
    list.add(scoreLevel6);
  }

  Outcome getOutcome(int score) {
    Outcome found;
    list.forEach((outcome) {
      if(outcome.score == score) {
        found = outcome;
      }
    });
    return found;
  }
}