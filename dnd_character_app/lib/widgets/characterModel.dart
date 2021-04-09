class Pharacter {
  String id;
  String name;
  String race;
  String pClass;
  int level;
  int ac;
  int hit;
  int maxHp;
  int initiative;
  int hitdice;
  int hitdiceMax;
  int proficiencyBonus;
  int speed;
  int str;
  int dex;
  int con;
  int intelligence;
  int wis;
  int cha;
  int savStr;
  int athletics;
  int savDex;
  int acrobatics;
  int stealth;
  int sleight;
  int savCon;
  int savInt;
  int arcana;
  int history;
  int investigation;
  int nature;
  int religion;
  int savWis;
  int animal;
  int insight;
  int medicine;
  int perception;
  int survival;
  int savCha;
  int deception;
  int intimidation;
  int performance;
  int persuasion;
  //int "bool" values
  int profSavStr;
  int profAthletics;
  int profSavDex;
  int profAcrobatics;
  int profStealth;
  int profSleight;
  int profSavCon;
  int profSaveInt;
  int profArcana;
  int profHistory;
  int profInvestigation;
  int profNature;
  int profReligion;
  int profSavWis;
  int profAnimal;
  int profInsight;
  int profMedicine;
  int profPerception;
  int profSurvival;
  int profSavCha;
  int profDeception;
  int profIntimidation;
  int profPerformance;
  int profPersuasion;

  Pharacter(
      {this.id,
      this.name,
      this.race,
      this.pClass,
      this.level,
      this.ac,
      this.hit,
      this.maxHp,
      this.initiative,
      this.hitdice,
      this.hitdiceMax,
      this.proficiencyBonus,
      this.speed,
      this.str,
      this.dex,
      this.con,
      this.intelligence,
      this.wis,
      this.cha,
      this.savStr,
      this.athletics,
      this.savDex,
      this.acrobatics,
      this.stealth,
      this.sleight,
      this.savCon,
      this.savInt,
      this.arcana,
      this.history,
      this.investigation,
      this.nature,
      this.religion,
      this.savWis,
      this.animal,
      this.insight,
      this.medicine,
      this.perception,
      this.survival,
      this.savCha,
      this.deception,
      this.intimidation,
      this.performance,
      this.persuasion,
      this.profSavStr,
      this.profAthletics,
      this.profSavDex,
      this.profAcrobatics,
      this.profStealth,
      this.profSleight,
      this.profSavCon,
      this.profSaveInt,
      this.profArcana,
      this.profHistory,
      this.profInvestigation,
      this.profNature,
      this.profReligion,
      this.profSavWis,
      this.profAnimal,
      this.profInsight,
      this.profMedicine,
      this.profPerception,
      this.profSurvival,
      this.profSavCha,
      this.profDeception,
      this.profIntimidation,
      this.profPerformance,
      this.profPersuasion});

  Map<String, dynamic> toMap() => {
        "id": id,
        "name": name,
        "race": race,
        "pClass": pClass,
        "level": level,
        "ac": ac,
        "hit": hit,
        "maxHp": maxHp,
        "initiative": initiative,
        "hitdice": hitdice,
        "hitdiceMax": hitdiceMax,
        "proficiencyBonus": proficiencyBonus,
        "speed": speed,
        "str": str,
        "dex": dex,
        "con": con,
        "intelligence": intelligence,
        "wis": wis,
        "cha": cha,
        "savStr": savStr,
        "athletics": athletics,
        "savDex": savDex,
        "acrobatics" : acrobatics,
        "stealth": stealth,
        "sleight": sleight,
        "savCon": savCon,
        "savInt": savInt,
        "arcana": arcana,
        "history": history,
        "investigation": investigation,
        "nature": nature,
        "religion": religion,
        "savWis": savWis,
        "animal": animal,
        "insight": insight,
        "medicine": medicine,
        "perception": perception,
        "survival": survival,
        "savCha": savCha,
        "deception": deception,
        "intimidation": intimidation,
        "performance": performance,
        "persuasion": persuasion,
        "profSavStr": profSavStr,
        "profAthletics": profAthletics,
        "profSavDex" : profSavDex,
        "profAcrobatics": profAcrobatics,
        "profStealth": profStealth,
        "profSleight": profSleight,
        "profSavCon": profSavCon,
        "profSaveInt": profSaveInt,
        "profArcana": profArcana,
        "profHistory": profHistory,
        "profInvestigation": profInvestigation,
        "profNature": profNature,
        "profReligion": profReligion,
        "profSavWis": profSavWis,
        "profAnimal": profAnimal,
        "profInsight": profInsight,
        "profMedicine": profMedicine,
        "profPerception": profPerception,
        "profSurvival": profSurvival,
        "profSavCha": profSavCha,
        "profDeception": profDeception,
        "profIntimidation": profIntimidation,
        "profPerformance": profPerformance,
        "profPersuasion": profPersuasion,
      };
  @override
  String toString() {
    return 'Pharacter{id: $id, name: $name, race: $race, Class: $pClass, level: $level, ac: $ac, initiative: $initiative ,hit: $hit, maxHp: $maxHp, proficiencyBonus: $proficiencyBonus, speed: $speed, str: $str, dex: $dex, con: $con, intelligence: $intelligence, wis: $wis, cha: $cha, savStr; $savStr}\n';
  }
}
