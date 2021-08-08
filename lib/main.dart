import 'package:flutter/material.dart';
import 'package:multiplechoice/pages/home.dart';

void main() => runApp(myApp());

class myApp extends StatelessWidget {
  const myApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => myHome(),
      }
    );
  }
}
