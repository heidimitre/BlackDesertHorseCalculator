import 'package:intl/intl.dart';

class Outcome {
  double score;
  Map<String, double> outcomeMap;

  Outcome(this.score, this.outcomeMap);

  String outcomeFormatter(){
    var formatter = new NumberFormat.percentPattern();
    String outcomeString = "";
    this.outcomeMap.forEach((possibleHorse, probability){
      outcomeString = outcomeString + possibleHorse + " " + formatter.format(probability) + "\n";
    });
    return outcomeString;
  }
}