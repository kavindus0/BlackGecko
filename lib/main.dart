import 'package:blackgecko/homePageWidgets.dart';
import 'package:flutter/material.dart';

void main() {

  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

// This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // title of the application
      title: 'Black Gecko',
      // theme of the widget
      theme: ThemeData.dark(),
      // Inner UI of the application
      home: const MyHomePage(title: 'Black Gecko'),
    );
  }
}


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
          SizedBox(width: 0,height: 50),
          HomeButtons(lableNameForHomeScreenButtons: "හූනන් ඇගට වැටීම",tagName:"gecko",imageName: "gecko.png",routeName: GeckoRoute()),
          SizedBox(width: 0,height: 50),
          HomeButtons(lableNameForHomeScreenButtons: "කපුටු හැඩලීම හා වසුරුකිරීම",tagName:"craw",imageName: "craw.png",routeName: CrawRoute()),
          SizedBox(width: 0,height: 50),
        ],
      ),
      ),
    );
  }
}
