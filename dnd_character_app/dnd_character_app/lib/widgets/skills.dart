import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:dnd_character_app/services/character-functions.dart';
import 'package:dnd_character_app/models/characterModel.dart';

class SkillsState extends State<Skills> {
  //Boring set up of all the controllers for each skill
  TextEditingController athleticsController = new TextEditingController(),
      savStrController = new TextEditingController(),
      savDexController = new TextEditingController(),
      acrobaticsController = new TextEditingController(),
      stealthController = new TextEditingController(),
      sleightController = new TextEditingController(),
      savConController = new TextEditingController(),
      savIntController = new TextEditingController(),
      arcanaController = new TextEditingController(),
      survivalController = new TextEditingController(),
      savChaController = new TextEditingController(),
      persuasionController = new TextEditingController(),
      historyController = new TextEditingController(),
      investigationController = new TextEditingController(),
      natureController = new TextEditingController(),
      religionController = new TextEditingController(),
      savWisController = new TextEditingController(),
      animalController = new TextEditingController(),
      insightController = new TextEditingController(),
      medicineController = new TextEditingController(),
      perceptionController = new TextEditingController(),
      deceptionController = new TextEditingController(),
      intimidationController = new TextEditingController(),
      performanceController = new TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  void dispose() {
    //Make sure we dispose the controllers to free up memory and it's considered good practice anyways.
    athleticsController?.dispose();
    savStrController?.dispose();
    savDexController?.dispose();
    acrobaticsController?.dispose();
    stealthController?.dispose();
    sleightController?.dispose();
    savConController?.dispose();
    savIntController?.dispose();
    arcanaController?.dispose();
    historyController?.dispose();
    investigationController?.dispose();
    natureController?.dispose();
    religionController?.dispose();
    savWisController?.dispose();
    animalController?.dispose();
    insightController?.dispose();
    medicineController?.dispose();
    perceptionController?.dispose();
    survivalController?.dispose();
    savChaController?.dispose();
    deceptionController?.dispose();
    intimidationController?.dispose();
    performanceController?.dispose();
    persuasionController?.dispose();
    super.dispose();
  }

  Widget build(BuildContext context) {
    //Controllers are a lot of extra work, but are neccessary for this app to change on one screen. This makes it more convient for the users
    //Setting up the controllers with text to be inputted before the user loads and see's the screen. Otherwise the stats inputted earlier aren't visable to the user. Got to do this for every controller...
    //A list of controllers doesn't seem to work for this for some reason, maybe it's not getting the references?
    //CharSession is the current character from the database
    Pharacter CharSession = ModalRoute.of(context).settings.arguments;
    athleticsController = TextEditingController(
        text: checkIfProficient(CharSession.athletics.toString(),
            CharSession.profAthletics, CharSession.proficiencyBonus));
    savStrController = TextEditingController(
        text: checkIfProficient(CharSession.savStr.toString(),
            CharSession.profSavStr, CharSession.proficiencyBonus));
    savDexController = TextEditingController(
        text: checkIfProficient(CharSession.savDex.toString(),
            CharSession.profSavDex, CharSession.proficiencyBonus));
    acrobaticsController = TextEditingController(
        text: checkIfProficient(CharSession.acrobatics.toString(),
            CharSession.profAcrobatics, CharSession.proficiencyBonus));
    stealthController = TextEditingController(
        text: checkIfProficient(CharSession.stealth.toString(),
            CharSession.profStealth, CharSession.proficiencyBonus));
    sleightController = TextEditingController(
        text: checkIfProficient(CharSession.sleight.toString(),
            CharSession.profSleight, CharSession.proficiencyBonus));
    savConController = TextEditingController(
        text: checkIfProficient(CharSession.savCon.toString(),
            CharSession.profSavCon, CharSession.proficiencyBonus));
    savIntController = TextEditingController(
        text: checkIfProficient(CharSession.savInt.toString(),
            CharSession.profSaveInt, CharSession.proficiencyBonus));
    arcanaController = TextEditingController(
        text: checkIfProficient(CharSession.arcana.toString(),
            CharSession.profArcana, CharSession.proficiencyBonus));
    historyController = TextEditingController(
        text: checkIfProficient(CharSession.history.toString(),
            CharSession.profHistory, CharSession.proficiencyBonus));
    investigationController = TextEditingController(
        text: checkIfProficient(CharSession.investigation.toString(),
            CharSession.profInvestigation, CharSession.proficiencyBonus));
    natureController = TextEditingController(
        text: checkIfProficient(CharSession.nature.toString(),
            CharSession.profNature, CharSession.proficiencyBonus));
    religionController = TextEditingController(
        text: checkIfProficient(CharSession.religion.toString(),
            CharSession.profReligion, CharSession.proficiencyBonus));
    savWisController = TextEditingController(
        text: checkIfProficient(CharSession.savWis.toString(),
            CharSession.profSavWis, CharSession.proficiencyBonus));
    animalController = TextEditingController(
        text: checkIfProficient(CharSession.animal.toString(),
            CharSession.profAnimal, CharSession.proficiencyBonus));
    insightController = TextEditingController(
        text: checkIfProficient(CharSession.insight.toString(),
            CharSession.profInsight, CharSession.proficiencyBonus));
    medicineController = TextEditingController(
        text: checkIfProficient(CharSession.medicine.toString(),
            CharSession.profMedicine, CharSession.proficiencyBonus));
    perceptionController = TextEditingController(
        text: checkIfProficient(CharSession.perception.toString(),
            CharSession.profPerception, CharSession.proficiencyBonus));
    survivalController = TextEditingController(
        text: checkIfProficient(CharSession.survival.toString(),
            CharSession.profSurvival, CharSession.proficiencyBonus));
    savChaController = TextEditingController(
        text: checkIfProficient(CharSession.savCha.toString(),
            CharSession.profSavCha, CharSession.proficiencyBonus));
    deceptionController = TextEditingController(
        text: checkIfProficient(CharSession.deception.toString(),
            CharSession.profDeception, CharSession.proficiencyBonus));
    intimidationController = TextEditingController(
        text: checkIfProficient(CharSession.intimidation.toString(),
            CharSession.profIntimidation, CharSession.proficiencyBonus));
    performanceController = TextEditingController(
        text: checkIfProficient(CharSession.performance.toString(),
            CharSession.profPerformance, CharSession.proficiencyBonus));
    persuasionController = TextEditingController(
        text: checkIfProficient(
      CharSession.persuasion.toString(),
      CharSession.profPersuasion,
      CharSession.proficiencyBonus,
    ));
    //Controllers must be offset or else each time the user clicks on the TextInputFields the text will go to the middle and make it inconvenient to type for the user.
    //Got to do this for every controller as well... Lists don't work
    savStrController.selection = TextSelection.fromPosition(
        TextPosition(offset: savStrController.text.length));
    athleticsController.selection = TextSelection.fromPosition(
        TextPosition(offset: athleticsController.text.length));
    acrobaticsController.selection = TextSelection.fromPosition(
        TextPosition(offset: acrobaticsController.text.length));
    savDexController.selection = TextSelection.fromPosition(
        TextPosition(offset: savDexController.text.length));
    stealthController.selection = TextSelection.fromPosition(
        TextPosition(offset: stealthController.text.length));
    sleightController.selection = TextSelection.fromPosition(
        TextPosition(offset: sleightController.text.length));
    savConController.selection = TextSelection.fromPosition(
        TextPosition(offset: savConController.text.length));
    savIntController.selection = TextSelection.fromPosition(
        TextPosition(offset: savIntController.text.length));
    arcanaController.selection = TextSelection.fromPosition(
        TextPosition(offset: arcanaController.text.length));
    historyController.selection = TextSelection.fromPosition(
        TextPosition(offset: historyController.text.length));
    investigationController.selection = TextSelection.fromPosition(
        TextPosition(offset: investigationController.text.length));
    natureController.selection = TextSelection.fromPosition(
        TextPosition(offset: natureController.text.length));
    religionController.selection = TextSelection.fromPosition(
        TextPosition(offset: religionController.text.length));
    savWisController.selection = TextSelection.fromPosition(
        TextPosition(offset: savWisController.text.length));
    animalController.selection = TextSelection.fromPosition(
        TextPosition(offset: animalController.text.length));
    insightController.selection = TextSelection.fromPosition(
        TextPosition(offset: insightController.text.length));
    medicineController.selection = TextSelection.fromPosition(
        TextPosition(offset: medicineController.text.length));
    perceptionController.selection = TextSelection.fromPosition(
        TextPosition(offset: perceptionController.text.length));
    survivalController.selection = TextSelection.fromPosition(
        TextPosition(offset: survivalController.text.length));
    savChaController.selection = TextSelection.fromPosition(
        TextPosition(offset: savChaController.text.length));
    deceptionController.selection = TextSelection.fromPosition(
        TextPosition(offset: deceptionController.text.length));
    intimidationController.selection = TextSelection.fromPosition(
        TextPosition(offset: intimidationController.text.length));
    performanceController.selection = TextSelection.fromPosition(
        TextPosition(offset: performanceController.text.length));
    persuasionController.selection = TextSelection.fromPosition(
        TextPosition(offset: persuasionController.text.length));
    //Setting up the skills widget so it's displayed to the user
    return Column(
      children: <Widget>[
        Row(
          children: <Widget>[
            //Strength Skills
            Expanded(
              child: Container(
                margin: EdgeInsets.only(left: 20, right: 20, top: 5),
                padding: EdgeInsets.only(bottom: 10),
                decoration: BoxDecoration(
                    border: Border(
                  bottom: BorderSide(
                    color: Colors.white,
                    width: 1.5,
                  ),
                )),
                child: Text(
                  "Strength",
                  textAlign: TextAlign.left,
                  textScaleFactor: 3,
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ],
        ),
        //Strength end
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(left: 20, top: 1),
              width: 25,
              height: 25,
              child: Material(
                type: MaterialType.circle,
                color: changeProfColor(CharSession.profSavStr),
                child: InkWell(
                  onTap: () {
                    setState(() {
                      if (CharSession.profSavStr == 0) {
                        CharSession.profSavStr = 1;
                        updateCharacter(CharSession);
                      } else {
                        CharSession.profSavStr = 0;
                        updateCharacter(CharSession);
                      }
                    });
                  },
                ),
              ),
            ),
            Container(
              width: 50,
              height: 20,
              child: TextFormField(
                //initialValue: checkIfProficient(CharSession.savStr.toString(), CharSession.profSavStr, CharSession.proficiencyBonus),
                controller: savStrController,
                enableInteractiveSelection: false,
                keyboardType: TextInputType.numberWithOptions(signed: true),
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white, fontSize: 25, height: 1),
                inputFormatters: <TextInputFormatter>[
                  LengthLimitingTextInputFormatter(3),
                ],
                decoration: const InputDecoration.collapsed(
                    hintText: "0", hintStyle: TextStyle(color: Colors.white)),
                onFieldSubmitted: (newText) => {
                  setState(() {
                    if (CharSession.profSavStr == 1) {
                      //Need to offset if we are proficient because the text controller will run through the checkProficiency function again after we change this variable.
                      //This allows use to offset the variable by the amount we'll add making if the desired outcome.
                      //This way the user doesn't get numbers added to the text they just inputted.
                      CharSession.savStr = int.parse(newText) - CharSession.proficiencyBonus;
                    } else {
                      //If we don't do else statements the offset would affect us negatively if we aren't proficient
                      CharSession.savStr = int.parse(newText);
                    }
                    updateCharacter(CharSession);
                  }),
                },
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 15),
              width: 200,
              height: 30,
              /*decoration: BoxDecoration(
          border: Border.all(width: 2.0, color: const Color(0xFFFFFFFF)),
          ),*/
              child: Text(
                "Saving Throw",
                style:
                    TextStyle(color: Colors.white, fontSize: 25, height: 0.8),
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(left: 20, top: 1),
              width: 25,
              height: 25,
              child: Material(
                type: MaterialType.circle,
                color: changeProfColor(CharSession.profAthletics),
                child: InkWell(
                  onTap: () {
                    setState(() {
                      if (CharSession.profAthletics == 0) {
                        CharSession.profAthletics = 1;
                        updateCharacter(CharSession);
                      } else {
                        CharSession.profAthletics = 0;
                        updateCharacter(CharSession);
                      }
                    });
                  },
                ),
              ),
            ),
            Container(
              width: 50,
              height: 20,
              child: TextFormField(
                //initialValue: checkIfProficient(globals.stats['Strength'], CharSession.profAthletics, CharSession.proficiencyBonus),
                controller: athleticsController,
                enableInteractiveSelection: false,
                keyboardType: TextInputType.numberWithOptions(signed: true),
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white, fontSize: 25, height: 1),
                inputFormatters: <TextInputFormatter>[
                  LengthLimitingTextInputFormatter(3),
                ],
                decoration: const InputDecoration.collapsed(
                    hintText: "0", hintStyle: TextStyle(color: Colors.white)),
                onFieldSubmitted: (newText) => {
                  setState(() {
                    if(CharSession.profAthletics == 1){
                      CharSession.athletics = int.parse(newText) - CharSession.proficiencyBonus;
                    }
                    else{
                      CharSession.athletics = int.parse(newText);
                    }
                    updateCharacter(CharSession);
                  }),
                },
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 15),
              width: 200,
              height: 30,
              /*decoration: BoxDecoration(
          border: Border.all(width: 2.0, color: const Color(0xFFFFFFFF)),
          ),*/
              child: Text(
                "Athletics",
                style:
                    TextStyle(color: Colors.white, fontSize: 25, height: 0.8),
              ),
            ),
          ],
        ),
        Row(
          children: <Widget>[
            //Strength Skills
            Expanded(
              child: Container(
                margin: EdgeInsets.only(left: 20, right: 20, top: 5),
                padding: EdgeInsets.only(bottom: 10),
                decoration: BoxDecoration(
                    border: Border(
                  bottom: BorderSide(
                    color: Colors.white,
                    width: 1.5,
                  ),
                )),
                child: Text(
                  "Dexterity",
                  textAlign: TextAlign.left,
                  textScaleFactor: 3,
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(left: 20, top: 1),
              width: 25,
              height: 25,
              child: Material(
                type: MaterialType.circle,
                color: changeProfColor(CharSession.profSavDex),
                child: InkWell(
                  onTap: () {
                    setState(() {
                      if (CharSession.profSavDex == 0) {
                        CharSession.profSavDex = 1;
                        updateCharacter(CharSession);
                      } else {
                        CharSession.profSavDex = 0;
                        updateCharacter(CharSession);
                      }
                    });
                  },
                ),
              ),
            ),
            Container(
              width: 50,
              height: 20,
              child: TextFormField(
                controller: savDexController,
                enableInteractiveSelection: false,
                keyboardType: TextInputType.numberWithOptions(signed: true),
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white, fontSize: 25, height: 1),
                inputFormatters: <TextInputFormatter>[
                  LengthLimitingTextInputFormatter(3),
                ],
                decoration: const InputDecoration.collapsed(
                    hintText: "0", hintStyle: TextStyle(color: Colors.white)),
                onFieldSubmitted: (newText) => {
                  setState(() {
                    if(CharSession.profSavDex == 1){
                      CharSession.savDex = int.parse(newText) - CharSession.proficiencyBonus;
                    }
                    else{
                      CharSession.savDex = int.parse(newText);
                    }
                    updateCharacter(CharSession);
                  }),
                },
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 15),
              width: 200,
              height: 30,
              /*decoration: BoxDecoration(
          border: Border.all(width: 2.0, color: const Color(0xFFFFFFFF)),
          ),*/
              child: Text(
                "Saving Throw",
                style:
                    TextStyle(color: Colors.white, fontSize: 25, height: 0.8),
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(left: 20, top: 1),
              width: 25,
              height: 25,
              child: Material(
                type: MaterialType.circle,
                color: changeProfColor(CharSession.profAcrobatics),
                child: InkWell(
                  onTap: () {
                    setState(() {
                      if (CharSession.profAcrobatics == 0) {
                        CharSession.profAcrobatics = 1;
                        updateCharacter(CharSession);
                      } else {
                        CharSession.profAcrobatics = 0;
                        updateCharacter(CharSession);
                      }
                    });
                  },
                ),
              ),
            ),
            Container(
              width: 50,
              height: 20,
              child: TextFormField(
                controller: acrobaticsController,
                enableInteractiveSelection: false,
                keyboardType: TextInputType.numberWithOptions(signed: true),
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white, fontSize: 25, height: 1),
                inputFormatters: <TextInputFormatter>[
                  LengthLimitingTextInputFormatter(3),
                ],
                decoration: const InputDecoration.collapsed(
                    hintText: "0", hintStyle: TextStyle(color: Colors.white)),
                onFieldSubmitted: (newText) => {
                  setState(() {
                    if(CharSession.profAcrobatics == 1){
                      CharSession.acrobatics = int.parse(newText) - CharSession.proficiencyBonus;
                    }
                    else{
                      CharSession.acrobatics = int.parse(newText);
                    }
                    updateCharacter(CharSession);
                  }),
                },
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 15),
              width: 200,
              height: 30,
              /*decoration: BoxDecoration(
          border: Border.all(width: 2.0, color: const Color(0xFFFFFFFF)),
          ),*/
              child: Text(
                "Acrobatics",
                style:
                    TextStyle(color: Colors.white, fontSize: 25, height: 0.8),
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(left: 20, top: 1),
              width: 25,
              height: 25,
              child: Material(
                type: MaterialType.circle,
                color: changeProfColor(CharSession.profStealth),
                child: InkWell(
                  onTap: () {
                    setState(() {
                      if (CharSession.profStealth == 0) {
                        CharSession.profStealth = 1;
                        updateCharacter(CharSession);
                      } else {
                        CharSession.profStealth = 0;
                        updateCharacter(CharSession);
                      }
                    });
                  },
                ),
              ),
            ),
            Container(
              width: 50,
              height: 20,
              child: TextFormField(
                controller: stealthController,
                enableInteractiveSelection: false,
                keyboardType: TextInputType.numberWithOptions(signed: true),
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white, fontSize: 25, height: 1),
                inputFormatters: <TextInputFormatter>[
                  LengthLimitingTextInputFormatter(3),
                ],
                decoration: const InputDecoration.collapsed(
                    hintText: "0", hintStyle: TextStyle(color: Colors.white)),
                onFieldSubmitted: (newText) => {
                  setState(() {
                    if(CharSession.profStealth == 1){
                      CharSession.stealth = int.parse(newText) - CharSession.proficiencyBonus;
                    }
                    else{
                      CharSession.stealth = int.parse(newText);
                    }
                    updateCharacter(CharSession);
                  }),
                },
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 15),
              width: 200,
              height: 30,
              /*decoration: BoxDecoration(
          border: Border.all(width: 2.0, color: const Color(0xFFFFFFFF)),
          ),*/
              child: Text(
                "Stealth",
                style:
                    TextStyle(color: Colors.white, fontSize: 25, height: 0.8),
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(left: 20, top: 1),
              width: 25,
              height: 25,
              child: Material(
                type: MaterialType.circle,
                color: changeProfColor(CharSession.profSleight),
                child: InkWell(
                  onTap: () {
                    setState(() {
                      if (CharSession.profSleight == 0) {
                        CharSession.profSleight = 1;
                        updateCharacter(CharSession);
                      } else {
                        CharSession.profSleight = 0;
                        updateCharacter(CharSession);
                      }
                    });
                  },
                ),
              ),
            ),
            Container(
              width: 50,
              height: 20,
              child: TextFormField(
                controller: sleightController,
                enableInteractiveSelection: false,
                keyboardType: TextInputType.numberWithOptions(signed: true),
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white, fontSize: 25, height: 1),
                inputFormatters: <TextInputFormatter>[
                  LengthLimitingTextInputFormatter(3),
                ],
                decoration: const InputDecoration.collapsed(
                    hintText: "0", hintStyle: TextStyle(color: Colors.white)),
                onFieldSubmitted: (newText) => {
                  setState(() {
                    if(CharSession.profSleight == 1){
                      CharSession.sleight = int.parse(newText) - CharSession.proficiencyBonus;
                    }
                    else{
                      CharSession.sleight = int.parse(newText);
                    }
                    updateCharacter(CharSession);
                  }),
                },
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 15),
              width: 200,
              height: 30,
              /*decoration: BoxDecoration(
          border: Border.all(width: 2.0, color: const Color(0xFFFFFFFF)),
          ),*/
              child: Text(
                "Sleight of Hand",
                style:
                    TextStyle(color: Colors.white, fontSize: 25, height: 0.8),
              ),
            ),
          ],
        ),
        Row(
          children: <Widget>[
            //Strength Skills
            Expanded(
              child: Container(
                margin: EdgeInsets.only(left: 20, right: 20, top: 5),
                padding: EdgeInsets.only(bottom: 10),
                decoration: BoxDecoration(
                    border: Border(
                  bottom: BorderSide(
                    color: Colors.white,
                    width: 1.5,
                  ),
                )),
                child: Text(
                  "Constitution",
                  textAlign: TextAlign.left,
                  textScaleFactor: 3,
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ],
        ),

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(left: 20, top: 1),
              width: 25,
              height: 25,
              child: Material(
                type: MaterialType.circle,
                color: changeProfColor(CharSession.profSavCon),
                child: InkWell(
                  onTap: () {
                    setState(() {
                      if (CharSession.profSavCon == 0) {
                        CharSession.profSavCon = 1;
                        updateCharacter(CharSession);
                      } else {
                        CharSession.profSavCon = 0;
                        updateCharacter(CharSession);
                      }
                    });
                  },
                ),
              ),
            ),
            Container(
              width: 50,
              height: 20,
              child: TextFormField(
                controller: savConController,
                enableInteractiveSelection: false,
                keyboardType: TextInputType.numberWithOptions(signed: true),
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white, fontSize: 25, height: 1),
                inputFormatters: <TextInputFormatter>[
                  LengthLimitingTextInputFormatter(3),
                ],
                decoration: const InputDecoration.collapsed(
                    hintText: "0", hintStyle: TextStyle(color: Colors.white)),
                onFieldSubmitted: (newText) => {
                  setState(() {
                    if(CharSession.profSavCon == 1){
                      CharSession.savCon = int.parse(newText) - CharSession.proficiencyBonus;
                    }
                    else{
                      CharSession.savCon = int.parse(newText);
                    }
                    updateCharacter(CharSession);
                  }),
                },
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 15),
              width: 200,
              height: 30,
              /*decoration: BoxDecoration(
          border: Border.all(width: 2.0, color: const Color(0xFFFFFFFF)),
          ),*/
              child: Text(
                "Saving Throw",
                style:
                    TextStyle(color: Colors.white, fontSize: 25, height: 0.8),
              ),
            ),
          ],
        ),
        Row(
          children: <Widget>[
            //Strength Skills
            Expanded(
              child: Container(
                margin: EdgeInsets.only(left: 20, right: 20, top: 5),
                padding: EdgeInsets.only(bottom: 10),
                decoration: BoxDecoration(
                    border: Border(
                  bottom: BorderSide(
                    color: Colors.white,
                    width: 1.5,
                  ),
                )),
                child: Text(
                  "Intelligence",
                  textAlign: TextAlign.left,
                  textScaleFactor: 3,
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(left: 20, top: 1),
              width: 25,
              height: 25,
              child: Material(
                type: MaterialType.circle,
                color: changeProfColor(CharSession.profSaveInt),
                child: InkWell(
                  onTap: () {
                    setState(() {
                      if (CharSession.profSaveInt == 0) {
                        CharSession.profSaveInt = 1;
                        updateCharacter(CharSession);
                      } else {
                        CharSession.profSaveInt = 0;
                        updateCharacter(CharSession);
                      }
                    });
                  },
                ),
              ),
            ),
            Container(
              width: 50,
              height: 20,
              child: TextFormField(
                controller: savIntController,
                enableInteractiveSelection: false,
                keyboardType: TextInputType.numberWithOptions(signed: true),
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white, fontSize: 25, height: 1),
                inputFormatters: <TextInputFormatter>[
                  LengthLimitingTextInputFormatter(3),
                ],
                decoration: const InputDecoration.collapsed(
                    hintText: "0", hintStyle: TextStyle(color: Colors.white)),
                onFieldSubmitted: (newText) => {
                  setState(() {
                    if(CharSession.profSaveInt == 1){
                      CharSession.savInt = int.parse(newText) - CharSession.proficiencyBonus;
                    }
                    else{
                      CharSession.savInt = int.parse(newText);
                    }
                    updateCharacter(CharSession);
                  }),
                },
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 15),
              width: 200,
              height: 30,
              /*decoration: BoxDecoration(
          border: Border.all(width: 2.0, color: const Color(0xFFFFFFFF)),
          ),*/
              child: Text(
                "Saving Throw",
                style:
                    TextStyle(color: Colors.white, fontSize: 25, height: 0.8),
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(left: 20, top: 1),
              width: 25,
              height: 25,
              child: Material(
                type: MaterialType.circle,
                color: changeProfColor(CharSession.profArcana),
                child: InkWell(
                  onTap: () {
                    setState(() {
                      if (CharSession.profArcana == 0) {
                        CharSession.profArcana = 1;
                        updateCharacter(CharSession);
                      } else {
                        CharSession.profArcana = 0;
                        updateCharacter(CharSession);
                      }
                    });
                  },
                ),
              ),
            ),
            Container(
              width: 50,
              height: 20,
              child: TextFormField(
                controller: arcanaController,
                enableInteractiveSelection: false,
                keyboardType: TextInputType.numberWithOptions(signed: true),
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white, fontSize: 25, height: 1),
                inputFormatters: <TextInputFormatter>[
                  LengthLimitingTextInputFormatter(3),
                ],
                decoration: const InputDecoration.collapsed(
                    hintText: "0", hintStyle: TextStyle(color: Colors.white)),
                onFieldSubmitted: (newText) => {
                  setState(() {
                    if(CharSession.profArcana == 1){
                      CharSession.arcana = int.parse(newText) - CharSession.proficiencyBonus;
                    }
                    else{
                      CharSession.arcana = int.parse(newText);
                    }
                    updateCharacter(CharSession);
                  }),
                },
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 15),
              width: 200,
              height: 30,
              /*decoration: BoxDecoration(
          border: Border.all(width: 2.0, color: const Color(0xFFFFFFFF)),
          ),*/
              child: Text(
                "Arcana",
                style:
                    TextStyle(color: Colors.white, fontSize: 25, height: 0.8),
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(left: 20, top: 1),
              width: 25,
              height: 25,
              child: Material(
                type: MaterialType.circle,
                color: changeProfColor(CharSession.profHistory),
                child: InkWell(
                  onTap: () {
                    setState(() {
                      if (CharSession.profHistory == 0) {
                        CharSession.profHistory = 1;
                        updateCharacter(CharSession);
                      } else {
                        CharSession.profHistory = 0;
                        updateCharacter(CharSession);
                      }
                    });
                  },
                ),
              ),
            ),
            Container(
              width: 50,
              height: 20,
              child: TextFormField(
                controller: historyController,
                enableInteractiveSelection: false,
                keyboardType: TextInputType.numberWithOptions(signed: true),
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white, fontSize: 25, height: 1),
                inputFormatters: <TextInputFormatter>[
                  LengthLimitingTextInputFormatter(3),
                ],
                decoration: const InputDecoration.collapsed(
                    hintText: "0", hintStyle: TextStyle(color: Colors.white)),
                onFieldSubmitted: (newText) => {
                  setState(() {
                    if(CharSession.profHistory == 1){
                      CharSession.history = int.parse(newText) - CharSession.proficiencyBonus;
                    }
                    else{
                      CharSession.history = int.parse(newText);
                    }
                    updateCharacter(CharSession);
                  }),
                },
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 15),
              width: 200,
              height: 30,
              /*decoration: BoxDecoration(
          border: Border.all(width: 2.0, color: const Color(0xFFFFFFFF)),
          ),*/
              child: Text(
                "History",
                style:
                    TextStyle(color: Colors.white, fontSize: 25, height: 0.8),
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(left: 20, top: 1),
              width: 25,
              height: 25,
              child: Material(
                type: MaterialType.circle,
                color: changeProfColor(CharSession.profInvestigation),
                child: InkWell(
                  onTap: () {
                    setState(() {
                      if (CharSession.profInvestigation == 0) {
                        CharSession.profInvestigation = 1;
                        updateCharacter(CharSession);
                      } else {
                        CharSession.profInvestigation = 0;
                        updateCharacter(CharSession);
                      }
                    });
                  },
                ),
              ),
            ),
            Container(
              width: 50,
              height: 20,
              child: TextFormField(
                controller: investigationController,
                enableInteractiveSelection: false,
                keyboardType: TextInputType.numberWithOptions(signed: true),
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white, fontSize: 25, height: 1),
                inputFormatters: <TextInputFormatter>[
                  LengthLimitingTextInputFormatter(3),
                ],
                decoration: const InputDecoration.collapsed(
                    hintText: "0", hintStyle: TextStyle(color: Colors.white)),
                onFieldSubmitted: (newText) => {
                  setState(() {
                    if(CharSession.profInvestigation == 1){
                      CharSession.investigation = int.parse(newText) - CharSession.proficiencyBonus;
                    }
                    else{
                      CharSession.investigation = int.parse(newText);
                    }
                    updateCharacter(CharSession);
                  }),
                },
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 15),
              width: 200,
              height: 30,
              /*decoration: BoxDecoration(
          border: Border.all(width: 2.0, color: const Color(0xFFFFFFFF)),
          ),*/
              child: Text(
                "Investigation",
                style:
                    TextStyle(color: Colors.white, fontSize: 25, height: 0.8),
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(left: 20, top: 1),
              width: 25,
              height: 25,
              child: Material(
                type: MaterialType.circle,
                color: changeProfColor(CharSession.profNature),
                child: InkWell(
                  onTap: () {
                    setState(() {
                      if (CharSession.profNature == 0) {
                        CharSession.profNature = 1;
                        updateCharacter(CharSession);
                      } else {
                        CharSession.profNature = 0;
                        updateCharacter(CharSession);
                      }
                    });
                  },
                ),
              ),
            ),
            Container(
              width: 50,
              height: 20,
              child: TextFormField(
                controller: natureController,
                enableInteractiveSelection: false,
                keyboardType: TextInputType.numberWithOptions(signed: true),
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white, fontSize: 25, height: 1),
                inputFormatters: <TextInputFormatter>[
                  LengthLimitingTextInputFormatter(3),
                ],
                decoration: const InputDecoration.collapsed(
                    hintText: "0", hintStyle: TextStyle(color: Colors.white)),
                onFieldSubmitted: (newText) => {
                  setState(() {
                    if(CharSession.profNature == 1){
                      CharSession.nature = int.parse(newText) - CharSession.proficiencyBonus;
                    }
                    else{
                      CharSession.nature = int.parse(newText);
                    }
                    updateCharacter(CharSession);
                  }),
                },
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 15),
              width: 200,
              height: 30,
              /*decoration: BoxDecoration(
          border: Border.all(width: 2.0, color: const Color(0xFFFFFFFF)),
          ),*/
              child: Text(
                "Nature",
                style:
                    TextStyle(color: Colors.white, fontSize: 25, height: 0.8),
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(left: 20, top: 1),
              width: 25,
              height: 25,
              child: Material(
                type: MaterialType.circle,
                color: changeProfColor(CharSession.profReligion),
                child: InkWell(
                  onTap: () {
                    setState(() {
                      if (CharSession.profReligion == 0) {
                        CharSession.profReligion = 1;
                        updateCharacter(CharSession);
                      } else {
                        CharSession.profReligion = 0;
                        updateCharacter(CharSession);
                      }
                    });
                  },
                ),
              ),
            ),
            Container(
              width: 50,
              height: 20,
              child: TextFormField(
                controller: religionController,
                enableInteractiveSelection: false,
                keyboardType: TextInputType.numberWithOptions(signed: true),
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white, fontSize: 25, height: 1),
                inputFormatters: <TextInputFormatter>[
                  LengthLimitingTextInputFormatter(3),
                ],
                decoration: const InputDecoration.collapsed(
                    hintText: "0", hintStyle: TextStyle(color: Colors.white)),
                onFieldSubmitted: (newText) => {
                  setState(() {
                    if(CharSession.profReligion == 1){
                      CharSession.religion = int.parse(newText) - CharSession.proficiencyBonus;
                    }
                    else{
                      CharSession.religion = int.parse(newText);
                    }
                    updateCharacter(CharSession);
                  }),
                },
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 15),
              width: 200,
              height: 30,
              /*decoration: BoxDecoration(
          border: Border.all(width: 2.0, color: const Color(0xFFFFFFFF)),
          ),*/
              child: Text(
                "Religion",
                style:
                    TextStyle(color: Colors.white, fontSize: 25, height: 0.8),
              ),
            ),
          ],
        ),
        Row(
          children: <Widget>[
            //Strength Skills
            Expanded(
              child: Container(
                margin: EdgeInsets.only(left: 20, right: 20, top: 5),
                padding: EdgeInsets.only(bottom: 10),
                decoration: BoxDecoration(
                    border: Border(
                  bottom: BorderSide(
                    color: Colors.white,
                    width: 1.5,
                  ),
                )),
                child: Text(
                  "Wisdom",
                  textAlign: TextAlign.left,
                  textScaleFactor: 3,
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(left: 20, top: 1),
              width: 25,
              height: 25,
              child: Material(
                type: MaterialType.circle,
                color: changeProfColor(CharSession.profSavWis),
                child: InkWell(
                  onTap: () {
                    setState(() {
                      if (CharSession.profSavWis == 0) {
                        CharSession.profSavWis = 1;
                        updateCharacter(CharSession);
                      } else {
                        CharSession.profSavWis = 0;
                        updateCharacter(CharSession);
                      }
                    });
                  },
                ),
              ),
            ),
            Container(
              width: 50,
              height: 20,
              child: TextFormField(
                controller: savWisController,
                enableInteractiveSelection: false,
                keyboardType: TextInputType.numberWithOptions(signed: true),
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white, fontSize: 25, height: 1),
                inputFormatters: <TextInputFormatter>[
                  LengthLimitingTextInputFormatter(3),
                ],
                decoration: const InputDecoration.collapsed(
                    hintText: "0", hintStyle: TextStyle(color: Colors.white)),
                onFieldSubmitted: (newText) => {
                  setState(() {
                    if(CharSession.profSavWis == 1){
                      CharSession.savWis = int.parse(newText) - CharSession.proficiencyBonus;
                    }
                    else{
                      CharSession.savWis = int.parse(newText);
                    }
                    updateCharacter(CharSession);
                  }),
                },
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 15),
              width: 200,
              height: 30,
              /*decoration: BoxDecoration(
          border: Border.all(width: 2.0, color: const Color(0xFFFFFFFF)),
          ),*/
              child: Text(
                "Saving Throw",
                style:
                    TextStyle(color: Colors.white, fontSize: 25, height: 0.8),
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(left: 20, top: 1),
              width: 25,
              height: 25,
              child: Material(
                type: MaterialType.circle,
                color: changeProfColor(CharSession.profAnimal),
                child: InkWell(
                  onTap: () {
                    setState(() {
                      if (CharSession.profAnimal == 0) {
                        CharSession.profAnimal = 1;
                        updateCharacter(CharSession);
                      } else {
                        CharSession.profAnimal = 0;
                        updateCharacter(CharSession);
                      }
                    });
                  },
                ),
              ),
            ),
            Container(
              width: 50,
              height: 20,
              child: TextFormField(
                controller: animalController,
                enableInteractiveSelection: false,
                keyboardType: TextInputType.numberWithOptions(signed: true),
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white, fontSize: 25, height: 1),
                inputFormatters: <TextInputFormatter>[
                  LengthLimitingTextInputFormatter(3),
                ],
                decoration: const InputDecoration.collapsed(
                    hintText: "0", hintStyle: TextStyle(color: Colors.white)),
                onFieldSubmitted: (newText) => {
                  setState(() {
                    if(CharSession.profAnimal == 1){
                      CharSession.animal = int.parse(newText) - CharSession.proficiencyBonus;
                    }
                    else{
                      CharSession.animal = int.parse(newText);
                    }
                    updateCharacter(CharSession);
                  }),
                },
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 15),
              width: 200,
              height: 30,
              /*decoration: BoxDecoration(
          border: Border.all(width: 2.0, color: const Color(0xFFFFFFFF)),
          ),*/
              child: Text(
                "Animal Handling",
                style:
                    TextStyle(color: Colors.white, fontSize: 25, height: 0.8),
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(left: 20, top: 1),
              width: 25,
              height: 25,
              child: Material(
                type: MaterialType.circle,
                color: changeProfColor(CharSession.profInsight),
                child: InkWell(
                  onTap: () {
                    setState(() {
                      if (CharSession.profInsight == 0) {
                        CharSession.profInsight = 1;
                        updateCharacter(CharSession);
                      } else {
                        CharSession.profInsight = 0;
                        updateCharacter(CharSession);
                      }
                    });
                  },
                ),
              ),
            ),
            Container(
              width: 50,
              height: 20,
              child: TextFormField(
                controller: insightController,
                enableInteractiveSelection: false,
                keyboardType: TextInputType.numberWithOptions(signed: true),
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white, fontSize: 25, height: 1),
                inputFormatters: <TextInputFormatter>[
                  LengthLimitingTextInputFormatter(3),
                ],
                decoration: const InputDecoration.collapsed(
                    hintText: "0", hintStyle: TextStyle(color: Colors.white)),
                onFieldSubmitted: (newText) => {
                  setState(() {
                    if(CharSession.profInsight == 1){
                      CharSession.insight = int.parse(newText) - CharSession.proficiencyBonus;
                    }
                    else{
                      CharSession.insight = int.parse(newText);
                    }
                    updateCharacter(CharSession);
                  }),
                },
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 15),
              width: 200,
              height: 30,
              /*decoration: BoxDecoration(
          border: Border.all(width: 2.0, color: const Color(0xFFFFFFFF)),
          ),*/
              child: Text(
                "Insight",
                style:
                    TextStyle(color: Colors.white, fontSize: 25, height: 0.8),
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(left: 20, top: 1),
              width: 25,
              height: 25,
              child: Material(
                type: MaterialType.circle,
                color: changeProfColor(CharSession.profMedicine),
                child: InkWell(
                  onTap: () {
                    setState(() {
                      if (CharSession.profMedicine == 0) {
                        CharSession.profMedicine = 1;
                        updateCharacter(CharSession);
                      } else {
                        CharSession.profMedicine = 0;
                        updateCharacter(CharSession);
                      }
                    });
                  },
                ),
              ),
            ),
            Container(
              width: 50,
              height: 20,
              child: TextFormField(
                controller: medicineController,
                enableInteractiveSelection: false,
                keyboardType: TextInputType.numberWithOptions(signed: true),
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white, fontSize: 25, height: 1),
                inputFormatters: <TextInputFormatter>[
                  LengthLimitingTextInputFormatter(3),
                ],
                decoration: const InputDecoration.collapsed(
                    hintText: "0", hintStyle: TextStyle(color: Colors.white)),
                onFieldSubmitted: (newText) => {
                  setState(() {
                    if(CharSession.profMedicine == 1){
                      CharSession.medicine = int.parse(newText) - CharSession.proficiencyBonus;
                    }
                    else{
                      CharSession.medicine = int.parse(newText);
                    }
                    updateCharacter(CharSession);
                  }),
                },
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 15),
              width: 200,
              height: 30,
              /*decoration: BoxDecoration(
          border: Border.all(width: 2.0, color: const Color(0xFFFFFFFF)),
          ),*/
              child: Text(
                "Medicine",
                style:
                    TextStyle(color: Colors.white, fontSize: 25, height: 0.8),
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(left: 20, top: 1),
              width: 25,
              height: 25,
              child: Material(
                type: MaterialType.circle,
                color: changeProfColor(CharSession.profPerception),
                child: InkWell(
                  onTap: () {
                    setState(() {
                      if (CharSession.profPerception == 0) {
                        CharSession.profPerception = 1;
                        updateCharacter(CharSession);
                      } else {
                        CharSession.profPerception = 0;
                        updateCharacter(CharSession);
                      }
                    });
                  },
                ),
              ),
            ),
            Container(
              width: 50,
              height: 20,
              child: TextFormField(
                controller: perceptionController,
                enableInteractiveSelection: false,
                keyboardType: TextInputType.numberWithOptions(signed: true),
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white, fontSize: 25, height: 1),
                inputFormatters: <TextInputFormatter>[
                  LengthLimitingTextInputFormatter(3),
                ],
                decoration: const InputDecoration.collapsed(
                    hintText: "0", hintStyle: TextStyle(color: Colors.white)),
                onFieldSubmitted: (newText) => {
                  setState(() {
                    if(CharSession.profPerception == 1){
                      CharSession.perception = int.parse(newText) - CharSession.proficiencyBonus;
                    }
                    else{
                      CharSession.perception = int.parse(newText);
                    }
                    updateCharacter(CharSession);
                  }),
                },
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 15),
              width: 200,
              height: 30,
              /*decoration: BoxDecoration(
          border: Border.all(width: 2.0, color: const Color(0xFFFFFFFF)),
          ),*/
              child: Text(
                "Perception",
                style:
                    TextStyle(color: Colors.white, fontSize: 25, height: 0.8),
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(left: 20, top: 1),
              width: 25,
              height: 25,
              child: Material(
                type: MaterialType.circle,
                color: changeProfColor(CharSession.profSurvival),
                child: InkWell(
                  onTap: () {
                    setState(() {
                      if (CharSession.profSurvival == 0) {
                        CharSession.profSurvival = 1;
                        updateCharacter(CharSession);
                      } else {
                        CharSession.profSurvival = 0;
                        updateCharacter(CharSession);
                      }
                    });
                  },
                ),
              ),
            ),
            Container(
              width: 50,
              height: 20,
              child: TextFormField(
                controller: survivalController,
                enableInteractiveSelection: false,
                keyboardType: TextInputType.numberWithOptions(signed: true),
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white, fontSize: 25, height: 1),
                inputFormatters: <TextInputFormatter>[
                  LengthLimitingTextInputFormatter(3),
                ],
                decoration: const InputDecoration.collapsed(
                    hintText: "0", hintStyle: TextStyle(color: Colors.white)),
                onFieldSubmitted: (newText) => {
                  setState(() {
                    if(CharSession.profSurvival == 1){
                      CharSession.survival = int.parse(newText) - CharSession.proficiencyBonus;
                    }
                    else{
                      CharSession.survival = int.parse(newText);
                    }
                    updateCharacter(CharSession);
                  }),
                },
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 15),
              width: 200,
              height: 30,
              /*decoration: BoxDecoration(
          border: Border.all(width: 2.0, color: const Color(0xFFFFFFFF)),
          ),*/
              child: Text(
                "Survival",
                style:
                    TextStyle(color: Colors.white, fontSize: 25, height: 0.8),
              ),
            ),
          ],
        ),
        Row(
          children: <Widget>[
            //Strength Skills
            Expanded(
              child: Container(
                margin: EdgeInsets.only(left: 20, right: 20, top: 5),
                padding: EdgeInsets.only(bottom: 10),
                decoration: BoxDecoration(
                    border: Border(
                  bottom: BorderSide(
                    color: Colors.white,
                    width: 1.5,
                  ),
                )),
                child: Text(
                  "Charisma",
                  textAlign: TextAlign.left,
                  textScaleFactor: 3,
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(left: 20, top: 1),
              width: 25,
              height: 25,
              child: Material(
                type: MaterialType.circle,
                color: changeProfColor(CharSession.profSavCha),
                child: InkWell(
                  onTap: () {
                    setState(() {
                      if (CharSession.profSavCha == 0) {
                        CharSession.profSavCha = 1;
                        updateCharacter(CharSession);
                      } else {
                        CharSession.profSavCha = 0;
                        updateCharacter(CharSession);
                      }
                    });
                  },
                ),
              ),
            ),
            Container(
              width: 50,
              height: 20,
              child: TextFormField(
                controller: savChaController,
                enableInteractiveSelection: false,
                keyboardType: TextInputType.numberWithOptions(signed: true),
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white, fontSize: 25, height: 1),
                inputFormatters: <TextInputFormatter>[
                  LengthLimitingTextInputFormatter(3),
                ],
                decoration: const InputDecoration.collapsed(
                    hintText: "0", hintStyle: TextStyle(color: Colors.white)),
                onFieldSubmitted: (newText) => {
                  setState(() {
                    if(CharSession.profSavCha == 1){
                      CharSession.savCha = int.parse(newText) - CharSession.proficiencyBonus;
                    }
                    else{
                      CharSession.savCha = int.parse(newText);
                    }
                    updateCharacter(CharSession);
                  }),
                },
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 15),
              width: 200,
              height: 30,
              /*decoration: BoxDecoration(
          border: Border.all(width: 2.0, color: const Color(0xFFFFFFFF)),
          ),*/
              child: Text(
                "Saving Throw",
                style:
                    TextStyle(color: Colors.white, fontSize: 25, height: 0.8),
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(left: 20, top: 1),
              width: 25,
              height: 25,
              child: Material(
                type: MaterialType.circle,
                color: changeProfColor(CharSession.profDeception),
                child: InkWell(
                  onTap: () {
                    setState(() {
                      if (CharSession.profDeception == 0) {
                        CharSession.profDeception = 1;
                        updateCharacter(CharSession);
                      } else {
                        CharSession.profDeception = 0;
                        updateCharacter(CharSession);
                      }
                    });
                  },
                ),
              ),
            ),
            Container(
              width: 50,
              height: 20,
              child: TextFormField(
                controller: deceptionController,
                enableInteractiveSelection: false,
                keyboardType: TextInputType.numberWithOptions(signed: true),
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white, fontSize: 25, height: 1),
                inputFormatters: <TextInputFormatter>[
                  LengthLimitingTextInputFormatter(3),
                ],
                decoration: const InputDecoration.collapsed(
                    hintText: "0", hintStyle: TextStyle(color: Colors.white)),
                onFieldSubmitted: (newText) => {
                  setState(() {
                    if(CharSession.profDeception == 1){
                      CharSession.deception= int.parse(newText) - CharSession.proficiencyBonus;
                    }
                    else{
                      CharSession.deception = int.parse(newText);
                    }
                    updateCharacter(CharSession);
                  }),
                },
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 15),
              width: 200,
              height: 30,
              /*decoration: BoxDecoration(
          border: Border.all(width: 2.0, color: const Color(0xFFFFFFFF)),
          ),*/
              child: Text(
                "Deception",
                style:
                    TextStyle(color: Colors.white, fontSize: 25, height: 0.8),
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(left: 20, top: 1),
              width: 25,
              height: 25,
              child: Material(
                type: MaterialType.circle,
                color: changeProfColor(CharSession.profIntimidation),
                child: InkWell(
                  onTap: () {
                    setState(() {
                      if (CharSession.profIntimidation == 0) {
                        CharSession.profIntimidation = 1;
                        updateCharacter(CharSession);
                      } else {
                        CharSession.profIntimidation = 0;
                        updateCharacter(CharSession);
                      }
                    });
                  },
                ),
              ),
            ),
            Container(
              width: 50,
              height: 20,
              child: TextFormField(
                controller: intimidationController,
                enableInteractiveSelection: false,
                keyboardType: TextInputType.numberWithOptions(signed: true),
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white, fontSize: 25, height: 1),
                inputFormatters: <TextInputFormatter>[
                  LengthLimitingTextInputFormatter(3),
                ],
                decoration: const InputDecoration.collapsed(
                    hintText: "0", hintStyle: TextStyle(color: Colors.white)),
                onFieldSubmitted: (newText) => {
                  setState(() {
                    if(CharSession.profIntimidation == 1){
                      CharSession.intimidation = int.parse(newText) - CharSession.proficiencyBonus;
                    }
                    else{
                      CharSession.intimidation = int.parse(newText);
                    }
                    updateCharacter(CharSession);
                  }),
                },
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 15),
              width: 200,
              height: 30,
              /*decoration: BoxDecoration(
          border: Border.all(width: 2.0, color: const Color(0xFFFFFFFF)),
          ),*/
              child: Text(
                "Intimidation",
                style:
                    TextStyle(color: Colors.white, fontSize: 25, height: 0.8),
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(left: 20, top: 1),
              width: 25,
              height: 25,
              child: Material(
                type: MaterialType.circle,
                color: changeProfColor(CharSession.profPerformance),
                child: InkWell(
                  onTap: () {
                    setState(() {
                      if (CharSession.profPerformance == 0) {
                        CharSession.profPerformance = 1;
                        updateCharacter(CharSession);
                      } else {
                        CharSession.profPerformance = 0;
                        updateCharacter(CharSession);
                      }
                    });
                  },
                ),
              ),
            ),
            Container(
              width: 50,
              height: 20,
              child: TextFormField(
                controller: performanceController,
                enableInteractiveSelection: false,
                keyboardType: TextInputType.numberWithOptions(signed: true),
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white, fontSize: 25, height: 1),
                inputFormatters: <TextInputFormatter>[
                  LengthLimitingTextInputFormatter(3),
                ],
                decoration: const InputDecoration.collapsed(
                    hintText: "0", hintStyle: TextStyle(color: Colors.white)),
                onFieldSubmitted: (newText) => {
                  setState(() {
                    if(CharSession.profPerformance == 1){
                      CharSession.performance = int.parse(newText) - CharSession.proficiencyBonus;
                    }
                    else{
                      CharSession.performance = int.parse(newText);
                    }
                    updateCharacter(CharSession);
                  }),
                },
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 15),
              width: 200,
              height: 30,
              /*decoration: BoxDecoration(
          border: Border.all(width: 2.0, color: const Color(0xFFFFFFFF)),
          ),*/
              child: Text(
                "Performance",
                style:
                    TextStyle(color: Colors.white, fontSize: 25, height: 0.8),
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(left: 20, top: 1),
              width: 25,
              height: 25,
              child: Material(
                type: MaterialType.circle,
                color: changeProfColor(CharSession.profPersuasion),
                child: InkWell(
                  onTap: () {
                    setState(() {
                      if (CharSession.profPersuasion == 0) {
                        CharSession.profPersuasion = 1;
                        updateCharacter(CharSession);
                      } else {
                        CharSession.profPersuasion = 0;
                        updateCharacter(CharSession);
                      }
                    });
                  },
                ),
              ),
            ),
            Container(
              width: 50,
              height: 20,
              child: TextFormField(
                controller: persuasionController,
                enableInteractiveSelection: false,
                keyboardType: TextInputType.numberWithOptions(signed: true),
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white, fontSize: 25, height: 1),
                inputFormatters: <TextInputFormatter>[
                  LengthLimitingTextInputFormatter(3),
                ],
                decoration: const InputDecoration.collapsed(
                    hintText: "0", hintStyle: TextStyle(color: Colors.white)),
                onFieldSubmitted: (newText) => {
                  setState(() {
                    if(CharSession.profPersuasion == 1){
                      CharSession.persuasion = int.parse(newText) - CharSession.proficiencyBonus;
                    }
                    else{
                      CharSession.persuasion = int.parse(newText);
                    }
                    updateCharacter(CharSession);
                  }),
                },
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 15),
              width: 200,
              height: 30,
              /*decoration: BoxDecoration(
          border: Border.all(width: 2.0, color: const Color(0xFFFFFFFF)),
          ),*/
              child: Text(
                "Persuasion",
                style:
                    TextStyle(color: Colors.white, fontSize: 25, height: 0.8),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class Skills extends StatefulWidget {
  @override
  SkillsState createState() => SkillsState();
}
