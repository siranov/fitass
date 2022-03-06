import 'package:flutter/material.dart';

import 'home.dart';

void main() {
  runApp(const FitAss());
}

class FitAss extends StatelessWidget {
  const FitAss({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FitAss',
      theme: ThemeData(
      ),
      home: const Home(),
    );
  }
}

