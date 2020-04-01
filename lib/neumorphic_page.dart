import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class NeumorphicPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: VelocityX.blue800,
      child: VStack(
        [
          "Neumorphism".text.white.xl.bold.make().box.width(300).height(200).p32.alignCenter.rounded.neumorphic(color: VelocityX.blue800, elevation: 8, curve: VelocityCurve.flat).make(),
          40.heightBox,
          "Flutter".text.white.xl.bold.make().box.width(200).height(200).p32.alignCenter.roundedFull.neumorphic(color: VelocityX.blue800, elevation: 8, curve: VelocityCurve.convex).make(),
          40.heightBox,
          "VelocityX".text.white.xl.bold.make().box.p32.alignCenter.roundedLg.neumorphic(color: VelocityX.blue800, elevation: 8, curve: VelocityCurve.emboss).make(),
        ],
        alignment: MainAxisAlignment.center,
        crossAlignment: CrossAxisAlignment.center,
      ).p16(),
    );
  }
}
