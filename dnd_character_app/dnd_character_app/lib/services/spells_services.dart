import 'dart:async' show Future;
import 'package:flutter/services.dart' show rootBundle;
import 'dart:convert';
import 'package:dnd_character_app/models/spellModel.dart';
import 'package:dnd_character_app/services/database.dart';

Future<String> _loadSpellAssets() async {
  return await rootBundle.loadString('assets/Spells.json');
}

Future loadSpells() async {
  String jsonSpells = await _loadSpellAssets();
  final jsonResponse = json.decode(jsonSpells);
  SpellList spellList = SpellList.fromJson(jsonResponse);
  return spellList;
  //print("spells " + spellList.spells[0].name);
}

Future addSpells() async{
  SpellList spellList = await loadSpells();
  if(await DBProvider.db.numberOfSpells() <= 0){
    spellList.spells.forEach((item) =>
      DBProvider.db.insertSpell(item)
    );
  }
  /*Example of getting a spell for testing. Gets a spell and puts it into a spell class
  Spell spell = await DBProvider.db.getSpell("Fire Bolt");
  print(spell);
  */
}
