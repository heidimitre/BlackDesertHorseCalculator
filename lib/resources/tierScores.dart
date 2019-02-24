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


    List<Score> tier3List = [
      new Score(0,5,6),
      new Score(5,12,7),
      new Score(12,19,8),
      new Score(19,27,9),
      new Score(27,34,10),
      new Score(34,41,11),
      new Score(41,48,12),
      new Score(48,55,13),
      new Score(55,61,14)
    ];

    list.add(tier3List);


    List<Score> tier4List = [
      new Score(0,3,7),
      new Score(3,10,8),
      new Score(10,17,9),
      new Score(17,24,10),
      new Score(24,32,11),
      new Score(32,39,12),
      new Score(39,46,13),
      new Score(46,53,14),
      new Score(53,61,15)
    ];

    list.add(tier4List);

    List<Score> tier5List = [
      new Score(0,8,9),
      new Score(8,15,10),
      new Score(15,22,11),
      new Score(22,29,12),
      new Score(29,37,13),
      new Score(37,44,14),
      new Score(44,51,15),
      new Score(51,58,16),
      new Score(58,61,17)
    ];

    list.add(tier5List);


    List<Score> tier6List = [
      new Score(0,6,10),
      new Score(6,13,11),
      new Score(13,20,12),
      new Score(20,27,13),
      new Score(27,34,14),
      new Score(34,42,15),
      new Score(42,49,16),
      new Score(49,56,17),
      new Score(56,61,18)
    ];

    list.add(tier6List);

    List<Score> tier7List = [
      new Score(0,4,11),
      new Score(4,11,12),
      new Score(11,18,13),
      new Score(18,25,14),
      new Score(25,32,15),
      new Score(32,39,16),
      new Score(39,47,17),
      new Score(47,54,18),
      new Score(54,61,19)
    ];

    list.add(tier7List);

    List<Score> tier8List = [
      new Score(0,2,12),
      new Score(2,9,13),
      new Score(9,16,14),
      new Score(16,23,15),
      new Score(23,30,16),
      new Score(30,37,17),
      new Score(37,44,18),
      new Score(44,52,19),
      new Score(52,59,20),
      new Score(59,61,21)
    ];

    list.add(tier8List);
  }

}