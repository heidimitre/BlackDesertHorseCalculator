import 'dart:convert';
import 'package:intl/intl.dart';

class Outcome {
  double score;
  Map<String, double> outcomeMap;

  Outcome(this.score, this.outcomeMap);

  String outcomeFormatter(){
    var formatter = new NumberFormat.percentPattern();
    String outcomeString = "";

    //Minimum score is 3 and default value of outcomeMap is {}
    if(this.score < 3 || this.outcomeMap == {}) {
      return "";
    }
    this.outcomeMap.forEach((possibleHorse, probability){
      outcomeString = outcomeString + possibleHorse + " " + formatter.format(probability) + "\n";
    });
    return outcomeString;
  }

  String toJson() {
    const jsonCodec = const JsonCodec();
    var object = {'score' : this.score, 'outcomeMap' : this.outcomeMap};
    return jsonCodec.encode(object);
  }
}