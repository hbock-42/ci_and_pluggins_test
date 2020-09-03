import 'package:ci_and_pluggins_test/ui/pages/TestMaterialWidgets.dart';

import '../widgets/log_on_tap.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Test ci and airliquide pluggins',
              style: TextStyle().copyWith(fontSize: 30),
              textAlign: TextAlign.center,
            ),
            LogOnTap(),
            FlatButton(
                onPressed: () => pushTestMaterialWidgetsRoute(context),
                child: Text('Test Material Widgets')),
          ],
        ),
      ),
    );
  }

  void pushTestMaterialWidgetsRoute(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
          builder: (context) => Material(child: TestMaterialWidgets())),
    );
  }
}
