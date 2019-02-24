import 'package:bdo_horse_calculator/model/outcome.dart';

class PossibleOutcomes {
  List<Outcome> list;

  PossibleOutcomes(){
    list = [];

    Map<String, int> level3outcomes = {"1F":33, "2M":67};
    Outcome scoreLevel3 = new Outcome(3, level3outcomes);
    list.add(scoreLevel3);


  }

  Outcome getOutcome(int score) {
    list.forEach((outcome) {
      if(outcome.score == score) {
        print("Score is : " + score.toString());
        return outcome;
      }
    });
    return null;
  }
}