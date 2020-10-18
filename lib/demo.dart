import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class DemoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final String title = "Devfest Italia";
    return Scaffold(
      appBar: VxAppBar(
        searchBar: true,
        title: title.text.bold.make(),
      ),
    );
  }
}
