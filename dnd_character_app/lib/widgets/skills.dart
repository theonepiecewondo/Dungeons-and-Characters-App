import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'globals.dart' as globals;
import 'package:dnd_character_app/widgets/character-functions.dart';

class SkillsState extends State<Skills> {
  TextEditingController athleticsController;
  TextEditingController savStrController;
  TextEditingController savDexController;
  TextEditingController acrobaticsController;
  TextEditingController stealthController;
  TextEditingController sleightController;
  TextEditingController savConController;
  TextEditingController savIntController;
  TextEditingController arcanaController;
  TextEditingController historyController;
  TextEditingController investigationController;
  TextEditingController natureController;
  TextEditingController religionController;
  TextEditingController savWisController;
  TextEditingController animalController;
  TextEditingController insightController;
  TextEditingController medicineController;
  TextEditingController perceptionController;
  TextEditingController survivalController;
  TextEditingController savChaController;
  TextEditingController deceptionController;
  TextEditingController intimidationController;
  TextEditingController performanceController;
  TextEditingController persuasionController;
  TextEditingController proficiencyController;
  @override
  void initState() {
    super.initState();
  }

  void dispose() {
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
    proficiencyController?.dispose();
    super.dispose();
  }
  
  Widget build(BuildContext context) {
    proficiencyController = TextEditingController(
      text: globals.temp2.proficiencyBonus.toString()
    );
    
    athleticsController = TextEditingController(
        text: checkIfProficient(globals.temp2.athletics.toString(),
            globals.temp2.profAthletics, globals.temp2.proficiencyBonus));
    savStrController = TextEditingController(
        text: checkIfProficient(globals.temp2.savStr.toString(),globals.temp2.profSavStr, globals.temp2.proficiencyBonus),
        );
    savDexController = TextEditingController(
        text: checkIfProficient(globals.temp2.savDex.toString(),
            globals.temp2.profSavDex, globals.temp2.proficiencyBonus));
    acrobaticsController = TextEditingController(
        text: checkIfProficient(globals.temp2.acrobatics.toString(),
            globals.temp2.profAcrobatics, globals.temp2.proficiencyBonus));
    stealthController = TextEditingController(
        text: checkIfProficient(globals.temp2.stealth.toString(),
            globals.temp2.profStealth, globals.temp2.proficiencyBonus));
    sleightController = TextEditingController(
        text: checkIfProficient(globals.temp2.sleight.toString(),
            globals.temp2.profSleight, globals.temp2.proficiencyBonus));
    savConController = TextEditingController(
        text: checkIfProficient(globals.temp2.savCon.toString(),
            globals.temp2.profSavCon, globals.temp2.proficiencyBonus));
    savIntController = TextEditingController(
        text: checkIfProficient(globals.temp2.savInt.toString(),
            globals.temp2.profSaveInt, globals.temp2.proficiencyBonus));
    arcanaController = TextEditingController(
        text: checkIfProficient(globals.temp2.arcana.toString(),
            globals.temp2.profArcana, globals.temp2.proficiencyBonus));
    historyController = TextEditingController(
        text: checkIfProficient(globals.temp2.history.toString(),
            globals.temp2.profHistory, globals.temp2.proficiencyBonus));
    investigationController = TextEditingController(
        text: checkIfProficient(globals.temp2.investigation.toString(),
            globals.temp2.profInvestigation, globals.temp2.proficiencyBonus));
    natureController = TextEditingController(
        text: checkIfProficient(globals.temp2.nature.toString(),
            globals.temp2.profNature, globals.temp2.proficiencyBonus));
    religionController = TextEditingController(
        text: checkIfProficient(globals.temp2.religion.toString(),
            globals.temp2.profReligion, globals.temp2.proficiencyBonus));
    savWisController = TextEditingController(
        text: checkIfProficient(globals.temp2.savWis.toString(),
            globals.temp2.profSavWis, globals.temp2.proficiencyBonus));
    animalController = TextEditingController(
        text: checkIfProficient(globals.temp2.animal.toString(),
            globals.temp2.profAnimal, globals.temp2.proficiencyBonus));
    insightController = TextEditingController(
        text: checkIfProficient(globals.temp2.insight.toString(),
            globals.temp2.profInsight, globals.temp2.proficiencyBonus));
    medicineController = TextEditingController(
        text: checkIfProficient(globals.temp2.medicine.toString(),
            globals.temp2.profMedicine, globals.temp2.proficiencyBonus));
    perceptionController = TextEditingController(
        text: checkIfProficient(globals.temp2.perception.toString(),
            globals.temp2.profPerception, globals.temp2.proficiencyBonus));
    survivalController = TextEditingController(
        text: checkIfProficient(globals.temp2.survival.toString(),
            globals.temp2.profSurvival, globals.temp2.proficiencyBonus));
    savChaController = TextEditingController(
        text: checkIfProficient(globals.temp2.savCha.toString(),
            globals.temp2.profSavCha, globals.temp2.proficiencyBonus));
    deceptionController = TextEditingController(
        text: checkIfProficient(globals.temp2.deception.toString(),
            globals.temp2.profDeception, globals.temp2.proficiencyBonus));
    intimidationController = TextEditingController(
        text: checkIfProficient(globals.temp2.intimidation.toString(),
            globals.temp2.profIntimidation, globals.temp2.proficiencyBonus));
    performanceController = TextEditingController(
        text: checkIfProficient(globals.temp2.performance.toString(),
            globals.temp2.profPerformance, globals.temp2.proficiencyBonus));
    persuasionController = TextEditingController(
        text: checkIfProficient(globals.temp2.persuasion.toString(),
            globals.temp2.profPersuasion, globals.temp2.proficiencyBonus));
    savStrController.selection = TextSelection.fromPosition(TextPosition(offset: savStrController.text.length));
    athleticsController.selection = TextSelection.fromPosition(TextPosition(offset: athleticsController.text.length));
    acrobaticsController.selection = TextSelection.fromPosition(TextPosition(offset: acrobaticsController.text.length));
    savDexController.selection = TextSelection.fromPosition(TextPosition(offset: savDexController.text.length));
    stealthController.selection = TextSelection.fromPosition(TextPosition(offset: stealthController.text.length));
    sleightController.selection = TextSelection.fromPosition(TextPosition(offset: sleightController.text.length));
    savConController.selection = TextSelection.fromPosition(TextPosition(offset: savConController.text.length));
    savIntController.selection = TextSelection.fromPosition(TextPosition(offset: savIntController.text.length));
    arcanaController.selection = TextSelection.fromPosition(TextPosition(offset: arcanaController.text.length));
    historyController.selection = TextSelection.fromPosition(TextPosition(offset: historyController.text.length));
    investigationController.selection = TextSelection.fromPosition(TextPosition(offset: investigationController.text.length));
    natureController.selection = TextSelection.fromPosition(TextPosition(offset: natureController.text.length));
    religionController.selection = TextSelection.fromPosition(TextPosition(offset: religionController.text.length));
    savWisController.selection = TextSelection.fromPosition(TextPosition(offset: savWisController.text.length));
    animalController.selection = TextSelection.fromPosition(TextPosition(offset: animalController.text.length));
    insightController.selection = TextSelection.fromPosition(TextPosition(offset: insightController.text.length));
    medicineController.selection = TextSelection.fromPosition(TextPosition(offset: medicineController.text.length));
    perceptionController.selection = TextSelection.fromPosition(TextPosition(offset: perceptionController.text.length));
    survivalController.selection = TextSelection.fromPosition(TextPosition(offset: survivalController.text.length));
    savChaController.selection = TextSelection.fromPosition(TextPosition(offset: savChaController.text.length));
    deceptionController.selection = TextSelection.fromPosition(TextPosition(offset: deceptionController.text.length));
    intimidationController.selection = TextSelection.fromPosition(TextPosition(offset: intimidationController.text.length));
    performanceController.selection = TextSelection.fromPosition(TextPosition(offset: performanceController.text.length));
    persuasionController.selection = TextSelection.fromPosition(TextPosition(offset: persuasionController.text.length));
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
                color: changeProfColor(globals.temp2.profSavStr),
                child: InkWell(
                  onTap: () {
                    setState(() {
                      if (globals.temp2.profSavStr == 0) {
                        globals.temp2.profSavStr = 1;
                        updateProfSavStr(globals.temp2, 1);
                        savStrController.text = checkIfProficient(
                            globals.temp2.savStr.toString(),
                            globals.temp2.profSavStr,
                            globals.temp2.proficiencyBonus);
                      } else {
                        globals.temp2.profSavStr = 0;
                        updateProfSavStr(globals.temp2, 0);
                        savStrController.text = checkIfProficient(
                            globals.temp2.savStr.toString(),
                            globals.temp2.profSavStr,
                            globals.temp2.proficiencyBonus);
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
                //initialValue: checkIfProficient(globals.stats['Strength'], globals.temp2.profSavStr, globals.temp2.proficiencyBonus),
                controller: savStrController,
                enableInteractiveSelection: false,
                keyboardType: TextInputType.numberWithOptions(signed: true),
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white, fontSize: 25, height: 1),
                inputFormatters: <TextInputFormatter>[
                  LengthLimitingTextInputFormatter(3),
                ],
                decoration: const InputDecoration.collapsed(
                    hintText: "0", hintStyle: TextStyle(color: Colors.white)
                    ),
                onChanged: (newText) => {
                  setState(() {
                    globals.temp2.savStr = int.parse(newText);
                    updateSavStr(globals.temp2, globals.temp2.savStr);
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
                color: changeProfColor(globals.temp2.profAthletics),
                child: InkWell(
                  onTap: () {
                    setState(() {
                      if (globals.temp2.profAthletics == 0) {
                        globals.temp2.profAthletics = 1;
                        updateProfAthletics(globals.temp2, 1);
                        athleticsController.text = checkIfProficient(
                            globals.temp2.athletics.toString(),
                            globals.temp2.profAthletics,
                            globals.temp2.proficiencyBonus);
                      } else {
                        globals.temp2.profAthletics = 0;
                        updateProfAthletics(globals.temp2, 0);
                        athleticsController.text = checkIfProficient(
                            globals.temp2.athletics.toString(),
                            globals.temp2.profAthletics,
                            globals.temp2.proficiencyBonus);
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
                //initialValue: checkIfProficient(globals.stats['Strength'], globals.temp2.profAthletics, globals.temp2.proficiencyBonus),
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
                onChanged: (newText) => {
                  setState(() {
                    globals.temp2.athletics = int.parse(newText);
                    updateAthletics(globals.temp2, globals.temp2.athletics);
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
                color: changeProfColor(globals.temp2.profSavDex),
                child: InkWell(
                  onTap: () {
                    setState(() {
                      if (globals.temp2.profSavDex == 0) {
                        globals.temp2.profSavDex = 1;
                        updateProfSavDex(globals.temp2, 1);
                        savDexController.text = checkIfProficient(
                            globals.temp2.savDex.toString(),
                            globals.temp2.profSavDex,
                            globals.temp2.proficiencyBonus);
                      } else {
                        globals.temp2.profSavDex = 0;
                        updateProfSavDex(globals.temp2, 0);
                        savDexController.text = checkIfProficient(
                            globals.temp2.savDex.toString(),
                            globals.temp2.profSavDex,
                            globals.temp2.proficiencyBonus);
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
                onChanged: (newText) => {
                  setState(() {
                    globals.temp2.savDex = int.parse(newText);
                    updateSavDex(globals.temp2, globals.temp2.savDex);
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
                color: changeProfColor(globals.temp2.profAcrobatics),
                child: InkWell(
                  onTap: () {
                    setState(() {
                      if (globals.temp2.profAcrobatics == 0) {
                        globals.temp2.profAcrobatics = 1;
                        updateProfAcrobatics(globals.temp2, 1);
                        acrobaticsController.text = checkIfProficient(
                            globals.temp2.acrobatics.toString(),
                            globals.temp2.profAcrobatics,
                            globals.temp2.proficiencyBonus);
                      } else {
                        globals.temp2.profAcrobatics = 0;
                        updateProfAcrobatics(globals.temp2, 0);
                        acrobaticsController.text = checkIfProficient(
                            globals.temp2.acrobatics.toString(),
                            globals.temp2.profAcrobatics,
                            globals.temp2.proficiencyBonus);
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
                onChanged: (newText) => {
                  setState(() {
                    globals.temp2.acrobatics = int.parse(newText);
                    updateAcrobatics(globals.temp2, globals.temp2.acrobatics);
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
                color: changeProfColor(globals.temp2.profStealth),
                child: InkWell(
                  onTap: () {
                    setState(() {
                      if (globals.temp2.profStealth == 0) {
                        globals.temp2.profStealth = 1;
                        updateProfStealth(globals.temp2, 1);
                        stealthController.text = checkIfProficient(
                            globals.temp2.stealth.toString(),
                            globals.temp2.profStealth,
                            globals.temp2.proficiencyBonus);
                      } else {
                        globals.temp2.profStealth = 0;
                        updateProfStealth(globals.temp2, 0);
                        stealthController.text = checkIfProficient(
                            globals.temp2.stealth.toString(),
                            globals.temp2.profStealth,
                            globals.temp2.proficiencyBonus);
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
                onChanged: (newText) => {
                  setState(() {
                    globals.temp2.stealth = int.parse(newText);
                    updateStealth(globals.temp2, globals.temp2.stealth);
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
                color: changeProfColor(globals.temp2.profSleight),
                child: InkWell(
                  onTap: () {
                    setState(() {
                      if (globals.temp2.profSleight == 0) {
                        globals.temp2.profSleight = 1;
                        updateProfSleight(globals.temp2, 1);
                        sleightController.text = checkIfProficient(
                            globals.temp2.sleight.toString(),
                            globals.temp2.profSleight,
                            globals.temp2.proficiencyBonus);
                      } else {
                        globals.temp2.profSleight = 0;
                        updateProfSleight(globals.temp2, 0);
                        sleightController.text = checkIfProficient(
                            globals.temp2.sleight.toString(),
                            globals.temp2.profSleight,
                            globals.temp2.proficiencyBonus);
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
                onChanged: (newText) => {
                  setState(() {
                    globals.temp2.sleight = int.parse(newText);
                    updateSleight(globals.temp2, globals.temp2.sleight);
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
                color: changeProfColor(globals.temp2.profSavCon),
                child: InkWell(
                  onTap: () {
                    setState(() {
                      if (globals.temp2.profSavCon == 0) {
                        globals.temp2.profSavCon = 1;
                        updateProfSavCon(globals.temp2, 1);
                        savConController.text = checkIfProficient(
                            globals.temp2.savCon.toString(),
                            globals.temp2.profSavCon,
                            globals.temp2.proficiencyBonus);
                      } else {
                        globals.temp2.profSavCon = 0;
                        updateProfSavCon(globals.temp2, 0);
                        savConController.text = checkIfProficient(
                            globals.temp2.savCon.toString(),
                            globals.temp2.profSavCon,
                            globals.temp2.proficiencyBonus);
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
                onChanged: (newText) => {
                  setState(() {
                    globals.temp2.savCon = int.parse(newText);
                    updateSavCon(globals.temp2, globals.temp2.savCon);
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
                color: changeProfColor(globals.temp2.profSaveInt),
                child: InkWell(
                  onTap: () {
                    setState(() {
                      if (globals.temp2.profSaveInt == 0) {
                        globals.temp2.profSaveInt = 1;
                        updateProfSaveInt(globals.temp2, 1);
                        savIntController.text = checkIfProficient(
                            globals.temp2.savInt.toString(),
                            globals.temp2.profSaveInt,
                            globals.temp2.proficiencyBonus);
                      } else {
                        globals.temp2.profSaveInt = 0;
                        updateProfSaveInt(globals.temp2, 0);
                        savIntController.text = checkIfProficient(
                            globals.temp2.savInt.toString(),
                            globals.temp2.profSaveInt,
                            globals.temp2.proficiencyBonus);
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
                onChanged: (newText) => {
                  setState(() {
                    globals.temp2.savInt = int.parse(newText);
                    updateSavInt(globals.temp2, globals.temp2.savInt);
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
                color: changeProfColor(globals.temp2.profArcana),
                child: InkWell(
                  onTap: () {
                    setState(() {
                      if (globals.temp2.profArcana == 0) {
                        globals.temp2.profArcana = 1;
                        updateProfArcana(globals.temp2, 1);
                        arcanaController.text = checkIfProficient(
                            globals.temp2.arcana.toString(),
                            globals.temp2.profArcana,
                            globals.temp2.proficiencyBonus);
                      } else {
                        globals.temp2.profArcana = 0;
                        updateProfArcana(globals.temp2, 0);
                        arcanaController.text = checkIfProficient(
                            globals.temp2.arcana.toString(),
                            globals.temp2.profArcana,
                            globals.temp2.proficiencyBonus);
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
                onChanged: (newText) => {
                  setState(() {
                    globals.temp2.arcana = int.parse(newText);
                    updateArcana(globals.temp2, globals.temp2.arcana);
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
                color: changeProfColor(globals.temp2.profHistory),
                child: InkWell(
                  onTap: () {
                    setState(() {
                      if (globals.temp2.profHistory == 0) {
                        globals.temp2.profHistory = 1;
                        updateProfHistory(globals.temp2, 1);
                        historyController.text = checkIfProficient(
                            globals.temp2.history.toString(),
                            globals.temp2.profHistory,
                            globals.temp2.proficiencyBonus);
                      } else {
                        globals.temp2.profHistory = 0;
                        updateProfHistory(globals.temp2, 0);
                        historyController.text = checkIfProficient(
                            globals.temp2.history.toString(),
                            globals.temp2.profHistory,
                            globals.temp2.proficiencyBonus);
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
                onChanged: (newText) => {
                  setState(() {
                    globals.temp2.history = int.parse(newText);
                    updateHistory(globals.temp2, globals.temp2.history);
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
                color: changeProfColor(globals.temp2.profInvestigation),
                child: InkWell(
                  onTap: () {
                    setState(() {
                      if (globals.temp2.profInvestigation == 0) {
                        globals.temp2.profInvestigation = 1;
                        updateProfInvestigation(globals.temp2, 1);
                        investigationController.text = checkIfProficient(
                            globals.temp2.investigation.toString(),
                            globals.temp2.profInvestigation,
                            globals.temp2.proficiencyBonus);
                      } else {
                        globals.temp2.profInvestigation = 0;
                        updateProfInvestigation(globals.temp2, 0);
                        investigationController.text = checkIfProficient(
                            globals.temp2.investigation.toString(),
                            globals.temp2.profInvestigation,
                            globals.temp2.proficiencyBonus);
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
                onChanged: (newText) => {
                  setState(() {
                    globals.temp2.history = int.parse(newText);
                    updateInvestigation(
                        globals.temp2, globals.temp2.investigation);
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
                color: changeProfColor(globals.temp2.profNature),
                child: InkWell(
                  onTap: () {
                    setState(() {
                      if (globals.temp2.profNature == 0) {
                        globals.temp2.profNature = 1;
                        updateProfNature(globals.temp2, 1);
                        natureController.text = checkIfProficient(
                            globals.temp2.nature.toString(),
                            globals.temp2.profNature,
                            globals.temp2.proficiencyBonus);
                      } else {
                        globals.temp2.profNature = 0;
                        updateProfNature(globals.temp2, 0);
                        natureController.text = checkIfProficient(
                            globals.temp2.nature.toString(),
                            globals.temp2.profNature,
                            globals.temp2.proficiencyBonus);
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
                onChanged: (newText) => {
                  setState(() {
                    globals.temp2.nature = int.parse(newText);
                    updateNature(globals.temp2, globals.temp2.nature);
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
                color: changeProfColor(globals.temp2.profReligion),
                child: InkWell(
                  onTap: () {
                    setState(() {
                      if (globals.temp2.profReligion == 0) {
                        globals.temp2.profReligion = 1;
                        updateProfReligion(globals.temp2, 1);
                        religionController.text = checkIfProficient(
                            globals.temp2.religion.toString(),
                            globals.temp2.profReligion,
                            globals.temp2.proficiencyBonus);
                      } else {
                        globals.temp2.profReligion = 0;
                        updateProfReligion(globals.temp2, 0);
                        religionController.text = checkIfProficient(
                            globals.temp2.religion.toString(),
                            globals.temp2.profReligion,
                            globals.temp2.proficiencyBonus);
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
                onChanged: (newText) => {
                  setState(() {
                    globals.temp2.religion = int.parse(newText);
                    updateReligion(globals.temp2, globals.temp2.religion);
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
                color: changeProfColor(globals.temp2.profSavWis),
                child: InkWell(
                  onTap: () {
                    setState(() {
                      if (globals.temp2.profSavWis == 0) {
                        globals.temp2.profSavWis = 1;
                        updateProfSavWis(globals.temp2, 1);
                        savWisController.text = checkIfProficient(
                            globals.temp2.savWis.toString(),
                            globals.temp2.profSavWis,
                            globals.temp2.proficiencyBonus);
                      } else {
                        globals.temp2.profSavWis = 0;
                        updateProfSavWis(globals.temp2, 0);
                        savWisController.text = checkIfProficient(
                            globals.temp2.savWis.toString(),
                            globals.temp2.profSavWis,
                            globals.temp2.proficiencyBonus);
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
                onChanged: (newText) => {
                  setState(() {
                    globals.temp2.savWis = int.parse(newText);
                    updateSavWis(globals.temp2, globals.temp2.savWis);
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
                color: changeProfColor(globals.temp2.profAnimal),
                child: InkWell(
                  onTap: () {
                    setState(() {
                      if (globals.temp2.profAnimal == 0) {
                        globals.temp2.profAnimal = 1;
                        updateProfAnimal(globals.temp2, 1);
                        animalController.text = checkIfProficient(
                            globals.temp2.animal.toString(),
                            globals.temp2.profAnimal,
                            globals.temp2.proficiencyBonus);
                      } else {
                        globals.temp2.profAnimal = 0;
                        updateProfAnimal(globals.temp2, 0);
                        animalController.text = checkIfProficient(
                            globals.temp2.animal.toString(),
                            globals.temp2.profAnimal,
                            globals.temp2.proficiencyBonus);
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
                onChanged: (newText) => {
                  setState(() {
                    globals.temp2.animal = int.parse(newText);
                    updateAnimal(globals.temp2, globals.temp2.animal);
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
                color: changeProfColor(globals.temp2.profInsight),
                child: InkWell(
                  onTap: () {
                    setState(() {
                      if (globals.temp2.profInsight == 0) {
                        globals.temp2.profInsight = 1;
                        updateProfInsight(globals.temp2, 1);
                        insightController.text = checkIfProficient(
                            globals.temp2.insight.toString(),
                            globals.temp2.profInsight,
                            globals.temp2.proficiencyBonus);
                      } else {
                        globals.temp2.profInsight = 0;
                        updateProfInsight(globals.temp2, 0);
                        insightController.text = checkIfProficient(
                            globals.temp2.insight.toString(),
                            globals.temp2.profInsight,
                            globals.temp2.proficiencyBonus);
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
                onChanged: (newText) => {
                  setState(() {
                    globals.temp2.insight = int.parse(newText);
                    updateInsight(globals.temp2, globals.temp2.insight);
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
                color: changeProfColor(globals.temp2.profMedicine),
                child: InkWell(
                  onTap: () {
                    setState(() {
                      if (globals.temp2.profMedicine == 0) {
                        globals.temp2.profMedicine = 1;
                        updateProfMedicine(globals.temp2, 1);
                        medicineController.text = checkIfProficient(
                            globals.temp2.medicine.toString(),
                            globals.temp2.profMedicine,
                            globals.temp2.proficiencyBonus);
                      } else {
                        globals.temp2.profMedicine = 0;
                        updateProfMedicine(globals.temp2, 0);
                        medicineController.text = checkIfProficient(
                            globals.temp2.medicine.toString(),
                            globals.temp2.profMedicine,
                            globals.temp2.proficiencyBonus);
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
                onChanged: (newText) => {
                  setState(() {
                    globals.temp2.medicine = int.parse(newText);
                    updateMedicine(globals.temp2, globals.temp2.medicine);
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
                color: changeProfColor(globals.temp2.profPerception),
                child: InkWell(
                  onTap: () {
                    setState(() {
                      if (globals.temp2.profPerception == 0) {
                        globals.temp2.profPerception = 1;
                        updateProfPerception(globals.temp2, 1);
                        perceptionController.text = checkIfProficient(
                            globals.temp2.perception.toString(),
                            globals.temp2.profPerception,
                            globals.temp2.proficiencyBonus);
                      } else {
                        globals.temp2.profPerception = 0;
                        updateProfPerception(globals.temp2, 0);
                        perceptionController.text = checkIfProficient(
                            globals.temp2.perception.toString(),
                            globals.temp2.profPerception,
                            globals.temp2.proficiencyBonus);
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
                onChanged: (newText) => {
                  setState(() {
                    globals.temp2.perception = int.parse(newText);
                    updatePerception(globals.temp2, globals.temp2.perception);
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
                color: changeProfColor(globals.temp2.profSurvival),
                child: InkWell(
                  onTap: () {
                    setState(() {
                      if (globals.temp2.profSurvival == 0) {
                        globals.temp2.profSurvival = 1;
                        updateProfSurvival(globals.temp2, 1);
                        survivalController.text = checkIfProficient(
                            globals.temp2.survival.toString(),
                            globals.temp2.profSurvival,
                            globals.temp2.proficiencyBonus);
                      } else {
                        globals.temp2.profSurvival = 0;
                        updateProfSurvival(globals.temp2, 0);
                        survivalController.text = checkIfProficient(
                            globals.temp2.survival.toString(),
                            globals.temp2.profSurvival,
                            globals.temp2.proficiencyBonus);
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
                onChanged: (newText) => {
                  setState(() {
                    globals.temp2.survival = int.parse(newText);
                    updateSurvival(globals.temp2, globals.temp2.survival);
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
                color: changeProfColor(globals.temp2.profSavCha),
                child: InkWell(
                  onTap: () {
                    setState(() {
                      if (globals.temp2.profSavCha == 0) {
                        globals.temp2.profSavCha = 1;
                        updateProfSavCha(globals.temp2, 1);
                        savChaController.text = checkIfProficient(
                            globals.temp2.savCha.toString(),
                            globals.temp2.profSavCha,
                            globals.temp2.proficiencyBonus);
                      } else {
                        globals.temp2.profSavCha = 0;
                        updateProfSavCha(globals.temp2, 0);
                        savChaController.text = checkIfProficient(
                            globals.temp2.savCha.toString(),
                            globals.temp2.profSavCha,
                            globals.temp2.proficiencyBonus);
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
                onChanged: (newText) => {
                  setState(() {
                    globals.temp2.savCha = int.parse(newText);
                    updateSavCha(globals.temp2, globals.temp2.savCha);
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
                color: changeProfColor(globals.temp2.profDeception),
                child: InkWell(
                  onTap: () {
                    setState(() {
                      if (globals.temp2.profDeception == 0) {
                        globals.temp2.profDeception = 1;
                        updateProfDeception(globals.temp2, 1);
                        deceptionController.text = checkIfProficient(
                            globals.temp2.deception.toString(),
                            globals.temp2.profDeception,
                            globals.temp2.proficiencyBonus);
                      } else {
                        globals.temp2.profDeception = 0;
                        updateProfDeception(globals.temp2, 0);
                        deceptionController.text = checkIfProficient(
                            globals.temp2.deception.toString(),
                            globals.temp2.profDeception,
                            globals.temp2.proficiencyBonus);
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
                onChanged: (newText) => {
                  setState(() {
                    globals.temp2.deception = int.parse(newText);
                    updateDeception(globals.temp2, globals.temp2.deception);
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
                color: changeProfColor(globals.temp2.profIntimidation),
                child: InkWell(
                  onTap: () {
                    setState(() {
                      if (globals.temp2.profIntimidation == 0) {
                        globals.temp2.profIntimidation = 1;
                        updateProfIntimidation(globals.temp2, 1);
                        intimidationController.text = checkIfProficient(
                            globals.temp2.intimidation.toString(),
                            globals.temp2.profIntimidation,
                            globals.temp2.proficiencyBonus);
                      } else {
                        globals.temp2.profIntimidation = 0;
                        updateProfIntimidation(globals.temp2, 0);
                        intimidationController.text = checkIfProficient(
                            globals.temp2.intimidation.toString(),
                            globals.temp2.profIntimidation,
                            globals.temp2.proficiencyBonus);
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
                onChanged: (newText) => {
                  setState(() {
                    globals.temp2.intimidation = int.parse(newText);
                    updateIntimidation(
                        globals.temp2, globals.temp2.intimidation);
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
                color: changeProfColor(globals.temp2.profPerformance),
                child: InkWell(
                  onTap: () {
                    setState(() {
                      if (globals.temp2.profPerformance == 0) {
                        globals.temp2.profPerformance = 1;
                        updateProfPerformance(globals.temp2, 1);
                        performanceController.text = checkIfProficient(
                            globals.temp2.performance.toString(),
                            globals.temp2.profPerformance,
                            globals.temp2.proficiencyBonus);
                      } else {
                        globals.temp2.profPerformance = 0;
                        updateProfPerformance(globals.temp2, 0);
                        performanceController.text = checkIfProficient(
                            globals.temp2.performance.toString(),
                            globals.temp2.profPerformance,
                            globals.temp2.proficiencyBonus);
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
                onChanged: (newText) => {
                  setState(() {
                    globals.temp2.performance = int.parse(newText);
                    updatePerformance(globals.temp2, globals.temp2.performance);
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
                color: changeProfColor(globals.temp2.profPersuasion),
                child: InkWell(
                  onTap: () {
                    setState(() {
                      if (globals.temp2.profPersuasion == 0) {
                        globals.temp2.profPersuasion = 1;
                        updateProfPersuasion(globals.temp2, 1);
                        persuasionController.text = checkIfProficient(
                            globals.temp2.persuasion.toString(),
                            globals.temp2.profPersuasion,
                            globals.temp2.proficiencyBonus);
                      } else {
                        globals.temp2.profPersuasion = 0;
                        updateProfPersuasion(globals.temp2, 0);
                        persuasionController.text = checkIfProficient(
                            globals.temp2.persuasion.toString(),
                            globals.temp2.profPersuasion,
                            globals.temp2.proficiencyBonus);
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
                onChanged: (newText) => {
                  setState(() {
                    globals.temp2.persuasion = int.parse(newText);
                    updatePersuasion(globals.temp2, globals.temp2.persuasion);
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
