import 'package:flutter/material.dart';
import 'package:blackgecko/homePageWidgets.dart';
import 'package:blackgecko/insideGeckoWidget.dart';
import 'package:animated_icon/animated_icon.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text(title)),
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(width: 0, height: 50),
            HomeButtons(
                lableNameForHomeScreenButtons: "හූනන් ඇගට වැටීම",
                tagName: "gecko",
                imageName: "gecko.png",
                routeName: GeckoRoute()),
            SizedBox(width: 0, height: 50),
            HomeButtons(
                lableNameForHomeScreenButtons: "කපුටු හැඩලීම හා වසුරුකිරීම",
                tagName: "craw",
                imageName: "craw.png",
                routeName: CrawRoute()),
            SizedBox(width: 0, height: 50),
          ],
        ),
      ),
    );
  }
}
