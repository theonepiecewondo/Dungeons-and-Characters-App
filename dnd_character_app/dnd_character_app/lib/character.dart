import 'package:dnd_character_app/services/character-functions.dart';
import 'package:dnd_character_app/models/characterModel.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:dnd_character_app/widgets/modifier.dart';
import 'package:dnd_character_app/widgets/stats.dart';
import 'package:dnd_character_app/widgets/skills.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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

class Home extends State<HomeState> with TickerProviderStateMixin {
  hideClass(Pharacter charSession) {
    if (charSession.name.length >= 10 || charSession.pClass.length >= 10) {
      return "";
    } else {
      return charSession.pClass;
    }
  }
  TextEditingController proficiencyController;
  TextEditingController acController;
  TextEditingController initiativeController;
  TextEditingController speedController;
  TabController _tabController;
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: 3);
  }

  void dispose() {
    proficiencyController?.dispose();
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Pharacter charSession = ModalRoute.of(context).settings.arguments;
    String positive = "";
    double padright = 0;
    if (charSession.proficiencyBonus >= 0) {
      positive = "+";
      padright = 10;
    }
    //print(charSession.toString());
    proficiencyController = TextEditingController(
      text: positive + charSession.proficiencyBonus.toString(),
    );
    acController = TextEditingController(
      text: charSession.ac.toString(),
    );
    initiativeController = TextEditingController(
      text: charSession.initiative.toString(),
    );
    speedController = TextEditingController(
      text: charSession.speed.toString() + " ft",
    );
    proficiencyController.selection = TextSelection.fromPosition(
        TextPosition(offset: proficiencyController.text.length));
    acController.selection = TextSelection.fromPosition(
        TextPosition(offset: acController.text.length));
    initiativeController.selection = TextSelection.fromPosition(
        TextPosition(offset: initiativeController.text.length));
    speedController.selection = TextSelection.fromPosition(
        TextPosition(offset: speedController.text.length - 3));
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    var screensize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        bottom: TabBar(
          controller: _tabController,
          tabs: [
            Tab(icon: Icon(Icons.person)),
            Tab(icon: Icon(FontAwesomeIcons.bookOpen)),
            Tab(icon: Icon(FontAwesomeIcons.solidStickyNote)),
          ],
        ),
        title: Container(
          width: screensize.width,
          child: Row(
            children: <Widget>[
              Text(charSession.name),
              SizedBox(width: 10),
              Text(hideClass(charSession)),
              SizedBox(width: 10),
              Text("Level"),
              SizedBox(width: 10),
              Container(
                width: 50,
                height: 18,
                child: TextFormField(
                  initialValue: charSession.level.toString(),
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
                    charSession.level = int.parse(newLevel),
                    updateCharacter(charSession),
                  },
                ),
              ),
            ],
          ),
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          Center(
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
                            controller: acController,
                            keyboardType: TextInputType.number,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.white, fontSize: 25, height: 1),
                            inputFormatters: <TextInputFormatter>[
                              FilteringTextInputFormatter.allow(
                                  RegExp(r'[0-9]')),
                              LengthLimitingTextInputFormatter(3),
                            ],
                            decoration: InputDecoration.collapsed(
                                hintText: "0",
                                hintStyle: TextStyle(color: Colors.white)),
                            onFieldSubmitted: (newAC) => {
                              charSession.ac = int.parse(newAC),
                              updateCharacter(charSession),
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
                                  initialValue: charSession.hit.toString(),
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
                                    charSession.hit = int.parse(newNumber),
                                    updateCharacter(charSession),
                                  },
                                ),
                              ),
                              SizedBox(height: 10),
                              Text(
                                "/",
                                textScaleFactor: 2,
                                style:
                                    TextStyle(color: Colors.white, height: 0),
                              ),
                              SizedBox(
                                width: 50,
                                height: 50,
                                child: TextFormField(
                                  initialValue: charSession.maxHp.toString(),
                                  keyboardType: TextInputType.number,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 25,
                                      height: 1),
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
                                    charSession.maxHp = int.parse(newNumber),
                                    updateCharacter(charSession),
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
                            controller: initiativeController,
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
                              charSession.initiative = int.parse(newNumber),
                              updateCharacter(charSession),
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
                                  initialValue: charSession.hitdice.toString(),
                                  keyboardType: TextInputType.number,
                                  textAlign: TextAlign.right,
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 25,
                                      height: 1),
                                  inputFormatters: <TextInputFormatter>[
                                    FilteringTextInputFormatter.allow(
                                        RegExp(r'[0-9]')),
                                    LengthLimitingTextInputFormatter(1),
                                  ],
                                  decoration: const InputDecoration.collapsed(
                                      hintText: "0",
                                      hintStyle:
                                          TextStyle(color: Colors.white)),
                                  onChanged: (newNumber) => {
                                    charSession.hitdice = int.parse(newNumber),
                                    updateCharacter(charSession),
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
                                  style:
                                      TextStyle(color: Colors.white, height: 0),
                                ),
                              ),
                              SizedBox(
                                width: 30,
                                height: 50,
                                child: TextFormField(
                                  initialValue: charSession.hitdiceMax.toString(),
                                  keyboardType: TextInputType.number,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 25,
                                      height: 1),
                                  inputFormatters: <TextInputFormatter>[
                                    FilteringTextInputFormatter.allow(
                                        RegExp(r'[0-9]')),
                                    LengthLimitingTextInputFormatter(3),
                                  ],
                                  decoration: const InputDecoration.collapsed(
                                      hintText: "0",
                                      hintStyle:
                                          TextStyle(color: Colors.white)),
                                  onChanged: (newNumber) => {
                                    charSession.hitdiceMax = int.parse(newNumber),
                                    updateCharacter(charSession),
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
                          Padding(
                            padding: EdgeInsets.only(right: padright),
                            child: TextFormField(
                              controller: proficiencyController,
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
                                setState(() {
                                  charSession.proficiencyBonus = int.parse(newNumber);
                                  updateCharacter(charSession);
                                }),
                              },
                            ),
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
                            controller: speedController,
                            keyboardType:
                                TextInputType.numberWithOptions(signed: true),
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
                              charSession.speed = int.parse(newNumber),
                              updateCharacter(charSession),
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
          Icon(Icons.directions_transit),
          Icon(Icons.directions_bike),
        ],
        
      ),
    );
  }
}
