import 'package:fimber/fimber_base.dart';
import 'package:flutter/material.dart';

import 'ui/pages/home.dart';

void main() {
  init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Home(),
    );
  }
}

void init() {
  initLogger();
}

void initLogger() {
  Fimber.plantTree(DebugTree());
}
