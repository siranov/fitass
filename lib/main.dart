import 'package:fit/user.dart';
import 'package:flutter/material.dart';

import 'home.dart';

void main() {
  runApp(const FitAss());
}

class FitAss extends StatefulWidget {
  const FitAss({Key? key}) : super(key: key);

  @override
  State<FitAss> createState() => _FitAssState();
}

class _FitAssState extends State<FitAss> {

  @override
  void initState() {
    print(Uri.base);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/u': (context)=> UserPage(),
        '/': (context) => Home(),
      },
      title: 'FitAss',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      // home: const
      // Home(), 
      // UserPage(),
    );
  }
}

