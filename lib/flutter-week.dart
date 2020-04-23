import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class FlutterWeek extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: VxAppBar(
        title: "Flutter Week".text.make(),
        searchBar: true,
      ),
      body: VxFlow(),
      // body: NormalFlow(),
    );
  }
}

class NormalFlow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: MediaQuery.of(context).size.height * 0.6,
        width: MediaQuery.of(context).size.width * 0.8,
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          clipBehavior: Clip.antiAlias,
          child: Column(
            children: [
              Image.asset(
                "assets/modern_home.jpg",
                fit: BoxFit.cover,
                height: 400,
                width: double.infinity,
              ),
              Expanded(
                  child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                padding: const EdgeInsets.all(8),
                                child: Text(
                                  "New",
                                  style: TextStyle(color: Colors.white),
                                ),
                                decoration: BoxDecoration(
                                  color: Colors.teal,
                                  borderRadius: BorderRadius.circular(8),
                                ),
                              ),
                              SizedBox(
                                height: 2,
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    "3 Beds",
                                    style: TextStyle(fontSize: 12, color: Colors.grey.shade600),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Container(
                                    height: 5,
                                    width: 5,
                                    decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.grey),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text("2 Baths", style: TextStyle(fontSize: 12, color: Colors.grey.shade600)),
                                ],
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "Modern Home in City Center",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              RichText(
                                text: TextSpan(
                                    text: "\$1900",
                                    style: TextStyle(
                                      color: Colors.red,
                                      fontSize: 12,
                                    ),
                                    children: [
                                      TextSpan(
                                        text: " / wk",
                                        style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 12,
                                        ),
                                      ),
                                    ]),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "34 reviews",
                                style: Theme.of(context).textTheme.caption,
                              )
                            ],
                          ),
                          Container(
                            height: 80,
                            width: 80,
                            child: Center(
                              child: Text(
                                "A+",
                                style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),
                              ),
                            ),
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                gradient: LinearGradient(colors: [
                                  Colors.lightGreen,
                                  Colors.green,
                                ])),
                          )
                        ],
                      )))
            ],
          ),
        ),
      ),
    );
  }
}

class VxFlow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return VxBox(
      child: VStack([
        Image.asset("assets/modern_home.jpg", fit: BoxFit.cover, height: 400, width: double.infinity),
        Expanded(
          child: [
            VStack([
              "New".text.white.make().box.p8.roundedLg.red500.make(),
              2.heightBox,
              [
                "3 Beds".text.gray700.sm.make(),
                VxBox().square(6).gray700.roundedFull.make().px4(),
                "2 Baths".text.gray700.sm.make(),
              ].hStack(crossAlignment: CrossAxisAlignment.center),
              5.heightBox,
              "Modern Home in City Center".text.bold.make(),
              5.heightBox,
              "\$1900".richText.red500.sm.withTextSpanChildren([" / wk".textSpan.gray500.make()]).make(),
              5.heightBox,
              "34 reviews".text.textStyle(context.textTheme.caption).make()
            ]),
            "A+".text.xl2.white.bold.make().box.alignCenter.roundedFull.square(80).linearGradient([Vx.green300, Vx.green600]).make()
          ].hStack(alignment: MainAxisAlignment.spaceBetween, axisSize: MainAxisSize.max, crossAlignment: CrossAxisAlignment.center).p16(),
        )
      ]),
    ).size(context.percentWidth * 80, context.percentHeight * 60).make().card.rounded.makeCentered();
  }
}
