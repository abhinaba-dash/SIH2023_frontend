import 'package:flutter/material.dart';
// import 'package:sihflutterapp/TextConvert.dart';
import 'package:sihflutterapp/pages/home.dart';
// import 'package:sihflutterapp/pages/ProjectAdd.dart';
import 'package:sihflutterapp/pages/breaktext.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/output': (context) => const OutputPage(),
      },
      debugShowCheckedModeBanner: false,
      title: 'SIH2023',
      theme: ThemeData(
          ),
      home: const Home(),
    );
  }
}
