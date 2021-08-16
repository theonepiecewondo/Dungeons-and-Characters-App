import 'package:dnd_character_app/models/characterModel.dart';
import 'package:dnd_character_app/services/database.dart';
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

//Calculate for the new ability score and the difference to apply to those skills

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
  if(character.pClass.toLowerCase() == "sorcerer" || character.pClass.toLowerCase() == "warlock" || character.pClass.toLowerCase() == "bard" || character.pClass.toLowerCase() == "paladin"){
    character.spellAbility = "CHA";
    character.spellSave = 8 + chaMod + character.proficiencyBonus;
    character.spellAttack = chaMod + character.proficiencyBonus;
  }
  else if (character.pClass.toLowerCase() == "druid" || character.pClass.toLowerCase() == "ranger" || character.pClass.toLowerCase() == "cleric"){
    character.spellAbility = "WIS";
    character.spellSave = 8 + wisMod + character.proficiencyBonus;
    character.spellAttack = wisMod + character.proficiencyBonus;
  }
  else if(character.pClass.toLowerCase() == "wizard" || character.pClass.toLowerCase() == "artificer"){
    character.spellAbility = "INT";
    character.spellSave = 8 + intelligenceMod + character.proficiencyBonus;
    character.spellAttack = intelligenceMod + character.proficiencyBonus;
  }
  else{
    character.spellAbility = "";
    character.spellSave = 8 + character.proficiencyBonus;
    character.spellAttack = character.proficiencyBonus;

  }
  return character;
}

//Update character changes to the database using async function
Future<void> updateCharacter(Pharacter character) async {
  await DBProvider.db.updateCharacter(character);
}
