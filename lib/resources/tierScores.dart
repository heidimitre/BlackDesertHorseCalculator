import 'package:bdo_horse_calculator/model/scoreList.dart';

class TierScores {
  ScoreList tier1;
  ScoreList tier2;
  ScoreList tier3;
  ScoreList tier4;
  ScoreList tier5;
  ScoreList tier6;
  ScoreList tier7;
  ScoreList tier8;

  TierScores(){
    Map<int, int> tier1List = {2:3, 9:4, 17:5, 24:6, 31:7, 38:8, 45:9, 52:10, 59:11, 60:12};
    tier1 = new ScoreList(1, tier1List);
    Map<int, int> tier2List = {7:5, 14:6, 22:7, 29:8, 36:9, 43:10, 50:11, 57:12, 60:13};
    tier2 = new ScoreList(2, tier2List);
    Map<int, int> tier3List = {5:6, 12:7, 19:8, 27:9, 34:10, 41:11, 48:12, 55:13, 60:14};
    tier3 = new ScoreList(3, tier3List);
    Map<int, int> tier4List = {3:7, 10:8, 17:9, 24:10, 32:11, 39:12, 46:13, 53:14, 60:15};
    tier4 = new ScoreList(4, tier4List);
    Map<int, int> tier5List = {8:9, 15:10, 22:11, 29:12, 37:13, 44:14, 51:15, 59:16, 60:17};
    tier5 = new ScoreList(5, tier5List);
    Map<int, int> tier6List = {6:10, 13:11, 20:12, 27:13, 34:14, 42:15, 49:16, 56:17, 60:18};
    tier6 = new ScoreList(6, tier6List);
    Map<int, int> tier7List = {4:11, 11:12, 18:13, 25:14, 32:15, 39:16, 47:17, 54:18, 60:19};
    tier7 = new ScoreList(7, tier7List);
    Map<int, int> tier8List = {2:12, 9:13, 16:14, 23:15, 30:16, 37:17, 44:18, 52:19, 59:20, 60:21};
    tier8 = new ScoreList(8, tier8List);
  }

}