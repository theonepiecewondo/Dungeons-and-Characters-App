import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:dnd_character_app/widgets/nav-drawer.dart';
import 'package:dnd_character_app/character.dart';
import 'package:dnd_character_app/widgets/database.dart';
import 'package:dnd_character_app/widgets/characterModel.dart';
import 'package:dnd_character_app/new-character.dart';
import 'package:dnd_character_app/widgets/character-functions.dart';
import 'package:dnd_character_app/widgets/globals.dart' as globals;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var routes = <String, WidgetBuilder>{
      '/character': (context) => HomeState(),
      '/new-character': (context) => MyNewCharacterPage(),
    };
    return new MaterialApp(
      title: "Characters",
      home: new MyHomePage(title: 'Characters'),
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      routes: routes,
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  Characters createState() => new Characters();
}

class Characters extends State<MyHomePage> with SingleTickerProviderStateMixin {
  ScrollController _scrollController;
  AnimationController _hideFabAnimController;
  @override
  void dispose() {
    _scrollController.dispose();
    _hideFabAnimController.dispose();
    super.dispose();
  }

  void initState() {
    super.initState();
    _scrollController = ScrollController();
    _hideFabAnimController = AnimationController(
      vsync: this,
      duration: kThemeAnimationDuration,
      value: 1,
    );

    _scrollController.addListener(() {
      switch (_scrollController.position.userScrollDirection) {
        case ScrollDirection.forward:
          _hideFabAnimController.forward();
          break;
        case ScrollDirection.reverse:
          _hideFabAnimController.reverse();
          break;
        case ScrollDirection.idle:
          break;
      }
    });
  }
  void update(){
    setState(() {
      DBProvider.db.getpharacters();
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      /*drawer: NavDrawer(),*/
      appBar: AppBar(
        title: Text('Characters'),
      ),
      body: Container(
        child: Center(
          child: FutureBuilder<List<Pharacter>>(
              future: DBProvider.db.getpharacters(),
              builder: (BuildContext context,
                  AsyncSnapshot<List<Pharacter>> snapshot) {
                if (!snapshot.hasData) {
                  return Container();
                } else {
                  return ListView.separated(
                      separatorBuilder: (BuildContext context, int index) =>
                          Divider(thickness: 1.5, height: 1,),
                      controller: _scrollController,
                      itemCount: snapshot.data.length,
                      itemBuilder: (BuildContext context, int index) {
                        Pharacter item = snapshot.data[index];
                        return Dismissible(
                          key: UniqueKey(),
                          background: Container(
                            color: Colors.red,
                            padding: EdgeInsets.symmetric(horizontal: 20),
                            alignment: AlignmentDirectional.centerStart,
                            child: Icon(
                              Icons.delete,
                              color: Colors.white,
                            ),
                          ),
                          secondaryBackground: Container(
                            color: Colors.red,
                            padding: EdgeInsets.symmetric(horizontal: 20),
                            alignment: AlignmentDirectional.centerEnd,
                            child: Icon(
                              Icons.delete,
                              color: Colors.white,
                            ),
                          ),
                          confirmDismiss: (direction) async{
                              bool result = await promptUser(context, item.id);
                              update();
                              return result;
                          },
                          child: ListTile(
                            leading: Icon(Icons.account_circle, size: 40),
                            title: Text(item.name),
                            subtitle: Wrap(
                              spacing: 5.0,
                              children: <Widget>[
                                Text(item.race),
                                Text(item.pClass),
                                Text("Level"),
                                Text(item.level.toString())
                              ],
                            ),
                            trailing: IconButton(
                              icon: Icon(Icons.keyboard_arrow_right),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => HomeState(),
                                    settings: RouteSettings(arguments: item),
                                  ),
                                );
                              },
                            ),
                          ),
                        );
                      });
                }
              }),
        ),
      ),
      floatingActionButton: FadeTransition(
        opacity: _hideFabAnimController,
        child: ScaleTransition(
          scale: _hideFabAnimController,
          child: FloatingActionButton(
            child: Icon(Icons.person_add),
            onPressed: () {
              Navigator.pushNamed(context, '/new-character');
            },
            backgroundColor: Colors.red,
          ),
        ),
      ),
    );
  }
}

Future<bool> promptUser(context, String id) async {
  return await showCupertinoDialog<bool>(
        context: context,
        builder: (context) => CupertinoAlertDialog(
          content: Text("Are you sure you want to delete this Character?"),
          actions: <Widget>[
            CupertinoDialogAction(
              child: Text("Yes"),
              onPressed: () {
                DBProvider.db.deleteCharacter(id);
                Navigator.of(context).pop(true);
              },
            ),
            CupertinoDialogAction(
              child: Text('No'),
              onPressed: () {
                return Navigator.of(context).pop(false);
              },
            )
          ],
        ),
      ) ??
      false;
}
