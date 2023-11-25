import 'package:flutter/material.dart';

class TeacherModel extends ChangeNotifier {
  String _name = 'Steve';

  String get name => _name.toUpperCase();

  set name(String nm) {
    if (nm.isNotEmpty) {
      _name = nm;
      notifyListeners();
    }
  }
}
