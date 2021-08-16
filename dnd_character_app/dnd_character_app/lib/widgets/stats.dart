import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:dnd_character_app/services/character-functions.dart';
import 'package:dnd_character_app/models/characterModel.dart';

class StrengthState extends State<Strength> {
  @override
  Widget build(BuildContext context) {
    Pharacter charSession = ModalRoute.of(context).settings.arguments;
    return TextFormField(
      
        initialValue: charSession.str.toString(),
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
          var bonus = modifier(charSession.str);
          //determine the difference for adding to various skills later on. Negatives count here
          difference = difference - bonus;
          charSession.str = int.parse(str);
          //update all strength related skills according to difference
          updateStrengthSkills(charSession,difference);
          updateCharacter(charSession);
          return bonus.toString();
        });
  }
}

class DexterityState extends State<Dexterity> {
  @override
  Widget build(BuildContext context) {
    Pharacter charSession = ModalRoute.of(context).settings.arguments;
    return TextFormField(
        initialValue: charSession.dex.toString(),
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
          var bonus = modifier(charSession.dex);
          difference = difference - bonus;
          charSession.dex = int.parse(str);
          charSession.ac = charSession.ac + difference;
          charSession.initiative = charSession.initiative + difference;
          updateDexteritySkills(charSession, difference);
          updateCharacter(charSession);
          return bonus.toString();
        });
  }
}

class ConstitutionState extends State<Constitution> {
  @override
  Widget build(BuildContext context) {
    Pharacter charSession = ModalRoute.of(context).settings.arguments;
    return TextFormField(
        initialValue: charSession.con.toString(),
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
          var bonus = modifier(charSession.con);
          difference = difference - bonus;
          charSession.con = int.parse(str);
          charSession.savCon = charSession.savCon + difference;
          updateCharacter(charSession);
          return bonus.toString();
        });
  }
}

class IntelligenceState extends State<Intelligence> {
  @override
  Widget build(BuildContext context) {
    Pharacter charSession = ModalRoute.of(context).settings.arguments;
    return TextFormField(
        initialValue: charSession.intelligence.toString(),
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
          var bonus = modifier(charSession.intelligence);
          difference = difference - bonus;
          charSession.intelligence= int.parse(str);
          updateIntelligenceSkills(charSession, difference);
          updateCharacter(charSession);
          return bonus.toString();
        });
  }
}

class WisdomState extends State<Wisdom> {
  @override
  Widget build(BuildContext context) {
    Pharacter charSession = ModalRoute.of(context).settings.arguments;
    return TextFormField(
        initialValue: charSession.wis.toString(),
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
          var bonus = modifier(charSession.wis);
          difference = difference - bonus;
          charSession.wis = int.parse(str);
          updateWisdomSkills(charSession, difference);
          updateCharacter(charSession);
          return bonus.toString();
        });
  }
}

class CharismaState extends State<Charisma> {
  @override
  Widget build(BuildContext context) {
    Pharacter charSession = ModalRoute.of(context).settings.arguments;
    return TextFormField(
        initialValue: charSession.cha.toString(),
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
          var bonus = modifier(charSession.cha);
          difference = difference - bonus;
          charSession.cha = int.parse(str);
          updateCharismaSkills(charSession, difference);
          updateCharacter(charSession);
          return bonus.toString();
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
