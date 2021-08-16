import 'package:flutter/material.dart';
import 'package:dnd_character_app/models/characterModel.dart';
import 'package:dnd_character_app/services/character-functions.dart';


double padright = 0;
class StrengthBonusState extends State<StrengthBonus> {
  @override
  Widget build(BuildContext context) {
    Pharacter charSession = ModalRoute.of(context).settings.arguments;
    String modifier = intitModifer(charSession.str);
    String positive = "";
    if (int.parse(modifier) >= 0) {
      positive = "+";
      padright = 20;
    }
    else{
      padright = 10;
    }
    return Padding(
        padding: EdgeInsets.only(right: padright),
        child: Text(
          positive + modifier,
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.white, fontSize: 35, height: 0.3),
        ));
  }
}
class DexterityBonusState extends State<DexterityBonus> {
  @override
  Widget build(BuildContext context) {
    Pharacter charSession = ModalRoute.of(context).settings.arguments;
    String modifier = intitModifer(charSession.dex);
    String positive = "";
    if (int.parse(modifier) >= 0) {
      positive = "+";
      padright = 20;
    }
    else{
      padright = 10;
    }
    return Padding(
        padding: EdgeInsets.only(right: padright),
        child: Text(
          positive + modifier,
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.white, fontSize: 35, height: 0.3),
        ));
  }
}
class ConstitutionBonusState extends State<ConstitutionBonus> {
  @override
  Widget build(BuildContext context) {
    Pharacter charSession = ModalRoute.of(context).settings.arguments;
    String modifier = intitModifer(charSession.con);
    String positive = "";
    if (int.parse(modifier) >= 0) {
      positive = "+";
      padright = 20;
    }
    else{
      padright = 10;
    }
    return Padding(
        padding: EdgeInsets.only(right: padright),
        child: Text(
          positive + modifier,
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.white, fontSize: 35, height: 0.3),
        ));
  }
}
class IntelligenceBonusState extends State<IntelligenceBonus> {
  @override
  Widget build(BuildContext context) {
    String positive = "";
    Pharacter charSession = ModalRoute.of(context).settings.arguments;
    String modifier = intitModifer(charSession.intelligence);
    if (int.parse(modifier) >= 0) {
      positive = "+";
      padright = 20;
    }
    else{
      padright = 10;
    }
    return Padding(
        padding: EdgeInsets.only(right: padright),
        child: Text(
          positive + modifier,
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.white, fontSize: 35, height: 0.3),
        ));
  }
}
class WisdomBonusState extends State<WisdomBonus> {
  @override
  Widget build(BuildContext context) {
    Pharacter charSession = ModalRoute.of(context).settings.arguments;
    String modifier = intitModifer(charSession.wis);
    String positive = "";
    if (int.parse(modifier)>= 0) {
      positive = "+";
      padright = 20;
    }
    else{
      padright = 10;
    }
    return Padding(
        padding: EdgeInsets.only(right: padright),
        child: Text(
          positive + modifier,
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.white, fontSize: 35, height: 0.3),
        ));
  }
}
class CharismaBonusState extends State<CharismaBonus> {
  @override
  Widget build(BuildContext context) {
    Pharacter charSession = ModalRoute.of(context).settings.arguments;
    String modifier = intitModifer(charSession.cha);
    String positive = "";
    if (int.parse(modifier) >= 0) {
      positive = "+";
      padright = 20;
    }
    else{
      padright = 10;
    }
    return Padding(
        padding: EdgeInsets.only(right: padright),
        child: Text(
          positive + modifier,
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.white, fontSize: 35, height: 0.3),
        ));
  }
}
class StrengthBonus extends StatefulWidget {
  @override
  StrengthBonusState createState() => StrengthBonusState();
}
class DexterityBonus extends StatefulWidget {
  @override
  DexterityBonusState createState() => DexterityBonusState();
}
class ConstitutionBonus extends StatefulWidget {
  @override
  ConstitutionBonusState createState() => ConstitutionBonusState();
}
class IntelligenceBonus extends StatefulWidget {
  @override
  IntelligenceBonusState createState() => IntelligenceBonusState();
}
class WisdomBonus extends StatefulWidget {
  @override
  WisdomBonusState createState() => WisdomBonusState();
}
class CharismaBonus extends StatefulWidget {
  @override
  CharismaBonusState createState() => CharismaBonusState();
}