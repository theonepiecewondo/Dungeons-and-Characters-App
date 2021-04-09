import 'package:dnd_character_app/widgets/characterModel.dart';
import 'package:dnd_character_app/widgets/database.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

modifier(var bonus) {
  bonus = bonus - 10;
  bonus = bonus / 2;
  bonus = bonus.floor();
  return bonus;
}

intitModifer(int mod){
  var bonus = modifier(mod);
  var cha = bonus.toString();
  return cha;
}
void printCharacter(id) async{
    var temp = await DBProvider.db.getCharacter(id);
    print(temp.toString());
}
void save(Pharacter temp) async{
    await DBProvider.db.insertCharacter(temp);
    var lmao = await DBProvider.db.getpharacters();
    print(lmao.toString());
}

checkIfProficient(String mod, int prof, int bonus){
    if(prof == 1){
      int temp = int.parse(mod) + bonus;
      mod = temp.toString();
      return mod;
    }
    else{
      return mod;
    }
}
changeProfColor(int prof){
  var color;
  if (prof == 0) {
      color = Colors.white;
      return color;
    } else {
      color = Colors.black;
      return color;
    }
}

updateStrengthSkills(Pharacter temp, var difference){
  temp.savStr = temp.savStr + difference;
  temp.athletics = temp.athletics + difference;
  return temp;
}

updateDexteritySkills(Pharacter temp, var difference){
  temp.savDex = temp.savDex + difference;
  temp.acrobatics = temp.acrobatics + difference;
  temp.stealth = temp.stealth + difference;
  temp.sleight = temp.sleight + difference;
  return temp;
}

updateIntelligenceSkills(Pharacter temp, var difference){
  temp.savInt = temp.savInt + difference;
  temp.arcana = temp.arcana + difference;
  temp.history = temp.history + difference;
  temp.investigation = temp.investigation + difference;
  temp.nature = temp.nature + difference;
  temp.religion = temp.religion + difference;
  return temp;
}
updateWisdomSkills(Pharacter temp, var difference){
  temp.savWis = temp.savWis + difference;
  temp.animal = temp.animal + difference;
  temp.insight = temp.insight + difference;
  temp.medicine = temp.medicine + difference;
  temp.perception = temp.perception + difference;
  temp.survival = temp.survival + difference;
  return temp;
}
updateCharismaSkills(Pharacter temp, var difference){
  temp.savCha = temp.savCha + difference;
  temp.deception = temp.deception + difference;
  temp.intimidation = temp.intimidation + difference;
  temp.performance = temp.performance + difference;
  temp.persuasion = temp.persuasion + difference;
  return temp;
}
Future<Pharacter> calculateStats(Pharacter character) async {
  var dexMod = modifier(character.dex);
  var strMod = modifier(character.str);
  var conMod = modifier(character.con);
  var intelligenceMod = modifier(character.intelligence);
  var wisMod = modifier(character.wis);
  var chaMod = modifier(character.cha);
  character.id = UniqueKey().toString();
  character.ac = 10 + dexMod;
  character.initiative = dexMod;
  if(character.level <= 4){
    character.proficiencyBonus = 2;
  }
  else if (character.level > 4  && character.level < 9){
    character.proficiencyBonus = 3;
  }
  else if (character.level > 8 && character.level < 13){
    character.proficiencyBonus = 4;
  }
  else if (character.level > 12 && character.level < 17){
    character.proficiencyBonus = 5;
  }
  else{
    character.proficiencyBonus = 6;
  }
  character.savStr = strMod;
  character.athletics = strMod;
  character.savDex = dexMod;
  character.acrobatics = dexMod;
  character.stealth = dexMod;
  character.sleight = dexMod;
  character.savCon = conMod;
  character.savInt = intelligenceMod;
  character.arcana = intelligenceMod;
  character.history = intelligenceMod;
  character.investigation = intelligenceMod;
  character.nature = intelligenceMod;
  character.religion = intelligenceMod;
  character.savWis = wisMod;
  character.animal = wisMod;
  character.insight = wisMod;
  character.medicine = wisMod;
  character.perception = wisMod;
  character.survival = wisMod;
  character.savCha = chaMod;
  character.deception = chaMod;
  character.intimidation = chaMod;
  character.performance = chaMod;
  character.persuasion = chaMod;
  return character;
}

Future<void> updateName(Pharacter character, String newName) async {
  character.name = newName;
  await DBProvider.db.updateCharacter(character);
}

Future<void> updateRace(Pharacter character, String newRace) async {
  character.race = newRace;
  await DBProvider.db.updateCharacter(character);
}

Future<void> updateLevel(Pharacter character, var level) async {
  character.level = level;
  await DBProvider.db.updateCharacter(character);
}

Future<void> updateAC(Pharacter character, var ac) async {
  character.ac = ac;
  await DBProvider.db.updateCharacter(character);
}

Future<void> updateHit(Pharacter character, var hit) async {
  character.hit = hit;
  await DBProvider.db.updateCharacter(character);
}

Future<void> updateMaxHp(Pharacter character, var maxHp) async {
  character.maxHp = maxHp;
  await DBProvider.db.updateCharacter(character);
}

Future<void> updateInitiative(Pharacter character, var initiative) async {
  character.initiative = initiative;
  await DBProvider.db.updateCharacter(character);
}

Future<void> updateHitdice(Pharacter character, var hitdice) async {
  character.hitdice = hitdice;
  await DBProvider.db.updateCharacter(character);
}

Future<void> updateHitdiceMax(Pharacter character, var hitdiceMax) async {
  character.hitdiceMax = hitdiceMax;
  await DBProvider.db.updateCharacter(character);
}

Future<void> updateProficiencyBonus(Pharacter character, var proficiencyBonus) async {
  character.proficiencyBonus = proficiencyBonus;
  await DBProvider.db.updateCharacter(character);
}

Future<void> updateSpeed(Pharacter character, var speed) async {
  character.speed = speed;
  await DBProvider.db.updateCharacter(character);
}

Future<void> updateStr(Pharacter character, var str) async {
  character.str = str;
  await DBProvider.db.updateCharacter(character);
}

Future<void> updateDex(Pharacter character, var dex) async {
  character.dex = dex;
  await DBProvider.db.updateCharacter(character);
}

Future<void> updateCon(Pharacter character, var con) async {
  character.con = con;
  await DBProvider.db.updateCharacter(character);
}

Future<void> updateIntelligence(Pharacter character, var intelligence) async {
  character.intelligence = intelligence;
  await DBProvider.db.updateCharacter(character);
}

Future<void> updateWis(Pharacter character, var wis) async {
  character.wis = wis;
  await DBProvider.db.updateCharacter(character);
}

Future<void> updateCha(Pharacter character, var cha) async {
  character.cha = cha;
  await DBProvider.db.updateCharacter(character);
}

Future<void> updateSavStr(Pharacter character, var savStr) async {
  character.savStr = savStr;
  await DBProvider.db.updateCharacter(character);
}

Future<void> updateAthletics(Pharacter character, var athletics) async {
  character.athletics = athletics;
  await DBProvider.db.updateCharacter(character);
}

Future<void> updateSavDex(Pharacter character, var savDex) async {
  character.savDex = savDex;
  await DBProvider.db.updateCharacter(character);
}

Future<void> updateAcrobatics(Pharacter character, var acrobatics) async {
  character.acrobatics = acrobatics;
  await DBProvider.db.updateCharacter(character);
}

Future<void> updateStealth(Pharacter character, var stealth) async {
  character.stealth = stealth;
  await DBProvider.db.updateCharacter(character);
}

Future<void> updateSleight(Pharacter character, var sleight) async {
  character.sleight = sleight;
  await DBProvider.db.updateCharacter(character);
}

Future<void> updateSavCon(Pharacter character, var savCon) async {
  character.savCon = savCon;
  await DBProvider.db.updateCharacter(character);
}

Future<void> updateSavInt(Pharacter character, var savInt) async {
  character.savInt = savInt;
  await DBProvider.db.updateCharacter(character);
}

Future<void> updateArcana(Pharacter character, var arcana) async {
  character.arcana = arcana;
  await DBProvider.db.updateCharacter(character);
}

Future<void> updateHistory(Pharacter character, var history) async {
  character.history = history;
  await DBProvider.db.updateCharacter(character);
}

Future<void> updateInvestigation(Pharacter character, var investigation) async {
  character.investigation = investigation;
  await DBProvider.db.updateCharacter(character);
}

Future<void> updateNature(Pharacter character, var nature) async {
  character.nature = nature;
  await DBProvider.db.updateCharacter(character);
}

Future<void> updateReligion(Pharacter character, var religion) async {
  character.religion = religion;
  await DBProvider.db.updateCharacter(character);
}

Future<void> updateSavWis(Pharacter character, var savWis) async {
  character.savWis = savWis;
  await DBProvider.db.updateCharacter(character);
}

Future<void> updateAnimal(Pharacter character, var animal) async {
  character.animal = animal;
  await DBProvider.db.updateCharacter(character);
}

Future<void> updateInsight(Pharacter character, var insight) async {
  character.insight = insight;
  await DBProvider.db.updateCharacter(character);
}

Future<void> updateMedicine(Pharacter character, var medicine) async {
  character.medicine = medicine;
  await DBProvider.db.updateCharacter(character);
}

Future<void> updatePerception(Pharacter character, var perception) async {
  character.perception = perception;
  await DBProvider.db.updateCharacter(character);
}

Future<void> updateSurvival(Pharacter character, var survival) async {
  character.survival = survival;
  await DBProvider.db.updateCharacter(character);
}

Future<void> updateSavCha(Pharacter character, var savCha) async {
  character.savCha = savCha;
  await DBProvider.db.updateCharacter(character);
}

Future<void> updateDeception(Pharacter character, var deception) async {
  character.deception = deception;
  await DBProvider.db.updateCharacter(character);
}

Future<void> updateIntimidation(Pharacter character, var intimidation) async {
  character.intimidation = intimidation;
  await DBProvider.db.updateCharacter(character);
}

Future<void> updatePerformance(Pharacter character, var performance) async {
  character.performance = performance;
  await DBProvider.db.updateCharacter(character);
}

Future<void> updatePersuasion(Pharacter character, var persuasion) async {
  character.persuasion = persuasion;
  await DBProvider.db.updateCharacter(character);
}

Future<void> updateProfSavStr(Pharacter character, var profSavStr) async {
  character.profSavStr = profSavStr;
  await DBProvider.db.updateCharacter(character);
}

Future<void> updateProfSavDex(Pharacter character, var profSavDex) async {
  character.profSavDex = profSavDex;
  await DBProvider.db.updateCharacter(character);
}

Future<void> updateProfAcrobatics(Pharacter character, var profacrobatics) async {
  character.profAcrobatics = profacrobatics;
  await DBProvider.db.updateCharacter(character);
}

Future<void> updateProfAthletics(Pharacter character, var profAthletics) async {
  character.profAthletics = profAthletics;
  await DBProvider.db.updateCharacter(character);
}
Future<void> updateProfStealth(Pharacter character, var profStealth) async {
  character.profStealth = profStealth;
  await DBProvider.db.updateCharacter(character);
}

Future<void> updateProfSleight(Pharacter character, var profSleight) async {
  character.profSleight = profSleight;
  await DBProvider.db.updateCharacter(character);
}

Future<void> updateProfSavCon(Pharacter character, var profSavCon) async {
  character.profSavCon = profSavCon;
  await DBProvider.db.updateCharacter(character);
}

Future<void> updateProfSaveInt(Pharacter character, var profSaveInt) async {
  character.profSaveInt = profSaveInt;
  await DBProvider.db.updateCharacter(character);
}

Future<void> updateProfArcana(Pharacter character, var profArcana) async {
  character.profArcana = profArcana;
  await DBProvider.db.updateCharacter(character);
}

Future<void> updateProfHistory(Pharacter character, var profHistory) async {
  character.profHistory = profHistory;
  await DBProvider.db.updateCharacter(character);
}

Future<void> updateProfInvestigation(Pharacter character, var profInvestigation) async {
  character.profInvestigation = profInvestigation;
  await DBProvider.db.updateCharacter(character);
}

Future<void> updateProfNature(Pharacter character, var profNature) async {
  character.profNature = profNature;
  await DBProvider.db.updateCharacter(character);
}

Future<void> updateProfReligion(Pharacter character, var profReligion) async {
  character.profReligion = profReligion;
  await DBProvider.db.updateCharacter(character);
}

Future<void> updateProfSavWis(Pharacter character, var profSavWis) async {
  character.profSavWis = profSavWis;
  await DBProvider.db.updateCharacter(character);
}

Future<void> updateProfAnimal(Pharacter character, var profAnimal) async {
  character.profAnimal = profAnimal;
  await DBProvider.db.updateCharacter(character);
}

Future<void> updateProfInsight(Pharacter character, var profInsight) async {
  character.profInsight = profInsight;
  await DBProvider.db.updateCharacter(character);
}

Future<void> updateProfMedicine(Pharacter character, var persuasion) async {
  character.profMedicine = persuasion;
  await DBProvider.db.updateCharacter(character);
}

Future<void> updateProfPerception(Pharacter character, var persuasion) async {
  character.profPerception = persuasion;
  await DBProvider.db.updateCharacter(character);
}

Future<void> updateProfSurvival(Pharacter character, var profSurvival) async {
  character.profSurvival = profSurvival;
  await DBProvider.db.updateCharacter(character);
}

Future<void> updateProfSavCha(Pharacter character, var profSavCha) async {
  character.profSavCha = profSavCha;
  await DBProvider.db.updateCharacter(character);
}

Future<void> updateProfDeception(Pharacter character, var profDeception) async {
  character.profDeception = profDeception;
  await DBProvider.db.updateCharacter(character);
}

Future<void> updateProfIntimidation(Pharacter character, var profIntimidation) async {
  character.profIntimidation = profIntimidation;
  await DBProvider.db.updateCharacter(character);
}

Future<void> updateProfPerformance(Pharacter character, var profPerformance) async {
  character.profPerformance = profPerformance;
  await DBProvider.db.updateCharacter(character);
}

Future<void> updateProfPersuasion(Pharacter character, var profPersuasion) async {
  character.profPersuasion = profPersuasion;
  await DBProvider.db.updateCharacter(character);
}
