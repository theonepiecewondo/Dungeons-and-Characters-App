import 'dart:async';
import 'dart:io';
import 'package:dnd_character_app/widgets/characterModel.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';
import 'characterModel.dart';

class DBProvider {
  DBProvider._();
  static final DBProvider db = DBProvider._();

  Database _database;

  Future<Database> get database async {
    if (_database != null) return _database;

    // if _database is null we instantiate it
    _database = await initDB();
    return _database;
  }

  initDB() async {
    Directory documentsDirectory = await getApplicationDocumentsDirectory();
    String path = join(documentsDirectory.path, "Character_list.db");
    return await openDatabase(path, version: 1, onOpen: (db) {},
        onCreate: (Database db, int version) async {
      await db.execute(
          "CREATE TABLE Characters (id TEXT PRIMARY KEY,name TEXT,race Text,pClass Text,level INTEGER,ac INTEGER,hit INTEGER,maxHp INTEGER,initiative INTEGER,hitdice INTEGER,hitdiceMax INTEGER,proficiencyBonus INTEGER,speed INTEGER,str INTEGER,dex INTEGER,con INTEGER,intelligence INTEGER,wis INTEGER,cha INTEGER,savStr INTEGER,athletics INTEGER,savDex INTEGER,acrobatics INTEGER,stealth INTEGER,sleight INTEGER,savCon INTEGER,savInt INTEGER,arcana INTEGER,history INTEGER,investigation INTEGER,nature INTEGER,religion INTEGER,savWis INTEGER,animal INTEGER,insight INTEGER,medicine INTEGER,perception INTEGER,survival INTEGER,savCha INTEGER,deception INTEGER,intimidation INTEGER,performance INTEGER,persuasion INTEGER, profSavStr INTEGER,profAthletics INTEGER,profSavDex INTEGER,profAcrobatics INTEGER,profStealth INTEGER,profSleight INTEGER,profSavCon INTEGER,profSaveInt INTEGER,profArcana INTEGER,profHistory INTEGER,profInvestigation INTEGER,profNature INTEGER,profReligion INTEGER,profSavWis INTEGER,profAnimal INTEGER,profInsight INTEGER,profMedicine INTEGER,profPerception INTEGER,profSurvival INTEGER,profSavCha INTEGER,profDeception INTEGER,profIntimidation INTEGER,profPerformance INTEGER,profPersuasion INTEGER)");
    });
  }

  /*abstract class DB {
    static Database _db;
    static int get _version => 1;
    static Future<void> init() async{
        if (_db != null) {return;}
        try {
          String _path = await getDatabasesPath() + 'character_data';
          _db = await openDatabase(_path, version: _version, onCreate: onCreate);
        }
        catch(ex) {
          
        }
    }
    static void onCreate(Database db, int version) async =>
        await db.execute("CREATE TABLE Characters (id INTEGER PRIMARY KEY,name TEXT,level INTEGER,ac INTEGER,hit INTEGER,maxHp INTEGER,initiative INTEGER,hitdice INTEGER,hitdiceMax INTEGER,proficiencyBonus INTEGER,speed INTEGER,str INTEGER,dex INTEGER,con INTEGER,intelligence INTEGER,wis INTEGER,cha INTEGER,savStr INTEGER,athletics INTEGER,savDex INTEGER,acrobatics INTEGER,stealth INTEGER,sleight INTEGER,savCon INTEGER,savInt INTEGER,arcana INTEGER,history INTEGER,investigation INTEGER,nature INTEGER,religion INTEGER,savWis INTEGER,animal INTEGER,insight INTEGER,medicine INTEGER,perception INTEGER,survival INTEGER,savCha INTEGER,deception INTEGER,intimidation INTEGER,performance INTEGER,persuasion INTEGER)");
    static Future<List<Map<String, dynamic>>> query(String table) async => _db.query("Characters");
    */
  insertCharacter(Pharacter character) async {
    final db = await database;
    await db.insert(
      'Characters',
      character.toMap(),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  Future<List<Pharacter>> getpharacters() async {
    final db = await database;
    final List<Map<String, dynamic>> maps = await db.query('Characters');
    return List.generate(maps.length, (i) {
      return Pharacter(
        id: maps[i]['id'],
        name: maps[i]['name'],
        race: maps[i]['race'],
        pClass: maps[i]['pClass'],
        level: maps[i]['level'],
        ac: maps[i]['ac'],
        hit: maps[i]['hit'],
        maxHp: maps[i]['maxHp'],
        initiative: maps[i]['initiative'],
        hitdice: maps[i]['hitdice'],
        hitdiceMax: maps[i]['hitdiceMax'],
        proficiencyBonus: maps[i]['proficiencyBonus'],
        speed: maps[i]['speed'],
        str: maps[i]['str'],
        dex: maps[i]['dex'],
        con: maps[i]['con'],
        intelligence: maps[i]['intelligence'],
        wis: maps[i]['wis'],
        cha: maps[i]['cha'],
        savStr: maps[i]['savStr'],
        athletics: maps[i]['athletics'],
        savDex: maps[i]['savDex'],
        acrobatics: maps[i]['acrobatics'],
        stealth: maps[i]['stealth'],
        sleight: maps[i]['sleight'],
        savCon: maps[i]['savCon'],
        savInt: maps[i]['savInt'],
        arcana: maps[i]['arcana'],
        history: maps[i]['history'],
        investigation: maps[i]['investigation'],
        nature: maps[i]['nature'],
        religion: maps[i]['religion'],
        savWis: maps[i]['savWis'],
        animal: maps[i]["animal"],
        insight: maps[i]['insight'],
        medicine: maps[i]['medicine'],
        perception: maps[i]['perception'],
        survival: maps[i]['survival'],
        savCha: maps[i]['savCha'],
        deception: maps[i]['deception'],
        intimidation: maps[i]['intimidation'],
        performance: maps[i]['performance'],
        persuasion: maps[i]['persuasion'],
        profSavStr: maps[i]['profSavStr'],
        profAthletics: maps[i]['profAthletics'],
        profSavDex: maps[i]['profSavDex'],
        profAcrobatics: maps[i]['profAcrobatics'],
        profStealth: maps[i]['profStealth'],
        profSleight: maps[i]['profSleight'],
        profSavCon: maps[i]['profSavCon'],
        profSaveInt: maps[i]['profSaveInt'],
        profArcana: maps[i]['profArcana'],
        profHistory: maps[i]['profHistory'],
        profInvestigation: maps[i]['profInvestigation'],
        profNature: maps[i]['profNature'],
        profReligion: maps[i]['profReligion'],
        profSavWis: maps[i]['profSavWis'],
        profAnimal: maps[i]['profAnimal'],
        profInsight: maps[i]['profInsight'],
        profMedicine: maps[i]['profMedicine'],
        profPerception: maps[i]['profPerception'],
        profSurvival: maps[i]['profSurvival'],
        profSavCha: maps[i]['profSavCha'],
        profDeception: maps[i]['profDeception'],
        profIntimidation: maps[i]['profIntimidation'],
        profPerformance: maps[i]['profPerformance'],
        profPersuasion: maps[i]['profPersuasion'],
      );
    });
  }

  getCharacter(int id) async {
    final db = await database;
    var result = await db.query("Characters", where: "id = ?", whereArgs: [id]);
    if (result.isNotEmpty) {
      return result;
    } else {}
  }

  updateCharacter(Pharacter character) async {
    final db = await database;
    await db.update(
      'Characters',
      character.toMap(),
      where: "id = ?",
      whereArgs: [character.id],
    );
  }

  deleteCharacter(String id) async {
    final db = await database;
    await db.delete(
      'Characters',
      where: "id = ?",
      whereArgs: [id],
    );
  }

  numberOfCharacters() async {
    final db = await database;
    var result = Sqflite.firstIntValue(
        await db.rawQuery("SELECT COUNT(*) FROM Characters"));
    return result;
  }
}
