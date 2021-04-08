import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DrawerScreen extends StatelessWidget {
  final imageUrl='https://i.pinimg.com/originals/af/2f/db/af2fdbf306ff393d7f3da2581cdd7858.jpg';
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            padding: EdgeInsets.zero,
            child:UserAccountsDrawerHeader(
              margin: EdgeInsets.zero,
              accountName: Text('Hashim Jan'),
              accountEmail: Text('hashimjan@gmail.com'),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(imageUrl),
              ),
            ),
          ),
          ListTile(
            leading: Icon(CupertinoIcons.house),
            title: Text("Home",textScaleFactor: 1.2,),
          ),
          ListTile(
            leading: Icon(CupertinoIcons.mail),
            title: Text("Email",textScaleFactor: 1.2,),
          ),
          ListTile(
            leading: Icon(CupertinoIcons.settings),
            title: Text("Setting",textScaleFactor: 1.2,),
          ),
        ],
      ),
    );
  }
}
