import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'globals.dart' as globals;
import 'package:dnd_character_app/widgets/character-functions.dart';

class StrengthState extends State<Strength> {
  @override
  Widget build(BuildContext context) {
    globals.stats['Strength'] = intitModifer(globals.temp2.str);
    return TextFormField(
        initialValue: globals.temp2.str.toString(),
        keyboardType: TextInputType.number,
        textAlign: TextAlign.center,
        style: TextStyle(color: Colors.white, fontSize: 25, height: 1),
        inputFormatters: <TextInputFormatter>[
          FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
          LengthLimitingTextInputFormatter(2),
        ],
        decoration: const InputDecoration.collapsed(
            hintText: "0", hintStyle: TextStyle(color: Colors.white)),
        onFieldSubmitted: (String str) {
          //Gather a difference between the current modifier bonus and the one that the user will be inputting to affect associated skills
          var difference = modifier(int.parse(str));
          //use our bonus modifier function to calculate the new bonus modifer
          var bonus = modifier(globals.temp2.str);
          //determine the difference for adding to various skills later on. Negatives count here
          difference = difference - bonus;
          globals.temp2.str = int.parse(str);
          //update all strength related skills according to difference
          updateStrengthSkills(globals.temp2,difference);
          updateStr(globals.temp2, globals.temp2.str);
          return globals.stats['Strength'] = bonus.toString();
        });
  }
}

class DexterityState extends State<Dexterity> {
  @override
  Widget build(BuildContext context) {
    globals.stats['Dexterity'] = intitModifer(globals.temp2.dex);
    return TextFormField(
        initialValue: globals.temp2.dex.toString(),
        keyboardType: TextInputType.number,
        textAlign: TextAlign.center,
        style: TextStyle(color: Colors.white, fontSize: 25, height: 1),
        inputFormatters: <TextInputFormatter>[
          FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
          LengthLimitingTextInputFormatter(2),
        ],
        decoration: const InputDecoration.collapsed(
            hintText: "0", hintStyle: TextStyle(color: Colors.white)),
        onFieldSubmitted: (String str) {
          var difference = modifier(int.parse(str));
          var bonus = modifier(globals.temp2.dex);
          difference = difference - bonus;
          globals.temp2.dex = int.parse(str);
          updateDexteritySkills(globals.temp2, difference);
          updateDex(globals.temp2, globals.temp2.dex);
          return globals.stats['Dexterity'] = bonus.toString();
        });
  }
}

class ConstitutionState extends State<Constitution> {
  @override
  Widget build(BuildContext context) {
    globals.stats['Constitution'] = intitModifer(globals.temp2.con);
    return TextFormField(
        initialValue: globals.temp2.con.toString(),
        keyboardType: TextInputType.number,
        textAlign: TextAlign.center,
        style: TextStyle(color: Colors.white, fontSize: 25, height: 1),
        inputFormatters: <TextInputFormatter>[
          FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
          LengthLimitingTextInputFormatter(2),
        ],
        decoration: const InputDecoration.collapsed(
            hintText: "0", hintStyle: TextStyle(color: Colors.white)),
        onFieldSubmitted: (String str) {
          var difference = modifier(int.parse(str));
          var bonus = modifier(globals.temp2.con);
          difference = difference - bonus;
          globals.temp2.con = int.parse(str);
          globals.temp2.savCon = globals.temp2.savCon + difference;
          updateCon(globals.temp2, globals.temp2.con);
          return globals.stats['Constitution'] = bonus.toString();
        });
  }
}

class IntelligenceState extends State<Intelligence> {
  @override
  Widget build(BuildContext context) {
    globals.stats['Intelligence'] = intitModifer(globals.temp2.intelligence);
    return TextFormField(
        initialValue: globals.temp2.intelligence.toString(),
        keyboardType: TextInputType.number,
        textAlign: TextAlign.center,
        style: TextStyle(color: Colors.white, fontSize: 25, height: 1),
        inputFormatters: <TextInputFormatter>[
          FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
          LengthLimitingTextInputFormatter(2),
        ],
        decoration: const InputDecoration.collapsed(
            hintText: "0", hintStyle: TextStyle(color: Colors.white)),
        onFieldSubmitted: (String str) {
          var difference = modifier(int.parse(str));
          var bonus = modifier(globals.temp2.intelligence);
          difference = difference - bonus;
          globals.temp2.intelligence= int.parse(str);
          updateIntelligenceSkills(globals.temp2, difference);
          updateIntelligence(globals.temp2, globals.temp2.intelligence);
          return globals.stats['Intelligence'] = bonus.toString();
        });
  }
}

class WisdomState extends State<Wisdom> {
  @override
  Widget build(BuildContext context) {
    globals.stats['Wisdom'] = intitModifer(globals.temp2.wis);
    return TextFormField(
        initialValue: globals.temp2.wis.toString(),
        keyboardType: TextInputType.number,
        textAlign: TextAlign.center,
        style: TextStyle(color: Colors.white, fontSize: 25, height: 1),
        inputFormatters: <TextInputFormatter>[
          FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
          LengthLimitingTextInputFormatter(2),
        ],
        decoration: const InputDecoration.collapsed(
            hintText: "0", hintStyle: TextStyle(color: Colors.white)),
        onFieldSubmitted: (String str) {
          var difference = modifier(int.parse(str));
          var bonus = modifier(globals.temp2.wis);
          difference = difference - bonus;
          globals.temp2.wis = int.parse(str);
          updateWisdomSkills(globals.temp2, difference);
          updateWis(globals.temp2, globals.temp2.wis);
          return globals.stats['Wisdom'] = bonus.toString();
        });
  }
}

class CharismaState extends State<Charisma> {
  @override
  Widget build(BuildContext context) {
    globals.stats['Charisma'] = intitModifer(globals.temp2.cha);
    return TextFormField(
        initialValue: globals.temp2.cha.toString(),
        keyboardType: TextInputType.number,
        textAlign: TextAlign.center,
        style: TextStyle(color: Colors.white, fontSize: 25, height: 1),
        inputFormatters: <TextInputFormatter>[
          FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
          LengthLimitingTextInputFormatter(2),
        ],
        decoration: const InputDecoration.collapsed(
            hintText: "0", hintStyle: TextStyle(color: Colors.white)),
        onFieldSubmitted: (str) {
          var difference = modifier(int.parse(str));
          var bonus = modifier(globals.temp2.cha);
          difference = difference - bonus;
          globals.temp2.cha = int.parse(str);
          updateCharismaSkills(globals.temp2, difference);
          updateCha(globals.temp2, globals.temp2.cha);
          return globals.stats['Charisma'] = bonus.toString();
        });
  }
}

class Strength extends StatefulWidget {
  @override
  StrengthState createState() => StrengthState();
}

class Dexterity extends StatefulWidget {
  @override
  DexterityState createState() => DexterityState();
}

class Constitution extends StatefulWidget {
  @override
  ConstitutionState createState() => ConstitutionState();
}

class Intelligence extends StatefulWidget {
  @override
  IntelligenceState createState() => IntelligenceState();
}

class Wisdom extends StatefulWidget {
  @override
  WisdomState createState() => WisdomState();
}

class Charisma extends StatefulWidget {
  @override
  CharismaState createState() => CharismaState();
}
