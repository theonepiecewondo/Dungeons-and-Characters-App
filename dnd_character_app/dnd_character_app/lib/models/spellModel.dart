class SpellList{
  List<Spell> spells;

  SpellList({
    this.spells
  });
  factory SpellList.fromJson(List<dynamic> parsedJson){
    List<Spell> spells = [];
    spells = parsedJson.map((i) =>Spell.fromJson(i)).toList();
    return SpellList(
      spells: spells
    );
  }
}

class Spell{
  String name;
  String source;
  String school;
  String spellLevel;
  String casting;
  String range;
  int verbal;
  int somatic;
  int isMaterial;
  int concentration;
  String materials;
  String duration;
  int ritual;
  String classes;
  String description;
  String higherLevels;

  Spell({
    this.name,
    this.source,
    this.school,
    this.spellLevel,
    this.casting,
    this.range,
    this.verbal,
    this.somatic,
    this.isMaterial,
    this.concentration,
    this.materials,
    this.duration,
    this.ritual,
    this.classes,
    this.description,
    this.higherLevels,
  });
  Map<String, dynamic> toMap() => {
    "name": name,
    "source": source,
    "school": school,
    "spellLevel":spellLevel,
    "casting": casting,
    "range": range,
    "verbal": verbal,
    "somatic": somatic,
    "isMaterial": isMaterial,
    "concentration": concentration,
    "materials": materials,
    "duration": duration,
    "ritual": ritual,
    "classes": classes,
    "description" : description,
    "higherLevels" : higherLevels,
  };
  factory Spell.fromJson(Map<String, dynamic> json){
    return new Spell(
      name: json['name'],
      source: json['source'],
      school: json['school'],
      spellLevel: json['spellLevel'],
      casting: json['casting'],
      range: json['range'],
      verbal: json['verbal'],
      somatic: json['somatic'],
      isMaterial: json['isMaterial'],
      concentration: json['concentration'],
      materials: json['materials'],
      duration: json['duration'],
      ritual: json['ritual'],
      classes: json['classes'],
      description: json['description'],
      higherLevels: json['higherLevels'],

    );
  }
  @override
  String toString(){
    return 'Spell\nname: $name\nSource: $source\nSchool:$school\nSpellLevel: $spellLevel\n';
  }
}