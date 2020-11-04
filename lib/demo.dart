import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class DemoPage extends StatelessWidget {
  final image =
      "https://images.unsplash.com/photo-1603343493353-1fdf737e8a3d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=700&q=60";
  @override
  Widget build(BuildContext context) {
    final String title = "VelocityX tutorials";
    return Scaffold(
      appBar: VxAppBar(
        searchBar: true,
        title: title.text.bold.make(),
      ),
      body: VStack([
        13264512.96.numCurrencyWithLocale(locale: "hi_IN").text.xl4.bold.make(),
        image.circlularNetworkImage(radius: 100),
        "assets/modern_home.jpg".circularAssetImage(radius: 120),
        const HeightBox(20),
        context.orientation
            .toString()
            .text
            .ellipsis
            .xl
            .make()
            .box
            .p12
            .color(Vx.randomColor)
            .make(),
        20.heightBox,
        Icon(Icons.star).iconSize(50).iconColor(Vx.blue500),
        DateTime.now()
            .subtract(Duration(minutes: 10))
            .timeAgo(useShortForm: false)
            .text
            .xl5
            .red500
            .make(),
        20.heightBox,
        VxPopupMenu(
          child: Icon(Icons.add),
          arrowColor: Colors.white,
          menuBuilder: () => Container(
            color: Colors.white,
            padding: Vx.m16,
            child: [
              HStack([
                Icon(Icons.chat),
                10.widthBox,
                "Chat".text.make(),
              ]),
              10.heightBox,
              HStack([
                Icon(Icons.chat),
                10.widthBox,
                "Chat".text.make(),
              ])
            ].column(),
          ),
          clickType: VxClickType.singleClick,
        ).p32()
      ]).p16().scrollVertical(),
    );
  }
}
