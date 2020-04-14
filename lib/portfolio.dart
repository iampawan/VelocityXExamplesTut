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
        Image.network(
          "https://avatars2.githubusercontent.com/u/12619420?s=460&u=8f41c788adbe5c6c33b3922c55c0c3b50f8fc931&v=4",
          height: context.percentHeight * 40,
          width: context.percentWidth * 50,
          fit: BoxFit.cover,
        ).centered(),
        "Hi, I am Pawan".text.xl4.blue500.semiBold.make(),
        "GoogleDevExpert for Flutter, Firebase, Dart & Web Tech. Public Speaker, Blogger, Entrepreneur & YouTuber. Founder of MTechViral & Let's Flutter with Dart."
            .text
            .gray600
            .xl
            .make(),
      ]).p16(),
    );
  }
}
