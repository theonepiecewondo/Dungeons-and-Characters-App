import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:dnd_character_app/models/characterModel.dart';
import 'package:dnd_character_app/services/character-functions.dart';
import 'package:dnd_character_app/services/CustomIcons.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "Character Builder",
      home: new MyNewCharacterPage(title: 'Character Builder'),
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
    );
  }
}

class MyNewCharacterPage extends StatefulWidget {
  MyNewCharacterPage({Key key, this.title}) : super(key: key);

  final String title;
  @override
  NewCharacters createState() => new NewCharacters();
}

class NewCharacters extends State<MyNewCharacterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Character Builder'),
      ),
      body: Container(
        child: Center(
          child: MyCustomForm(),
        ),
      ),
    );
  }
}

class MyCustomFormState extends State<MyCustomForm> {
  var temp = Pharacter(id: "", name: "temp", race: "race",pClass: "",level: 1, ac: 10, hit: 1, maxHp: 1, initiative: 1, hitdice: 1, hitdiceMax: 1, proficiencyBonus: 1, speed: 30, str: 1, dex: 1, con: 1, intelligence: 1, wis: 1, cha: 1, savStr: 1, savDex: 1, acrobatics: 1, athletics: 1, stealth: 1, sleight: 1, savCon: 1, savInt: 1, arcana: 1, history: 1, investigation: 1, nature: 1, religion: 1, savWis: 1,animal: 1, insight: 1, medicine: 1, perception: 1, survival: 1, savCha: 1, deception: 1, intimidation: 1, performance: 1, persuasion: 1,profSavStr: 0,profAthletics: 0,profSavDex: 0, profAcrobatics: 0, profStealth: 0,profSleight: 0,profSavCon: 0,profSaveInt: 0,profArcana: 0,profHistory: 0,profInvestigation: 0,profNature: 0,profReligion: 0,profSavWis: 0,profAnimal: 0,profInsight: 0,profMedicine: 0,profPerception: 0,profSurvival: 0,profSavCha: 0,profDeception: 0,profIntimidation: 0,profPerformance: 0,profPersuasion: 0,);

  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormState>();
    return SafeArea(
      top: false,
      bottom: false,
      left: true,
      right: true,
      minimum: EdgeInsets.all(25),
      child: Form(
        key: formKey,
        child: ListView(
          children: <Widget>[
            Column(
              children: <Widget>[
                TextFormField(
                    inputFormatters: <TextInputFormatter>[
                      FilteringTextInputFormatter.allow(RegExp(r'[a-zA-Z ]')),
                      LengthLimitingTextInputFormatter(20),
                    ],
                    decoration: InputDecoration(
                      icon: Icon(Icons.person, size: 35),
                      hintText: "Enter a Name",
                      labelText: "Name",
                    ),
                    validator: (value) {
                      if (value.isEmpty) {
                        return 'Please Enter a Name';
                      }
                      temp.name = value;
                      return null;
                    }),
                TextFormField(
                    inputFormatters: <TextInputFormatter>[
                      FilteringTextInputFormatter.allow(RegExp(r'[a-zA-Z ]')),
                      LengthLimitingTextInputFormatter(20),
                    ],
                    decoration: InputDecoration(
                      icon: Icon(Icons.people, size: 35),
                      hintText: "Enter a Race, example: Human",
                      labelText: "Race",
                    ),
                    validator: (value) {
                      if (value.isEmpty) {
                        return 'Please Enter a Race';
                      }
                      temp.race = value;
                      return null;
                    }),
                TextFormField(
                    inputFormatters: <TextInputFormatter>[
                      FilteringTextInputFormatter.allow(RegExp(r'[a-zA-Z ]')),
                      LengthLimitingTextInputFormatter(20),
                    ],
                    decoration: InputDecoration(
                      icon: Icon(CustomIcons.class_icon, size: 35),
                      hintText: "Enter a Class, example: Fighter",
                      labelText: "Class",
                    ),
                    validator: (value) {
                      if (value.isEmpty) {
                        return 'Please Enter a Class';
                      }
                      temp.pClass = value;
                      return null;
                    }),
                TextFormField(
                    keyboardType: TextInputType.number,
                    inputFormatters: <TextInputFormatter>[
                      FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
                      LengthLimitingTextInputFormatter(2),
                    ],
                    decoration: InputDecoration(
                      icon: Icon(Icons.star, size: 35),
                      hintText: "Enter a characters level",
                      labelText: "Level",
                    ),
                    validator: (value) {
                      if (value.isEmpty) {
                        return 'Please Enter a Number';
                      }

                      temp.level = int.parse(value);
                      return null;
                    }),
                TextFormField(
                    keyboardType: TextInputType.number,
                    inputFormatters: <TextInputFormatter>[
                      FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
                      LengthLimitingTextInputFormatter(3),
                    ],
                    decoration: InputDecoration(
                      icon: Icon(Icons.favorite, size: 35),
                      hintText: "Enter your characters health",
                      labelText: "HitPoints",
                    ),
                    validator: (value) {
                      if (value.isEmpty) {
                        return 'Please Enter a Number';
                      }
                      temp.maxHp = int.parse(value);
                      temp.hit = int.parse(value);
                      return null;
                    }),
                TextFormField(
                    keyboardType: TextInputType.number,
                    inputFormatters: <TextInputFormatter>[
                      FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
                      LengthLimitingTextInputFormatter(2),
                    ],
                    decoration: InputDecoration(
                      icon: Icon(Icons.fitness_center, size: 35),
                      hintText: "Enter a number between 0 - 20",
                      labelText: "Strength",
                    ),
                    validator: (value) {
                      if (value.isEmpty) {
                        return 'Please Enter a Number';
                      }
                      temp.str = int.parse(value);
                      return null;
                    }),
                TextFormField(
                    keyboardType: TextInputType.number,
                    inputFormatters: <TextInputFormatter>[
                      FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
                      LengthLimitingTextInputFormatter(2),
                    ],
                    decoration: InputDecoration(
                      icon: Icon(Icons.directions_run, size: 35),
                      hintText: "Enter a number between 0 - 20",
                      labelText: "Dexterity",
                    ),
                    validator: (value) {
                      if (value.isEmpty) {
                        return 'Please Enter a Number';
                      }
                      temp.dex = int.parse(value);
                      return null;
                    }),
                TextFormField(
                    keyboardType: TextInputType.number,
                    inputFormatters: <TextInputFormatter>[
                      FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
                      LengthLimitingTextInputFormatter(2),
                    ],
                    decoration: InputDecoration(
                      icon: Icon(CustomIcons.syrup_icon, size: 35),
                      hintText: "Enter a number between 0 - 20",
                      labelText: "Constitution",
                    ),
                    validator: (value) {
                      if (value.isEmpty) {
                        return 'Please Enter a Number';
                      }
                      temp.con = int.parse(value);
                      return null;
                    }),
                TextFormField(
                    keyboardType: TextInputType.number,
                    inputFormatters: <TextInputFormatter>[
                      FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
                      LengthLimitingTextInputFormatter(2),
                    ],
                    decoration: InputDecoration(
                      icon: Icon(CustomIcons.lightbulb, size: 35),
                      hintText: "Enter a number between 0 - 20",
                      labelText: "Intelligence",
                    ),
                    validator: (value) {
                      if (value.isEmpty) {
                        return 'Please Enter a Number';
                      }
                      temp.intelligence = int.parse(value);
                      return null;
                    }),
                TextFormField(
                    keyboardType: TextInputType.number,
                    inputFormatters: <TextInputFormatter>[
                      FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
                      LengthLimitingTextInputFormatter(2),
                    ],
                    decoration: InputDecoration(
                      icon: Icon(CustomIcons.owl, size: 35),
                      hintText: "Enter a number between 0 - 20",
                      labelText: "Wisdom",
                    ),
                    validator: (value) {
                      if (value.isEmpty) {
                        return 'Please Enter a Number';
                      }
                      temp.wis = int.parse(value);
                      return null;
                    }),
                TextFormField(
                    keyboardType: TextInputType.number,
                    inputFormatters: <TextInputFormatter>[
                      FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
                      LengthLimitingTextInputFormatter(2),
                    ],
                    decoration: InputDecoration(
                      icon: Icon(Icons.face, size: 35),
                      hintText: "Enter a number between 0 - 20",
                      labelText: "Charisma",
                    ),
                    validator: (value) {
                      if (value.isEmpty) {
                        return 'Please Enter a Number';
                      }
                      temp.cha = int.parse(value);
                      return null;
                    }),
                  Container( 
                    margin: EdgeInsets.only(top: 10),
                    child: SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.blue,
                        onPrimary: Colors.white,
                      ),
                      onPressed: (){
                        if (formKey.currentState.validate()) {
                          calculateStats(temp);
                          save(temp);
                          Navigator.pushNamed(context, '/');
                        }
                      },
                      child: Text(
                        'Create Character',
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                    ),
                  ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class MyCustomForm extends StatefulWidget {
  @override
  MyCustomFormState createState() {
    return MyCustomFormState();
  }
}
