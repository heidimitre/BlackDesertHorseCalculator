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


    Map<String, double> level5outcomes = {"2M":.08, "2F":.52, "3M":.40};
    Outcome scoreLevel5 = new Outcome(5, level5outcomes);
    list.add(scoreLevel5);

    Map<String, double> level6outcomes = {"2F":.26, "3M":.38, "3F":.36};
    Outcome scoreLevel6 = new Outcome(6, level6outcomes);
    list.add(scoreLevel6);

    Map<String, double> level7outcomes = {"3M":.34, "3F":.39, "4M": .27};
    Outcome scoreLevel7 = new Outcome(7, level7outcomes);
    list.add(scoreLevel7);

    Map<String, double> level8outcomes = {"3M":.10, "3F": .35, "4M": .30, "4F": .25};
    Outcome scoreLevel8 = new Outcome(8, level8outcomes);
    list.add(scoreLevel8);

    Map<String, double> level9outcomes = {"3F":.22, "4M": .27, "4F": .32, "5M": .19};
    Outcome scoreLevel9 = new Outcome(9, level9outcomes);
    list.add(scoreLevel9);

    Map<String, double> level10outcomes = {"3F":.04, "4M": .25, "4F": .29, "5M": .24, "5F": .18};
    Outcome scoreLevel10 = new Outcome(10, level10outcomes);
    list.add(scoreLevel10);

    Map<String, double> level11outcomes = {"4M": .11, "4F": .26, "5M": .23, "5F": .26, "6M": .14};
    Outcome scoreLevel11 = new Outcome(11, level11outcomes);
    list.add(scoreLevel11);

    Map<String, double> level12outcomes = {"4F": .21, "5M": .21, "5F": .24, "6M": .21, "6F": .13};
    Outcome scoreLevel12 = new Outcome(12, level12outcomes);
    list.add(scoreLevel12);

    Map<String, double> level13outcomes = {"4F": .06, "5M": .19, "5F": .23, "6M": .19, "6F": .23, "7M": .10};
    Outcome scoreLevel13 = new Outcome(13, level13outcomes);
    list.add(scoreLevel13);
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