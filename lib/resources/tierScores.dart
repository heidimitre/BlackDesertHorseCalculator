import 'package:bdo_horse_calculator/model/score.dart';

class TierScores {
  List<List<Score>> list;

  TierScores(){
    list = [];
    List<Score> tier1List = [
      new Score(0,3,3),
      new Score(2,9,4),
      new Score(9,17,5),
      new Score(17,24,6),
      new Score(24,31,7),
      new Score(31,38,8),
      new Score(38,45,9),
      new Score(45,52,10),
      new Score(52,59,11),
      new Score(59,61,12)
    ];

    list.add(tier1List);

    List<Score> tier2List = [
      new Score(0,7,5),
      new Score(7,14,6),
      new Score(14,22,7),
      new Score(22,29,8),
      new Score(29,36,9),
      new Score(36,43,10),
      new Score(43,50,11),
      new Score(50,57,12),
      new Score(57,61,13)
    ];

    list.add(tier2List);


    //  List<Score> tier3List;
  //  List<Score> tier4List;
  //  List<Score> tier5List;
  //  List<Score> tier6List;
  //  List<Score> tier7List;
  //  List<Score> tier8List;

  //    tier2List = {7:5, 14:6, 22:7, 29:8, 36:9, 43:10, 50:11, 57:12, 60:13};
  //    tier3List = {5:6, 12:7, 19:8, 27:9, 34:10, 41:11, 48:12, 55:13, 60:14};
  //    tier4List = {3:7, 10:8, 17:9, 24:10, 32:11, 39:12, 46:13, 53:14, 60:15};
  //    tier5List = {8:9, 15:10, 22:11, 29:12, 37:13, 44:14, 51:15, 59:16, 60:17};
  //    tier6List = {6:10, 13:11, 20:12, 27:13, 34:14, 42:15, 49:16, 56:17, 60:18};
  //    tier7List = {4:11, 11:12, 18:13, 25:14, 32:15, 39:16, 47:17, 54:18, 60:19};
  //    tier8List = {2:12, 9:13, 16:14, 23:15, 30:16, 37:17, 44:18, 52:19, 59:20, 60:21};
  }

}