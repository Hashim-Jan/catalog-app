import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Catalog App'),
      ),
      drawer: Drawer(),
      body: Center(
        child: Text('Welcome to flutter'),
      ),
    );
  }
}
