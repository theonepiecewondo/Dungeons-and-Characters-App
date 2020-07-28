import 'package:flutter/material.dart';
import 'globals.dart' as globals;


class StrengthBonusState extends State<StrengthBonus> {
  @override
  Widget build(BuildContext context) {
    String positive = "";
    if (int.parse(globals.stats['Strength']) >= 0) {
      positive = "+";
    }
    return Padding(
        padding: EdgeInsets.only(right: 8),
        child: Text(
          positive + globals.stats['Strength'],
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.white, fontSize: 35, height: 0.3),
        ));
  }
}
class DexterityBonusState extends State<DexterityBonus> {
  @override
  Widget build(BuildContext context) {
    String positive = "";
    if (int.parse(globals.stats['Dexterity']) >= 0) {
      positive = "+";
    }
    return Padding(
        padding: EdgeInsets.only(right: 8),
        child: Text(
          positive + globals.stats['Dexterity'],
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.white, fontSize: 35, height: 0.3),
        ));
  }
}
class ConstitutionBonusState extends State<ConstitutionBonus> {
  @override
  Widget build(BuildContext context) {
    String positive = "";
    if (int.parse(globals.stats['Constitution']) >= 0) {
      positive = "+";
    }
    return Padding(
        padding: EdgeInsets.only(right: 8),
        child: Text(
          positive + globals.stats['Constitution'],
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.white, fontSize: 35, height: 0.3),
        ));
  }
}
class IntelligenceBonusState extends State<IntelligenceBonus> {
  @override
  Widget build(BuildContext context) {
    String positive = "";
    if (int.parse(globals.stats['Intelligence']) >= 0) {
      positive = "+";
    }
    return Padding(
        padding: EdgeInsets.only(right: 8),
        child: Text(
          positive + globals.stats['Intelligence'],
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.white, fontSize: 35, height: 0.3),
        ));
  }
}
class WisdomBonusState extends State<WisdomBonus> {
  @override
  Widget build(BuildContext context) {
    String positive = "";
    if (int.parse(globals.stats['Wisdom'])>= 0) {
      positive = "+";
    }
    return Padding(
        padding: EdgeInsets.only(right: 8),
        child: Text(
          positive + globals.stats['Wisdom'],
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.white, fontSize: 35, height: 0.3),
        ));
  }
}
class CharismaBonusState extends State<CharismaBonus> {
  @override
  Widget build(BuildContext context) {
    String positive = "";
    if (int.parse(globals.stats['Charisma']) >= 0) {
      positive = "+";
    }
    return Padding(
        padding: EdgeInsets.only(right: 8),
        child: Text(
          positive + globals.stats['Charisma'],
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