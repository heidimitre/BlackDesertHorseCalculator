
import 'package:bdo_horse_calculator/model/horse.dart';

class UpdateMaleHorseTier {
  final int tier;

  UpdateMaleHorseTier(this.tier);
}

class UpdateFemaleHorseTier {
  final int tier;

  UpdateFemaleHorseTier(this.tier);
}

class UpdateMaleHorseLevel {
  final int level;

  UpdateMaleHorseLevel(this.level);
}

class UpdateFemaleHorseLevel {
  final int level;

  UpdateFemaleHorseLevel(this.level);
}

class CalculateOutcome {
  final Horse maleHorse;
  final Horse femaleHorse;

  CalculateOutcome(this.maleHorse, this.femaleHorse);
}