import 'package:flutter/material.dart';
class NavDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(
      //padding: EdgeInsets.zero,
      children: <Widget>[
        /*DrawerHeader(
          child: Text(
            'Menu',
            style: TextStyle(color: Colors.white, fontSize: 25),
          ),
        ),*/
        ListTile(
          leading: Icon(Icons.input),
          title: Text('Characters'),
          onTap: () => {
            Navigator.pop(context),
            Navigator.pushReplacementNamed(context, '/'),
          },
        ),
      ],
    ));
  }
}
