import 'package:catalog/screens/drawer_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Catalog App'),
      ),
      drawer: DrawerScreen(),
      body: Center(
        child: Text('Welcome to flutter'),
      ),
    );
  }
}
