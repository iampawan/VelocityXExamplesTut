import 'package:flutter/material.dart';
import 'package:velocityx_examples/flutter-week.dart';
import 'package:velocityx_examples/portfolio.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'VelocityX Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: FlutterWeek(),
    );
  }
}
