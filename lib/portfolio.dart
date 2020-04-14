import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class PortfolioPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: VxAppBar(
        searchBar: true,
        title: "Portfolio".text.make(),
      ),
      body: VStack([
        VxDevice(
          mobile: Image.network(
            "https://bitly.com/pawan",
            height: context.percentHeight * 40,
            width: context.percentWidth * 50,
            fit: BoxFit.cover,
          ).centered(),
          web: "Hi, I am Pawan".text.xl4.blue500.semiBold.make(),
        )
      ]).p16(),
    );
  }
}
