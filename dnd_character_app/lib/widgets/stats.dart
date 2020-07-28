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
        style: TextStyle(color: Colors.white, fontSize: 25, height: 0),
        inputFormatters: <TextInputFormatter>[
          WhitelistingTextInputFormatter.digitsOnly,
          LengthLimitingTextInputFormatter(2),
        ],
        decoration: const InputDecoration.collapsed(
            hintText: "0", hintStyle: TextStyle(color: Colors.white)),
        onChanged: (String str) {
            var bonus = modifier(globals.temp2.str);
            bonus = bonus.toString();
            globals.temp2.str = int.parse(str);
            updateStr(globals.temp2, globals.temp2.str);
            return globals.stats['Strength'] = bonus;
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
        style: TextStyle(color: Colors.white, fontSize: 25, height: 0),
        inputFormatters: <TextInputFormatter>[
          WhitelistingTextInputFormatter.digitsOnly,
          LengthLimitingTextInputFormatter(2),
        ],
        decoration: const InputDecoration.collapsed(
            hintText: "0", hintStyle: TextStyle(color: Colors.white)),
        onChanged: (String str) {
          var bonus = modifier(int.parse(str));
          bonus = bonus.toString();
          globals.stats['Dexterity'] = bonus;
          globals.temp2.dex = int.parse(str);
          updateDex(globals.temp2, globals.temp2.dex);
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
        style: TextStyle(color: Colors.white, fontSize: 25, height: 0),
        inputFormatters: <TextInputFormatter>[
          WhitelistingTextInputFormatter.digitsOnly,
          LengthLimitingTextInputFormatter(2),
        ],
        decoration: const InputDecoration.collapsed(
            hintText: "0", hintStyle: TextStyle(color: Colors.white)),
        onChanged: (String str) {
          var bonus = modifier(int.parse(str));
          bonus = bonus.toString();
          globals.stats['Constitution'] = bonus;
          globals.temp2.con = int.parse(str);
          updateCon(globals.temp2, globals.temp2.con);
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
        style: TextStyle(color: Colors.white, fontSize: 25, height: 0),
        inputFormatters: <TextInputFormatter>[
          WhitelistingTextInputFormatter.digitsOnly,
          LengthLimitingTextInputFormatter(2),
        ],
        decoration: const InputDecoration.collapsed(
            hintText: "0", hintStyle: TextStyle(color: Colors.white)),
        onChanged: (String str) {
          var bonus = modifier(int.parse(str));
          bonus = bonus.toString();
          globals.stats['Intelligence'] = bonus;
          globals.temp2.intelligence = int.parse(str);
          updateIntelligence(globals.temp2, globals.temp2.intelligence);
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
        style: TextStyle(color: Colors.white, fontSize: 25, height: 0),
        inputFormatters: <TextInputFormatter>[
          WhitelistingTextInputFormatter.digitsOnly,
          LengthLimitingTextInputFormatter(2),
        ],
        decoration: const InputDecoration.collapsed(
            hintText: "0", hintStyle: TextStyle(color: Colors.white)),
        onChanged: (String str) {
          var bonus = modifier(int.parse(str));
          bonus = bonus.toString();
          globals.stats['Wisdom'] = bonus;
          globals.temp2.wis = int.parse(str);
          updateWis(globals.temp2, globals.temp2.wis);
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
        style: TextStyle(color: Colors.white, fontSize: 25, height: 0),
        inputFormatters: <TextInputFormatter>[
          WhitelistingTextInputFormatter.digitsOnly,
          LengthLimitingTextInputFormatter(2),
        ],
        decoration: const InputDecoration.collapsed(
            hintText: "0", hintStyle: TextStyle(color: Colors.white)),
        onChanged: (cha) {
          var bonus = modifier(int.parse(cha));
          bonus = bonus.toString();
          globals.stats['Charisma'] = bonus;
          globals.temp2.cha = int.parse(cha);
          updateCha(globals.temp2, globals.temp2.cha);
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
