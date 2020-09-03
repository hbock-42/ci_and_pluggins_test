import 'package:fimber/fimber.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class TestMaterialWidgets extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final firstNameTextFieldController = useTextEditingController.fromValue(
      TextEditingValue.empty,
    );
    final firstNameListenable =
        useValueListenable(firstNameTextFieldController);
    final lastNameTextFieldController = useTextEditingController.fromValue(
      TextEditingValue.empty,
    );
    final lastNameListenable = useValueListenable(lastNameTextFieldController);

    final bool validateField = firstNameListenable.text.isNotEmpty &&
        lastNameListenable.text.isNotEmpty;

    return Container(
      color: Colors.grey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextField(
            controller: firstNameTextFieldController,
          ),
          TextField(
            controller: lastNameTextFieldController,
          ),
          FlatButton(
              onPressed: validateField ? validateForm : null,
              child: Text('Validate')),
        ],
      ),
    );
  }

  void validateForm() => Fimber.d('Validate form');
}
