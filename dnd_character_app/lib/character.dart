import 'package:dnd_character_app/widgets/character-functions.dart';
import 'package:dnd_character_app/widgets/characterModel.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:dnd_character_app/widgets/modifier.dart';
import 'package:dnd_character_app/widgets/stats.dart';
import 'package:dnd_character_app/widgets/skills.dart';
import 'package:dnd_character_app/widgets/globals.dart' as globals;

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Character Page',
      home: HomeState(),
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
    );
  }
}

class HomeState extends StatefulWidget {
  HomeState({Key key, this.title}) : super(key: key);
  final String title;
  @override
  Home createState() => new Home();
}

class Home extends State<HomeState> {
  hideClass(Pharacter temp) {
    if (temp.name.length >= 10 || temp.pClass.length >= 10) {
      return "";
    } else {
      return temp.pClass;
    }
  }

  @override
  Widget build(BuildContext context) {
    Pharacter temp = ModalRoute.of(context).settings.arguments;
    globals.temp2 = temp;
    print(temp.toString());
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    var screensize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Container(
          width: screensize.width,
          child: Row(
            children: <Widget>[
              Text(temp.name),
              SizedBox(width: 10),
              Text(hideClass(temp)),
              SizedBox(width: 10),
              Text("Level"),
              SizedBox(width: 10),
              Container(
                width: 50,
                height: 18,
                child: TextFormField(
                  initialValue: temp.level.toString(),
                  keyboardType: TextInputType.number,
                  style:
                      TextStyle(color: Colors.white, fontSize: 22, height: 1),
                  inputFormatters: <TextInputFormatter>[
                    FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
                    LengthLimitingTextInputFormatter(3),
                  ],
                  decoration: InputDecoration.collapsed(
                      hintText: "0", hintStyle: TextStyle(color: Colors.white)),
                  onChanged: (newLevel) => {
                    temp.level = int.parse(newLevel),
                    updateLevel(temp, temp.level),
                  },
                ),
              ),
            ],
          ),
        ),
      ),
      body: Center(
        child: ListView(
          children: <Widget>[
            //1st row with Hitpoints, Ac, Initiative
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.all(screensize.width * 0.001),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.black54,
                    border: Border.all(width: 4),
                  ),
                  width: screensize.width * 0.3,
                  height: 100.0,
                  child: Column(
                    children: <Widget>[
                      Text(
                        "AC",
                        textAlign: TextAlign.center,
                        textScaleFactor: 1.5,
                        style: TextStyle(color: Colors.white, height: 1.5),
                      ),
                      SizedBox(height: 10),
                      TextFormField(
                        initialValue: temp.ac.toString(),
                        keyboardType: TextInputType.number,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.white, fontSize: 25, height: 1),
                        inputFormatters: <TextInputFormatter>[
                          FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
                          LengthLimitingTextInputFormatter(3),
                        ],
                        decoration: InputDecoration.collapsed(
                            hintText: "0",
                            hintStyle: TextStyle(color: Colors.white)),
                        onChanged: (newAC) => {
                          temp.ac = int.parse(newAC),
                          updateAC(temp, temp.ac),
                        },
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.black54,
                    border: Border.all(width: 4),
                  ),
                  width: screensize.width * 0.35,
                  height: 100.0,
                  child: Column(
                    children: <Widget>[
                      Text(
                        "HitPoints",
                        textAlign: TextAlign.center,
                        textScaleFactor: 1.5,
                        style: TextStyle(color: Colors.white, height: 1.5),
                      ),
                      SizedBox(height: 5),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          SizedBox(
                            width: 50,
                            height: 50,
                            child: TextFormField(
                              initialValue: temp.hit.toString(),
                              keyboardType: TextInputType.number,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 25,
                                  height: 1.2),
                              inputFormatters: <TextInputFormatter>[
                                FilteringTextInputFormatter.allow(
                                    RegExp(r'[0-9]')),
                                LengthLimitingTextInputFormatter(3),
                              ],
                              decoration: const InputDecoration.collapsed(
                                  hintText: "0",
                                  hintStyle: TextStyle(
                                      color: Colors.white, height: 1.2)),
                              onChanged: (newNumber) => {
                                temp.hit = int.parse(newNumber),
                                updateHit(temp, temp.hit),
                              },
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            "/",
                            textScaleFactor: 2,
                            style: TextStyle(color: Colors.white, height: 0),
                          ),
                          SizedBox(
                            width: 50,
                            height: 50,
                            child: TextFormField(
                              initialValue: temp.maxHp.toString(),
                              keyboardType: TextInputType.number,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.white, fontSize: 25, height: 1),
                              inputFormatters: <TextInputFormatter>[
                                FilteringTextInputFormatter.allow(
                                    RegExp(r'[0-9]')),
                                LengthLimitingTextInputFormatter(3),
                              ],
                              decoration: const InputDecoration.collapsed(
                                  hintText: "0",
                                  hintStyle: TextStyle(
                                      color: Colors.white, height: 1.2)),
                              onChanged: (newNumber) => {
                                temp.maxHp = int.parse(newNumber),
                                updateMaxHp(temp, temp.maxHp),
                              },
                            ),
                          ),
                          SizedBox(height: 10),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(screensize.width * 0.001),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.black54,
                    border: Border.all(width: 4),
                  ),
                  width: screensize.width * 0.3,
                  height: 100.0,
                  child: Column(
                    children: <Widget>[
                      Text(
                        "Initiative",
                        textAlign: TextAlign.center,
                        textScaleFactor: 1.5,
                        style: TextStyle(color: Colors.white, height: 1.5),
                      ),
                      SizedBox(height: 10),
                      TextFormField(
                        initialValue: temp.initiative.toString(),
                        keyboardType:
                            TextInputType.numberWithOptions(signed: true),
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.white, fontSize: 25, height: 1),
                        inputFormatters: <TextInputFormatter>[
                          LengthLimitingTextInputFormatter(3),
                        ],
                        decoration: const InputDecoration.collapsed(
                            hintText: "0",
                            hintStyle: TextStyle(color: Colors.white)),
                        onChanged: (newNumber) => {
                          temp.initiative = int.parse(newNumber),
                          updateInitiative(temp, temp.initiative),
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
            //2nd Row Proficiency Bonus, Speed, Inspiration
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.all(screensize.width * 0.001),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.black54,
                    border: Border.all(width: 4),
                  ),
                  width: screensize.width * 0.3,
                  height: 100.0,
                  child: Column(
                    children: <Widget>[
                      Text(
                        "HitDice",
                        textAlign: TextAlign.center,
                        textScaleFactor: 1.5,
                        style: TextStyle(color: Colors.white, height: 1.5),
                      ),
                      SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          SizedBox(
                            width: 20,
                            height: 50,
                            child: TextFormField(
                              initialValue: temp.hitdice.toString(),
                              keyboardType: TextInputType.number,
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                  color: Colors.white, fontSize: 25, height: 1),
                              inputFormatters: <TextInputFormatter>[
                                FilteringTextInputFormatter.allow(
                                    RegExp(r'[0-9]')),
                                LengthLimitingTextInputFormatter(1),
                              ],
                              decoration: const InputDecoration.collapsed(
                                  hintText: "0",
                                  hintStyle: TextStyle(color: Colors.white)),
                              onChanged: (newNumber) => {
                                temp.hitdice = int.parse(newNumber),
                                updateHitdice(temp, temp.hitdice),
                              },
                            ),
                          ),
                          SizedBox(
                            width: 20,
                            height: 10,
                            child: Text(
                              "d",
                              textScaleFactor: 2,
                              textAlign: TextAlign.center,
                              style: TextStyle(color: Colors.white, height: 0),
                            ),
                          ),
                          SizedBox(
                            width: 30,
                            height: 50,
                            child: TextFormField(
                              initialValue: temp.hitdiceMax.toString(),
                              keyboardType: TextInputType.number,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.white, fontSize: 25, height: 1),
                              inputFormatters: <TextInputFormatter>[
                                FilteringTextInputFormatter.allow(
                                    RegExp(r'[0-9]')),
                                LengthLimitingTextInputFormatter(3),
                              ],
                              decoration: const InputDecoration.collapsed(
                                  hintText: "0",
                                  hintStyle: TextStyle(color: Colors.white)),
                              onChanged: (newNumber) => {
                                temp.hitdiceMax = int.parse(newNumber),
                                updateHitdiceMax(temp, temp.hitdiceMax),
                              },
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.black54,
                    border: Border.all(width: 4),
                  ),
                  width: screensize.width * 0.35,
                  height: 100.0,
                  child: Column(
                    children: <Widget>[
                      Text(
                        "Proficiency",
                        textAlign: TextAlign.center,
                        textScaleFactor: 1.5,
                        style: TextStyle(color: Colors.white, height: 1.5),
                      ),
                      SizedBox(height: 8),
                      TextFormField(
                        initialValue: temp.proficiencyBonus.toString(),
                        keyboardType: TextInputType.number,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.white, fontSize: 25, height: 1),
                        inputFormatters: <TextInputFormatter>[
                          FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
                          LengthLimitingTextInputFormatter(3),
                        ],
                        decoration: const InputDecoration.collapsed(
                            hintText: "0",
                            hintStyle: TextStyle(color: Colors.white)),
                        onChanged: (newNumber) => {
                          setState(() {
                            temp.proficiencyBonus = int.parse(newNumber);
                            globals.temp2.proficiencyBonus =
                                temp.proficiencyBonus;
                            updateProficiencyBonus(temp, temp.proficiencyBonus);
                          }),
                        },
                      ),
                      SizedBox(height: 10),
                      Text(
                        "Bonus",
                        textAlign: TextAlign.center,
                        textScaleFactor: 1.5,
                        style: TextStyle(color: Colors.white, height: 0.5),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(screensize.width * 0.001),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.black54,
                    border: Border.all(width: 4),
                  ),
                  width: screensize.width * 0.3,
                  height: 100.0,
                  child: Column(
                    children: <Widget>[
                      Text(
                        "Speed",
                        textAlign: TextAlign.center,
                        textScaleFactor: 1.5,
                        style: TextStyle(color: Colors.white, height: 1.5),
                      ),
                      SizedBox(height: 10),
                      TextFormField(
                        initialValue: temp.speed.toString(),
                        keyboardType:
                            TextInputType.numberWithOptions(signed: true),
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.white, fontSize: 25, height: 1),
                        inputFormatters: <TextInputFormatter>[
                          FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
                          LengthLimitingTextInputFormatter(3),
                        ],
                        decoration: const InputDecoration.collapsed(
                            hintText: "0",
                            hintStyle: TextStyle(color: Colors.white)),
                        onChanged: (newNumber) => {
                          temp.speed = int.parse(newNumber),
                          updateSpeed(temp, temp.speed),
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
            //Stats skills Strength, Dexterity, and Constitution
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.all(screensize.width * 0.001),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.black54,
                    border: Border.all(width: 4),
                  ),
                  width: screensize.width * 0.3,
                  height: 100.0,
                  child: Column(
                    children: <Widget>[
                      Text(
                        "STR",
                        textAlign: TextAlign.center,
                        textScaleFactor: 1.5,
                        style: TextStyle(color: Colors.white, height: 1.5),
                      ),
                      Strength(),
                      SizedBox(height: 20),
                      StrengthBonus(),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.black54,
                    border: Border.all(width: 4),
                  ),
                  width: screensize.width * 0.3,
                  height: 100.0,
                  child: Column(
                    children: <Widget>[
                      Text(
                        "DEX",
                        textAlign: TextAlign.center,
                        textScaleFactor: 1.5,
                        style: TextStyle(color: Colors.white, height: 1.5),
                      ),
                      Dexterity(),
                      SizedBox(height: 20),
                      DexterityBonus(),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(screensize.width * 0.001),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.black54,
                    border: Border.all(width: 4),
                  ),
                  width: screensize.width * 0.3,
                  height: 100.0,
                  child: Column(
                    children: <Widget>[
                      Text(
                        "CON",
                        textAlign: TextAlign.center,
                        textScaleFactor: 1.5,
                        style: TextStyle(color: Colors.white, height: 1.5),
                      ),
                      Constitution(),
                      SizedBox(height: 20),
                      ConstitutionBonus(),
                    ],
                  ),
                ),
              ],
            ),
            //Stats skills Intelligence, Wisdom, Charisma
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.all(screensize.width * 0.001),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.black54,
                    border: Border.all(width: 4),
                  ),
                  width: screensize.width * 0.3,
                  height: 100.0,
                  child: Column(
                    children: <Widget>[
                      Text(
                        "INT",
                        textAlign: TextAlign.center,
                        textScaleFactor: 1.5,
                        style: TextStyle(color: Colors.white, height: 1.5),
                      ),
                      Intelligence(),
                      SizedBox(height: 20),
                      IntelligenceBonus(),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.black54,
                    border: Border.all(width: 4),
                  ),
                  width: screensize.width * 0.3,
                  height: 100.0,
                  child: Column(
                    children: <Widget>[
                      Text(
                        "WIS",
                        textAlign: TextAlign.center,
                        textScaleFactor: 1.5,
                        style: TextStyle(color: Colors.white, height: 1.5),
                      ),
                      Wisdom(),
                      SizedBox(height: 20),
                      WisdomBonus(),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(screensize.width * 0.001),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.black54,
                    border: Border.all(width: 4),
                  ),
                  width: screensize.width * 0.3,
                  height: 100.0,
                  child: Column(
                    children: <Widget>[
                      Text(
                        "CHA",
                        textAlign: TextAlign.center,
                        textScaleFactor: 1.5,
                        style: TextStyle(color: Colors.white, height: 1.5),
                      ),
                      Charisma(),
                      SizedBox(height: 20),
                      CharismaBonus(),
                    ],
                  ),
                ),
              ],
            ),
            //Skills and Saving Throws
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Container(
                  margin: const EdgeInsets.only(top: 10, bottom: 20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.black54,
                    border: Border.all(width: 4),
                  ),
                  width: screensize.width * 0.978,
                  height: 1500,
                  child: Skills(),
                ),
              ],
            ),
          ], //ListView child end
        ),
      ),
    );
  }
}
