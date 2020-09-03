import 'package:fimber/fimber.dart';
import 'package:flutter/material.dart';

class LogOnTap extends StatefulWidget {
  @override
  _LogOnTapState createState() => _LogOnTapState();
}

class _LogOnTapState extends State<LogOnTap> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return FlatButton(onPressed: debugLog, child: Text("Tap to log"));
  }

  void debugLog() => Fimber.w('Fimber warning log test');
}
