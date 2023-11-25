import 'package:flutter/material.dart';
import 'package:teacher_provider/pages/adesh_page.dart';
import 'package:teacher_provider/pages/steve_page.dart';
import 'package:teacher_provider/pages/tony_page.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int currentPage = 0;

  void nav(int page) {
    setState(() {
      currentPage = page;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.blue),
      ),
      home: loadPage(),
    );
  }

  Widget loadPage() {
    switch (currentPage) {
      case 0:
        return StevePage(nav: nav, page: currentPage);
      case 1:
        return TonyPage(nav: nav, page: currentPage);
      case 2:
        return AdeshPage(nav: nav, page: currentPage);
      default:
        throw Exception('Impossible Page');
    }
  }
}
