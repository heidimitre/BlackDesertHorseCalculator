import 'package:intl/intl.dart';

class Outcome {
  double score;
  Map<String, double> outcomeMap;

  Outcome(this.score, this.outcomeMap);

  void printOutcome(){
    var formatter = new NumberFormat.percentPattern();
    print("Score is: " + this.score.toString());
    print("Outcomes:");
    this.outcomeMap.forEach((possibleHorse, probability){
      print(possibleHorse + " " + formatter.format(probability));
    });
  }
}