import 'package:flutter/material.dart';
import 'package:transition_app/src/pages/page1_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Page1Page(),
    );
  }
}
