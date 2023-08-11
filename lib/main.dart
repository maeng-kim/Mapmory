import 'package:flutter/material.dart';
import '_1login.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mapmory',
      theme: ThemeData(scaffoldBackgroundColor: Colors.white),
      home: const MyLogin(title: 'Mapmory Start'),
    );
  }
}
