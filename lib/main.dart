import 'package:flutter/material.dart';
import 'package:teacher_provider/app.dart';
import 'package:provider/provider.dart';
import 'package:teacher_provider/models/teacher_model.dart';

void main() {
  // runApp(const MyApp());
  runApp(ChangeNotifierProvider(
    create: (context) => TeacherModel(),
    child: const MyApp(),
  ));
}
