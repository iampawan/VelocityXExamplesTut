import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class FlutterWeekDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Vx.log("Logging");
    return Scaffold(
      backgroundColor: Vx.gray200,
      body: VStack([
        "Hi, Flutter Week"
            .text
            .hidePartial
            .white
            .semiBold
            .make()
            .box
            .height(context.percentHeight * 30)
            .purple500
            .rounded
            .shadowMd
            .alignCenter
            .p16
            .make(),
        VxBox().square(100).red400.make().wh40(context),
        VxDiscList(["Item 1", "Item 2", "Item 3"]),
        VxDecimalList(["Item 1", "Item 2", "Item 3"]),
        Text(
          "Existing Widget",
          style: TextStyle(color: Colors.red, fontSize: 25),
        ).text.green500.widest.make()
      ]).p16().scrollVertical(),
    );
  }
}
