import 'package:flutter/material.dart';

import 'neumorphic_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'VelocityX Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: NeumorphicPage(),
    );
  }
}
